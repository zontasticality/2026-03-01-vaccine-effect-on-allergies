# Summary — Do Vaccines Cause Allergies? Effect Size and Moral Calculus

**Epistemic status**: Based on 14 sources ranging from large population cohorts to mechanistic reviews to a predatory-journal hypothesis paper. The strongest evidence comes from two Australian studies exploiting the natural experiment of the wP→aP pertussis vaccine transition. Many open questions remain (see `questions.md`). I have NOT read every source in full. This synthesis reflects my best understanding as of 2026-03-01 with the evidence available.

---

## Part 1: What Does the Evidence Actually Show?

### The claim is not monolithic

"Vaccines cause allergies" is not one claim — it's a spectrum of increasingly strong assertions, each with different evidence quality:

| Claim | Evidence Quality | Verdict |
|-------|-----------------|---------|
| Vaccine excipients can trigger anaphylaxis in already-sensitized people | Strong (case series, clinical data) | **TRUE** — 1-10 per million doses |
| Acellular pertussis (aP) is associated with higher food allergy risk than whole-cell (wP) | Strong (large cohort, case-control) | **Probably true** — OR 0.77 for wP; HR 0.47 for food anaphylaxis |
| Aluminum adjuvants promote Th2 skewing that could increase allergy in susceptible individuals | Moderate (mouse models, mechanistic reasoning) | **Plausible but unconfirmed in humans** |
| DTaP timing affects atopic dermatitis risk | Moderate-strong (883K Danish cohort) | **Probably true** — small effect (aRR 0.88-0.94) |
| DTaP timing affects food allergy risk | Weak (one cohort) | **Not supported** — p=0.49 in HealthNuts |
| Trace food proteins in vaccines are a primary driver of the food allergy epidemic | Very weak (predatory journal, no epi data) | **Unsubstantiated** |
| Vaccines in general cause allergies (vaccinated vs unvaccinated) | Mixed, mostly negative | **Not supported** — largest studies (KiGGS, West Midlands) find no association after adjustment |

### The strongest finding: vaccine *formulation* matters

The single most important finding in this investigation is not about vaccines vs. no vaccines. It's about **which pertussis vaccine formulation** is used:

- Estcourt et al. (2020): wP recipients had 23% lower odds of IgE-mediated food allergy (OR 0.77, 95% CI 0.62-0.95)
- Estcourt et al. (2024): wP recipients had **53% lower hazard** of food anaphylaxis hospitalization (HR 0.47, 95% CI 0.26-0.83)
- The effect was **specific to food anaphylaxis** — venom anaphylaxis showed no difference (HR 0.92), arguing against general confounding

[MY SYNTHESIS] The biological plausibility is there: whole-cell pertussis contains bacterial LPS (endotoxin), which is a strong Th1/tolerogenic signal. Acellular pertussis lacks this. The hygiene hypothesis predicts exactly this pattern — removing microbial signals shifts the immune system toward allergy-promoting Th2 responses.

### Effect size in absolute terms

The absolute numbers are critical for the moral calculus:

- **Food anaphylaxis hospitalization rate with aP**: 5.1 per 100,000 child-years
- **Food anaphylaxis hospitalization rate with wP**: 3.5 per 100,000 child-years
- **Attributable increase from aP over wP**: ~1.6 per 100,000 child-years

This means that for every 100,000 children vaccinated with acellular pertussis instead of whole-cell, approximately 1.6 additional children per year are hospitalized for food anaphylaxis. Most survive.

For broader food allergy (not just anaphylaxis), the Estcourt 2020 OR of 0.77 applied to an ~8% IgE-mediated food allergy prevalence would imply roughly a 2 percentage point attributable increase (from ~6.2% to ~8%) — affecting about 2,000 additional children per 100,000.

[MY SYNTHESIS] These are not trivial numbers in absolute terms — applied to ~3.6 million US births/year, this could mean ~72,000 additional food allergy cases attributable to the choice of acellular over whole-cell pertussis. But this calculation involves extrapolating an Australian observational study to a different population and assuming the entire difference is causal. The true number could be substantially lower.

---

## Part 2: The Moral Calculus

### Steelmanning the case against certain vaccines

The strongest version of the argument is NOT "don't vaccinate." It's:

**"The switch from whole-cell to acellular pertussis vaccine, driven by concerns about mild side effects (fever, irritability), may have inadvertently caused a significant increase in food allergy. The original vaccine was better for allergy prevention. We should consider switching back or developing improved formulations."**

This argument is:
- Supported by the best available epidemiological evidence
- Consistent with established immunological mechanisms
- Not anti-vaccine — it's pro-better-vaccine
- Actionable: several countries still produce wP; mixed schedules are being trialed

### When could the individual calculus favor skipping/modifying a vaccine?

I attempted to steelman this as requested. Here are the scenarios where the math *could* work, ordered from most to least defensible:

#### Scenario A: Requesting whole-cell pertussis instead of acellular (MOST DEFENSIBLE)
- **Not skipping vaccination**, just requesting a different formulation
- Supported by Estcourt 2020/2024 data
- Trade-off: wP has higher rates of mild reactions (fever, irritability, local swelling) but these are transient
- **Problem**: wP is not currently available in the US, Australia, or most Western countries. It IS available in many developing countries.
- **Verdict**: If wP were available, requesting it would be rational for a family with strong atopic history. This is not anti-vaccine; it's vaccine-formulation preference.

#### Scenario B: Delaying DTaP by 1-2 months in a child with strong family history of atopic dermatitis
- Supported by Gehrt 2021 (aRR 0.88-0.94 for delayed vaccination)
- Effect is small but real, and atopic dermatitis is a precursor to the "atopic march" (eczema → food allergy → asthma)
- **Trade-off**: Each month of delay is a month without pertussis protection. Pertussis is most dangerous in the first 6 months of life. ~10-15 US infant deaths per year from pertussis, almost all in infants too young to be fully vaccinated.
- **Verdict**: Marginally defensible in low-pertussis-prevalence settings for families with very strong atopic history AND good cocooning (all household contacts vaccinated). But the eczema risk reduction is small (~6-12%) and the pertussis risk, while also small, is lethal when it occurs.

#### Scenario C: Skipping a specific vaccine entirely because of allergy concerns
- **NOT supported by the evidence.** The large population studies (KiGGS, West Midlands) show no overall vaccine-allergy association after adjustment. The allergy signal is in the *formulation*, not in vaccination vs. non-vaccination.
- The Arumugham hypothesis (food proteins in vaccines driving the epidemic) is published only in predatory journals and lacks epidemiological support.
- **Verdict**: Not defensible on current evidence.

#### Scenario D: Skipping ALL childhood vaccines because of allergy concerns
- **Strongly contraindicated by the evidence.**
- Pre-vaccine era: ~4,034 pertussis deaths/year (US), ~1,822 diphtheria deaths/year, ~440 measles deaths/year (plus ~48,000 hospitalizations)
- The entire attributable food allergy increase from aP vs wP: ~1.6 additional food anaphylaxis hospitalizations per 100,000 child-years, mostly survivable
- Even in the most extreme interpretation, vaccine-attributable food allergy deaths would be orders of magnitude below vaccine-preventable disease deaths
- **Verdict**: The calculus overwhelmingly favors vaccination, even accepting all the allergy-promoting claims at face value.

### The societal-level calculus

At a societal level, the question is different. It's not "should individuals skip vaccines?" but "should we reformulate vaccines to reduce allergy risk?"

**The answer is almost certainly yes**, and this is where the evidence is strongest:

1. **Switch back to or incorporate whole-cell pertussis**: The Estcourt data suggest this could prevent ~53% of food anaphylaxis hospitalizations attributable to the formulation change. A mixed wP/aP schedule (wP priming + aP boosters) is being trialed in Australia.

2. **Develop better adjuvants**: The Hurley & Tadrous mouse data show that alum/CpG combinations eliminate the allergy-promoting effect of alum alone. This is an engineering problem, not a reason to abandon vaccination.

3. **Regulate food protein content in vaccines**: Arumugham's point about the absence of allergen content specifications in US vaccines appears correct per Mahler & Junker (2022). Even if trace food proteins are not driving the epidemic, minimizing unnecessary allergen exposure in injectable products is good manufacturing practice.

4. **Study vaccine timing more carefully**: The Danish data on DTaP timing and atopic dermatitis (Gehrt 2021) suggest that schedule optimization could yield modest benefits. This deserves RCT investigation.

---

## Part 3: What Platts-Mills Gets Right That Others Miss

Platts-Mills' 2015 review provides the essential context: the allergy epidemic has **multiple causes operating on different timescales**. Vaccines are at most one factor among many:

- The hygiene revolution (1870s-1920s) → hay fever
- The move indoors / TV watching (1960s) → asthma
- Skin barrier dysfunction + avoidance guidelines + formula feeding + C-sections + antibiotics + reduced microbial diversity + (possibly) vaccine formulation changes → food allergy

The food allergy epidemic correlates with the wP→aP switch (1990s) but also correlates with:
- The rise of peanut avoidance guidelines (later shown to be harmful by the LEAP trial)
- Increased C-section rates
- Increased antibiotic use in infancy
- Widespread use of antibacterial soaps and sanitizers
- Declining household size and reduced sibling exposure
- Filaggrin gene mutations becoming phenotypically relevant in cleaner environments

[MY SYNTHESIS] Attributing the food allergy epidemic primarily to vaccines requires ignoring all of these other concurrent changes. The wP→aP switch is likely *one* contributing factor, possibly a significant one, but it is almost certainly not the whole story.

---

## Part 4: Bottom Line

### What is well-supported:
- The acellular pertussis vaccine is probably worse for food allergy than the whole-cell formulation it replaced
- The effect is real and possibly large in relative terms (OR 0.77, HR 0.47 for anaphylaxis)
- Vaccine adjuvant formulation affects immune skewing in ways that are relevant to allergy
- There is no evidence that vaccines *in general* (as opposed to specific formulations) cause allergies

### What is not supported:
- Skipping any vaccine to reduce allergy risk
- The claim that trace food proteins in vaccines are a primary driver of the food allergy epidemic
- The claim that vaccinated children have more allergies than unvaccinated children (after controlling for ascertainment bias)

### What should change (policy implications):
- Investigate wP/aP mixed schedules or return to wP for primary series
- Develop Th1-promoting or balanced adjuvant alternatives to alum
- Establish regulatory limits for food protein residues in vaccines
- Conduct the RCT that Platts-Mills called for in 2015

### When is it individually rational to modify vaccine decisions based on allergy concerns?
- **Requesting wP over aP if available**: Rational, especially with family atopy history
- **Delaying DTaP by weeks in a well-cocooned infant with strong atopic family history**: Marginally defensible, small benefit, small but lethal risk
- **Skipping specific vaccines**: Not supported by evidence
- **Skipping all vaccines**: Overwhelmingly contraindicated; the math is not close

---

*This summary was written on 2026-03-01 based on 14 sources. See `sources.md` for the full source list, `notes.md` for detailed evidence with citations, and `questions.md` for unresolved issues.*
