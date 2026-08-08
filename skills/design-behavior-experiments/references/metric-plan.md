# Behavioral Metric Plan

## Metric hierarchy

### Primary user outcome

The real-world result the affected person values: reduced fees, improved learning, completed care, safer action, or another substantive outcome.

### Target behavior

The observable action expected to cause or contribute to the outcome. Define it independently from interface events when possible.

### Mechanism

The diagnosed barrier that should move: comprehension, perceived effort, completion time, cue exposure, error rate, confidence, or another proximal mechanism.

### Guardrails

Potential harm or substitution: regret, errors, cancellations, complaints, support burden, overspending, sleep disruption, privacy refusal, unequal effects, or movement of harm elsewhere.

### Business metric

Revenue, retention, cost, or operational value. Keep this separate from the user outcome and state how conflicts will be resolved.

### Overall evaluation criterion

For a recurring experimentation program, define an OEC or explicit decision function that combines the key evidence used to ship. It should be measurable over the experiment window, sensitive enough to detect change, and defensibly predictive of longer-term value. Add organizational guardrails rather than allowing one short-term metric to dominate.

### Diagnostic metrics

Secondary events used to explain the result. Do not promote a favorable diagnostic metric to primary after observing data.

## Definition template

For every decision metric specify:

```markdown
Name:
Purpose:
Unit of analysis:
Eligible population:
Numerator:
Denominator:
Time zero:
Measurement window:
Exclusions:
Data source:
Expected direction:
Smallest practically meaningful effect:
Quality checks:
```

## Data bridge

When the intervention occurs in a product but the outcome occurs outside it, define how product behavior connects to the real-world outcome. Validate the bridge instead of assuming that an in-app proxy represents success.

## Metric traps

- clicks without completed or beneficial action;
- retention without user outcome;
- average session time when shorter use may be better;
- intent or satisfaction as a substitute for behavior;
- a denominator that changes between variants;
- measuring only actors who completed exposure;
- short windows for delayed outcomes;
- ignoring harmful substitution or vulnerable subgroups.
- optimizing a short-term OEC whose relationship to long-term value has never been validated.
