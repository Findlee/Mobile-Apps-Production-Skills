# Institutional learning

## Experiment record

Store:

- durable ID, owners, dates, links to code and analysis;
- decision, hypothesis, mechanism, and prior evidence;
- population, randomization, exposure, variants, and screenshots;
- metric definitions and versioned queries;
- power/precision rationale, duration, and analysis plan;
- ramp events, incidents, and deviations;
- trust checks and full result table;
- decision, rationale, rollout, and monitoring;
- follow-up outcome and lessons.

Record negative, null, failed, and invalid experiments. Hiding them creates publication bias and repeated waste.

## Metric governance

Maintain a catalog with semantic definitions, query ownership, change history, validation, dependencies, expected ranges, and deprecation. A metric name should resolve to the same meaning across teams and experiments.

## Meta-analysis

Aggregate only sufficiently comparable interventions, populations, metrics, and estimands. Preserve heterogeneity and publication of all relevant tests. Use repeated evidence to update beliefs about mechanisms, not to manufacture certainty from incompatible studies.

## Organizational health

Track decision cycle time, percent of experiments with frozen plans, invalidation reasons, SRM frequency, instrumentation defects, adoption of learnings, repeated hypotheses, and follow-up completion. Do not reward teams simply for number of experiments or positive lifts.

## Source

The end-to-end trust process, metric taxonomy, organizational learning, and institutional memory are grounded in Ron Kohavi, Diane Tang, and Ya Xu, *Trustworthy Online Controlled Experiments*, plus [Microsoft Research’s online experimentation work](https://www.microsoft.com/en-us/research/publication/online-experimentation-at-microsoft/).
