#!/usr/bin/env bash
# inject-metadata.sh — Inject metadata bars into pdf2htmlEX output
# Usage: bash scripts/inject-metadata.sh
set -euo pipefail

DOCS_DIR="$(cd "$(dirname "$0")/../docs" && pwd)"

# Metadata for each paper (filename without .html -> metadata fields)
declare -A TITLES AUTHORS JOURNALS DOIS STATUSES RELEVANCES

TITLES["The allergy epidemics_ 1870-2010"]="The Allergy Epidemics: 1870-2010"
AUTHORS["The allergy epidemics_ 1870-2010"]="Thomas A.E. Platts-Mills"
JOURNALS["The allergy epidemics_ 1870-2010"]="JACI 136(1):3-13, 2015"
DOIS["The allergy epidemics_ 1870-2010"]="10.1016/j.jaci.2015.03.048"
STATUSES["The allergy epidemics_ 1870-2010"]="read-partial (via PMC extraction)"
RELEVANCES["The allergy epidemics_ 1870-2010"]="HIGH — Authoritative review of three sequential allergy epidemics. Attributes them primarily to lifestyle changes."

TITLES["Prevalence and characteristics of peanut allergy in US adults"]="Prevalence and Characteristics of Peanut Allergy in US Adults"
AUTHORS["Prevalence and characteristics of peanut allergy in US adults"]="Warren, Lei, Sicherer, Schleimer, Gupta"
JOURNALS["Prevalence and characteristics of peanut allergy in US adults"]="JACI 147(6):2263-2270, 2021"
DOIS["Prevalence and characteristics of peanut allergy in US adults"]="10.1016/j.jaci.2020.11.046"
STATUSES["Prevalence and characteristics of peanut allergy in US adults"]="scouted-only"
RELEVANCES["Prevalence and characteristics of peanut allergy in US adults"]="Establishes peanut allergy burden (~1.8% US adults). Does not address vaccine causation."

CSS_BLOCK='
<style type="text/css">
#metadata-bar {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  z-index: 10000;
  background: #1a1a2e;
  color: #e0e0e0;
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
  padding: 10px 20px;
  border-bottom: 3px solid #e94560;
  font-size: 13px;
  line-height: 1.5;
  box-shadow: 0 2px 8px rgba(0,0,0,0.3);
}
#metadata-bar .meta-title {
  font-size: 16px;
  font-weight: 700;
  color: #ffffff;
  margin-bottom: 2px;
}
#metadata-bar .meta-row {
  display: flex;
  flex-wrap: wrap;
  gap: 6px 20px;
}
#metadata-bar .meta-item {
  white-space: nowrap;
}
#metadata-bar .meta-label {
  color: #8888aa;
  font-size: 11px;
  text-transform: uppercase;
  letter-spacing: 0.5px;
}
#metadata-bar .meta-value {
  color: #e0e0e0;
}
#metadata-bar a {
  color: #e94560;
  text-decoration: none;
}
#metadata-bar a:hover {
  text-decoration: underline;
}
#metadata-bar .meta-relevance {
  color: #0f3460;
  background: #e94560;
  padding: 1px 8px;
  border-radius: 3px;
  font-weight: 600;
  font-size: 11px;
}
#metadata-bar .meta-status {
  color: #16213e;
  background: #53d8fb;
  padding: 1px 8px;
  border-radius: 3px;
  font-weight: 600;
  font-size: 11px;
}
#metadata-bar .meta-home {
  float: right;
  color: #53d8fb;
  font-size: 12px;
  margin-top: 2px;
}
</style>
'

for html_file in "$DOCS_DIR"/*.html; do
  [ -f "$html_file" ] || continue
  basename="$(basename "$html_file" .html)"

  # Skip index.html
  [ "$basename" = "index" ] && continue

  # Look up metadata
  title="${TITLES[$basename]:-$basename}"
  authors="${AUTHORS[$basename]:-Unknown}"
  journal="${JOURNALS[$basename]:-Unknown}"
  doi="${DOIS[$basename]:-}"
  status="${STATUSES[$basename]:-unknown}"
  relevance="${RELEVANCES[$basename]:-Not assessed}"

  doi_link=""
  if [ -n "$doi" ]; then
    doi_link="<a href=\"https://doi.org/$doi\" target=\"_blank\">$doi</a>"
  fi

  bar_html="<div id=\"metadata-bar\"><a class=\"meta-home\" href=\"index.html\">&larr; Back to Index</a><div class=\"meta-title\">$title</div><div class=\"meta-row\"><span class=\"meta-item\"><span class=\"meta-label\">Authors:</span> <span class=\"meta-value\">$authors</span></span><span class=\"meta-item\"><span class=\"meta-label\">Journal:</span> <span class=\"meta-value\">$journal</span></span>"

  if [ -n "$doi_link" ]; then
    bar_html="$bar_html<span class=\"meta-item\"><span class=\"meta-label\">DOI:</span> <span class=\"meta-value\">$doi_link</span></span>"
  fi

  bar_html="$bar_html<span class=\"meta-item\"><span class=\"meta-status\">$status</span></span><span class=\"meta-item\"><span class=\"meta-relevance\">$relevance</span></span></div></div>"

  # Check if already injected
  if grep -q 'id="metadata-bar"' "$html_file"; then
    echo "Skipping $basename — already injected"
    continue
  fi

  # Inject CSS before </head>
  # Use a temp file to avoid issues with large files + sed
  tmp_file="$(mktemp)"

  # Write CSS block to a temp file for insertion
  css_tmp="$(mktemp)"
  echo "$CSS_BLOCK" > "$css_tmp"

  bar_tmp="$(mktemp)"
  echo "$bar_html" > "$bar_tmp"

  python -c "
import sys
css = open('$css_tmp').read()
bar = open('$bar_tmp').read()
with open('$html_file', 'r') as f:
    content = f.read()

# Inject CSS before </head>
content = content.replace('</head>', css + '</head>', 1)

# Inject bar after <body>
content = content.replace('<body>', '<body>' + bar, 1)

# Add padding-top to #page-container so content isn't hidden
# The bar is roughly 80px tall
content = content.replace(
    '#page-container{position:absolute;top:0;',
    '#page-container{position:absolute;top:80px;'
)
# Also fix sidebar
content = content.replace(
    '#sidebar{position:absolute;top:0;',
    '#sidebar{position:absolute;top:80px;'
)

with open('$html_file', 'w') as f:
    f.write(content)
"

  rm -f "$tmp_file" "$css_tmp" "$bar_tmp"
  echo "Injected metadata into $basename.html"
done

echo "Done."
