---
name: define-product-metrics-experiments
description: Define decision-oriented metrics and plan, audit, or interpret a narrow trustworthy online controlled experiment. Use to choose an OEC and guardrails for a specific test, assess experiment readiness, write an A/B design, diagnose sample-ratio or instrumentation problems, or interpret supplied results without overstating causality. Use product-metrics for a complete product measurement system spanning value exchange, North Star, activation, retention, funnels, instrumentation, and post-launch decisions; use product-experiment when the main question is which product assumption or learning method to choose.
---

# Define Product Metrics Experiments

Connect product decisions to measurable user and business outcomes, then use controlled experiments only when the question, system, sample, and ethics support them.

## Core rules

- Start with a decision and a causal hypothesis, not with an available dashboard metric.
- Distinguish goals, signals, metrics, drivers, guardrails, diagnostics, and the overall evaluation criterion.
- Prefer metrics that are sensitive, interpretable, hard to game, and connected to long-term value.
- Agree on decision rules before seeing treatment results.
- Randomization supports causal inference only when assignment, exposure, measurement, and analysis remain trustworthy.
- Treat surprising results as a reason to investigate instrumentation and validity before storytelling.
- Report uncertainty, practical magnitude, tradeoffs, and limitations—not only p-values or direction.
- Never optimize a metric by harming people, hiding costs, or violating consent and privacy.

## Workflow

### 1. Frame the decision and theory of change

State the product decision, target population, user problem, proposed mechanism, expected benefits, possible harms, time horizon, and what action follows each plausible result. Read [goal-metric-framework.md](references/goal-metric-framework.md).

### 2. Build the metric set

Define:

- one decision-aligned primary or overall evaluation criterion when appropriate;
- guardrails for user, system, financial, and ethical harm;
- diagnostic metrics that explain the mechanism;
- data quality and invariant checks;
- segments chosen for substantive reasons, not result fishing.

Document unit, population, event definition, attribution window, direction, minimum meaningful change, latency, and known gameability.

### 3. Check experiment readiness

Use [experiment-readiness-design.md](references/experiment-readiness-design.md). Confirm randomizable units, sufficient traffic, stable assignment, reliable exposure logging, measurable outcomes, interference risk, power/precision expectations, duration, novelty and seasonality concerns, and operational ability to ramp or stop safely.

If readiness fails, recommend instrumentation, qualitative research, quasi-experimental analysis, or a smaller feasibility test instead of pretending an A/B test is valid.

### 4. Write the pre-analysis and ramp plan

Specify eligibility, unit of randomization, allocation, triggering, variants, exclusions, sample-size rationale, duration, primary analysis, multiple-testing policy, guardrail thresholds, stopping/ramping rules, and ownership. Freeze these before reading outcomes.

### 5. Run trust checks before effects

Read [trust-statistics.md](references/trust-statistics.md). Check assignment, sample-ratio mismatch, exposure, logging completeness, pre-period balance, duplicate units, attrition, contamination, interference, and invariant metrics. Diagnose failures before interpreting treatment deltas.

### 6. Interpret for a decision

Report effect estimates with confidence intervals, practical significance, guardrails, segments, validity threats, and what the experiment does not establish. Avoid causal claims for non-randomized evidence. Use [ethics-interpretation.md](references/ethics-interpretation.md).

### 7. Preserve institutional learning

Record hypothesis, design, implementation, analysis code/version, results, decision, follow-up, and later outcome. Use [institutional-learning.md](references/institutional-learning.md) to support meta-analysis and prevent repeated tests without learning.

## Boundaries with related skills

- Use `product-metrics` when the request concerns the complete product measurement system, including value exchange, North Star/outcome model, activation, retention, funnels, instrumentation, and post-launch decisions. When called by `product-metrics`, answer only the bounded controlled-experiment question and return the result to that parent.
- Use `product-experiment` when the main question is which product assumption to test or which learning method is smallest and credible; this skill owns the narrow metric/statistical contract once a controlled experiment is selected.
- Use `design-behavior-experiments` when the causal hypothesis is specifically about a behavioral mechanism or intervention; avoid producing a second competing experiment plan.
- Use `run-lean-usability-tests` for why and how people struggle; experiments estimate comparative effects at scale.
- Use `design-trustworthy-consent-experiences` for data and consent choices, pricing disclosure, subscriptions, cancellation, and other deceptive-choice risks.
- This skill can prepare an analysis plan and reason over supplied results; it must not invent measurements or statistical certainty.

## Default output

Provide the decision and causal model, metric dictionary, readiness verdict, experiment and ramp plan, trust-check sequence, interpretation template, ethical constraints, and archive fields. If only results are supplied, lead with validity checks and uncertainty.
