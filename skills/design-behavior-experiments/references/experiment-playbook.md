# Behavioral Experiment Playbook

## Design hierarchy

### Individual randomization

Use when treatment can be independently delivered and interference is minimal. Analyze by assigned condition, not only received exposure.

### Cluster randomization

Use when teams, households, schools, clinics, locations, or social spillovers make individual assignment inappropriate. Account for clustering in power and analysis.

### Randomized staggered rollout

Use when everyone must eventually receive treatment. Randomize timing and preserve a valid comparison during each stage.

### Quasi-experiment

Use a credible comparison group, discontinuity, or natural assignment rule. State the identifying assumption and evidence supporting it.

### Pre/post or interrupted time series

Use only when stronger designs are unavailable. Model baseline trend and seasonality, document concurrent changes, use multiple observations, and make modest causal claims.

## Pre-launch checklist

- Causal hypothesis and mechanism are explicit.
- Population, assignment unit, and analysis unit are defined.
- Treatment differs from control only as intended.
- Primary metric and smallest meaningful effect are declared.
- Duration or sample rationale is documented.
- Exposure and assignment are logged.
- Sample-ratio mismatch check is ready.
- Missing data and attrition rules are defined.
- Guardrails, equity checks, and stop conditions exist.
- Concurrent experiments and spillovers are assessed.
- Analysis and decision rule are time-stamped before results.
- OEC or decision function is explicit and not reducible to a short-term business metric.
- A/A validation exists when the experimentation platform or metric is new or materially changed.

## Trustworthiness checks

### Before interpreting impact

1. Confirm assignment and exposure logic.
2. Run sample-ratio mismatch checks on the randomization unit.
3. Confirm metric values against a system of record where possible.
4. Check missing, duplicated, bot, and cross-device data.
5. Verify randomization and analysis units match the estimator.
6. Inspect carryover, contamination, interference, and concurrent launches.
7. Reproduce the primary analysis from the frozen specification.

An unexplained SRM means the treatment and control populations may not be comparable. Do not rescue the result by excluding a segment after looking at outcomes unless the cause is independently established and the correction is documented.

### A/A tests

Use identical experiences in both variants to test whether:

- false-positive rates behave as expected across repeated tests;
- assignment and data pipelines are unbiased;
- metric variance supports power calculations;
- prior experiments create carryover;
- aggregate counts match systems of record.

Continuous A/A tests are especially useful after platform, identity, or instrumentation changes.

## Safe ramp and durability

Use staged exposure:

1. Small internal or opt-in rings for obvious functional and safety failures
2. Minimum practical randomization exposure for precise causal measurement
3. Operational ramp for capacity and reliability
4. Optional long-term holdout for durability, delayed harm, novelty, or primacy

Do not generalize from forgiving employees or enthusiastic beta users to the target population. Hand broad-rollout questions to `$assess-intervention-scale` when available.

## Institutional memory record

Store every valid experiment, including null and negative results:

```markdown
Owner and date:
Decision:
Hypothesis and mechanism:
Population and assignment:
Control and treatment:
Primary metric or OEC:
Guardrails:
Quality checks, including SRM:
Effect and uncertainty:
Decision and rationale:
Screenshots or implementation reference:
Follow-up and transfer limits:
```

## Interpretation matrix

| Behavior | Outcome | Guardrails | Interpretation |
|---|---|---|---|
| improves | improves | safe | evidence supports mechanism and value |
| improves | unchanged | safe | proxy or time horizon may be wrong; do not scale on behavior alone |
| improves | improves | worsens | mixed or harmful; redesign before scaling |
| unchanged | unchanged | safe | null, underpowered, weak implementation, or wrong diagnosis |
| unchanged | improves | safe | mechanism theory may be wrong or another pathway moved |
| worsens | worsens | any | stop and investigate backfire |

## Common threats

- peeking and optional stopping;
- novelty effects;
- instrumentation changes;
- sample-ratio mismatch;
- contamination and interference;
- differential attrition;
- multiple metrics or segments without correction;
- regression to the mean;
- seasonality and concurrent launches;
- treatment bundles that prevent mechanism attribution;
- short-term engagement gains with delayed harm.

## Learning from nulls

Check in order:

1. Was assignment valid?
2. Did eligible actors receive treatment?
3. Did the mechanism move?
4. Was the test capable of detecting a meaningful effect?
5. Was the behavioral diagnosis wrong?
6. Did effects differ in a preregistered meaningful segment?
7. Did qualitative evidence reveal a new barrier?

Do not search unrestricted post-hoc segments until something appears significant.
