---
name: audit-decision-quality
description: Audit and improve repeated human, AI-assisted, or expert judgment processes for unwanted variability, bias, inconsistency, premature intuition, group influence, poor scales, and unreliable aggregation. Use for hiring, moderation, underwriting, forecasting, triage, scoring, prioritization, performance reviews, quality review, risk assessment, content review, product decisions, AI evaluations, or any workflow where comparable cases should receive comparable judgments.
---

# Audit Decision Quality

Improve the process that produces judgments, not just the intelligence or intentions of individual judges. Distinguish systematic bias from noise: judgments can be wrong on average, inconsistent across judges, or both.

## Define the judgment system

Identify:

- decision, prediction, rating, or recommendation being made;
- cases, judges, decision owner, and affected people;
- required inputs and information currently shown;
- scale, categories, thresholds, and allowed discretion;
- stakes, frequency, reversibility, feedback delay, and known truth;
- acceptable variation and which differences should legitimately matter;
- current quality, fairness, consistency, override, and appeal measures.

Do not call all disagreement noise. Preserve variation that reflects relevant case differences, plural values, or explicitly delegated discretion.

## Diagnose bias and noise separately

Read [noise-audit.md](references/noise-audit.md). When the decision recurs, give multiple judges the same representative cases independently. Measure the distribution and range of judgments before discussion.

Look for:

- **level noise:** some judges are consistently harsher or more optimistic;
- **pattern noise:** judges weigh case attributes differently;
- **occasion noise:** the same judge changes with timing, order, mood, or context;
- **bias:** average judgment systematically misses an appropriate benchmark;
- **skill gaps:** specific judges or case types show worse accuracy when outcomes are knowable.

When a formal audit is impossible, inspect historical matched cases, overrides, appeals, decision reversals, inter-rater agreement, and decision-time variation. Label the result as a limited diagnosis.

## Apply decision hygiene

Read [decision-hygiene.md](references/decision-hygiene.md). Prefer process safeguards that do not depend on people recognizing their own bias in the moment:

1. Define a shared scale with behavioral anchors and examples.
2. Decompose the judgment into independent mediating assessments.
3. Sequence information so irrelevant or outcome-revealing facts do not create premature coherence.
4. Collect independent assessments before group discussion or authority signals.
5. Aggregate independent estimates when the task supports aggregation.
6. Use guidelines, rules, or simple models when they outperform unaided judgment.
7. Delay the holistic final judgment until the component assessments are recorded.
8. Record exceptions, overrides, confidence, and reasons for later learning.

Use a designated decision observer for consequential group decisions when familiar failure signs such as anchoring, conformity, base-rate neglect, or one-sided evidence are visible.

## Choose the right degree of structure

Compare unaided judgment, structured judgment, guidelines, rules, and algorithms. Consider accuracy, consistency, dignity, contestability, transparency, adaptation, cost, and the consequences of a systematic error.

Do not eliminate human review merely to achieve consistency. A consistently biased rule can be worse than a noisy judgment, and individualized treatment may be an explicit value rather than an error.

## Validate the redesign

Re-run common cases and new holdout cases. Measure accuracy where truth emerges, inter-rater reliability, dispersion, subgroup error, reversals, appeals, speed, burden, and exception quality. Monitor automation bias when AI recommendations or scores are shown.

## Deliver the audit

Use the user's language and include:

1. Judgment system and legitimate sources of variation
2. Evidence of bias, noise, or skill gaps
3. Noise-audit design or limitations
4. Root causes in information, scale, sequence, and aggregation
5. Recommended decision-hygiene workflow
6. Rule, model, and human-discretion trade-offs
7. Fairness, dignity, appeal, and override safeguards
8. Validation and ongoing monitoring plan

