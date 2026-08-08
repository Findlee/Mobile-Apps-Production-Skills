# Goal and metric framework

## Start with a decision

Complete this chain:

`decision → user/business goal → hypothesized mechanism → observable signal → metric → decision threshold`

A dashboard number without a decision or mechanism is not yet an experiment metric.

## Metric roles

- **Overall evaluation criterion / primary:** best short-term measurable proxy for the long-term objective used to guide the decision.
- **Driver:** measures an intended mechanism that may move the goal.
- **Guardrail:** detects unacceptable harm or tradeoff.
- **Diagnostic:** explains implementation or mechanism without deciding alone.
- **Invariant/data quality:** should not change between variants and helps establish trust.

HEART can prompt candidate goals and signals across happiness, engagement, adoption, retention, and task success; it is not a requirement to use all five or a substitute for a causal model.

## Metric definition

For every metric record formula, unit of analysis, eligible population, event source, attribution window, inclusion/exclusion, direction, baseline, minimum meaningful change, expected latency, seasonality, missing-data behavior, owner, and known gameability.

## OEC quality checks

The criterion should be measurable within the experiment, sensitive enough to plausible change, causally connected to durable value, understandable, stable, and balanced against harms. A composite metric needs explicit weights and sensitivity analysis; changing weights after results invalidates the precommitment.

## Tensions

List who benefits or loses when the metric rises. Watch for short-term engagement that damages trust, quality, health, revenue durability, marketplace balance, or future choice. Use guardrails and later follow-up rather than claiming one proxy captures everything.

## Primary references

- Ron Kohavi, Diane Tang, and Ya Xu, *Trustworthy Online Controlled Experiments*.
- [Google Research: HEART framework](https://research.google/pubs/measuring-the-user-experience-on-a-large-scale-user-centered-metrics-for-web-applications/).
