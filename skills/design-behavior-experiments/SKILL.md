---
name: design-behavior-experiments
description: Design a rigorous measurement or experiment plan to determine whether a product, communication, choice architecture, habit mechanic, or behavioral intervention causes a meaningful change. Use for A/B tests, randomized rollouts, field experiments, behavioral metrics, causal questions, null results, guardrails, or evaluation when randomization is unavailable. Distinguishes user outcomes, target behaviors, mechanisms, business metrics, and harm metrics.
---

# Design Behavior Experiments

Turn a behavioral hypothesis into a decision-ready test. Assume an intervention may have no effect or may backfire.

Adopt three operating assumptions: the organization needs a shared evaluation criterion, trustworthy experimentation requires infrastructure and validation, and expert intuition is poor at predicting which ideas will work.

## State the causal chain

Write:

> For [eligible population] in [context], changing [intervention] from [control] to [treatment] will change [target behavior] through [mechanism], improving [user outcome] without worsening [guardrails].

Separate facts from assumptions. If the target behavior or user outcome is vague, resolve that before selecting a design.

## Build the metric hierarchy

Read [metric-plan.md](references/metric-plan.md). Define:

- primary user outcome;
- primary target-behavior metric;
- mechanism metric showing whether the proposed barrier changed;
- guardrail metrics for harm, errors, equity, and unwanted substitution;
- business metric, kept distinct from user welfare;
- diagnostic metrics used only to explain results.

For a program of experiments, define an overall evaluation criterion (OEC) or a small predeclared decision function that is measurable during the test, sensitive to change, and predictive of the long-term user and organizational outcome. Revenue or engagement alone is rarely sufficient.

Specify numerator, denominator, eligibility, unit, window, exclusions, data source, direction, and practically meaningful effect. Choose one primary decision metric unless a formal multiple-testing plan exists.

## Choose the strongest feasible design

Read [experiment-playbook.md](references/experiment-playbook.md).

Prefer:

1. Individually randomized controlled test
2. Cluster randomized test when interference or delivery requires it
3. Randomized staggered rollout when everyone must eventually receive treatment
4. Strong quasi-experiment with a credible comparison group
5. Interrupted time series or pre/post analysis only with explicit threats and modest claims

Do not use a multiarmed bandit when the primary goal is unbiased learning about long-term outcomes unless its adaptive assignment is properly accounted for.

## Precommit the design

Before exposure, define:

- unit of randomization and unit of analysis;
- eligibility and assignment;
- control and treatment differences;
- exposure, contamination, and interference handling;
- minimum detectable effect or smallest effect of interest;
- sample-size or duration rationale;
- analysis model and uncertainty interval;
- missing-data and attrition handling;
- stopping rule and decision thresholds;
- segment analyses justified in advance;
- safety monitoring and early-stop conditions.

Avoid peeking and stopping when significance first appears. Check sample-ratio mismatch, instrumentation, novelty, seasonality, and concurrent changes before interpreting effects.

Apply Twyman's law: investigate unusually large or exciting results for logging, assignment, duplication, loss, computation, and analysis errors before constructing a success story. Treat a statistically significant sample-ratio mismatch as a validity failure until its cause is resolved.

## Design the intervention comparison

Change the smallest set of elements needed to test the mechanism. If a bundle is necessary, state that the test estimates the bundle, not individual components.

Include an implementation check: confirm eligible people received the intended condition and that the mechanism actually moved.

For experimentation systems, use A/A tests to validate false-positive control, assignment balance, metric variance, carryover, and agreement with systems of record.

## Interpret without spin

Report effect size, uncertainty, practical significance, guardrails, and limitations. Distinguish:

- no evidence of effect;
- evidence the effect is too small to matter;
- inconclusive test;
- beneficial behavioral effect with harmful downstream consequences;
- heterogeneous effects that change the product decision.

Do not turn a null result into proof of no effect or a statistically significant trivial effect into success. Update the behavioral diagnosis using quantitative and qualitative evidence.

Preserve institutional memory: hypothesis, owner, variants, screenshots or specifications, population, dates, quality checks, results, decision, and rationale. Do not retain only wins.

## Deliver the experiment brief

Use the user's language and include:

1. Decision to be made
2. Causal hypothesis and mechanism
3. Population and behavioral context
4. Metric table
5. Design, assignment, and variants
6. Sample or duration rationale
7. Analysis and decision rule
8. Guardrails and stop conditions
9. Instrumentation and quality checks
10. Interpretation matrix for positive, null, mixed, and harmful results
11. Ramp, durability, and scale handoff
12. Institutional-memory record
13. Limitations and fallback design
