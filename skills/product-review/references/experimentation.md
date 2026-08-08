# Experimentation Review Reference

Primary source: Ron Kohavi, Diane Tang, Ya Xu - Trustworthy Online Controlled Experiments

This reference summarizes the key trust checks that product-review should use before relying on experiment results. The full product-experiment and product-metrics skills contain the deeper workflow.

## Metric taxonomy

Distinguish:

- goal/success metrics;
- driver/surrogate metrics;
- organizational guardrails;
- trust/data-quality guardrails;
- diagnostics/debug metrics.

Good driver metrics should be aligned with the goal, actionable, sensitive, and resistant to gaming.

## Experiment metric requirements

Experiment metrics should be sufficiently:

- measurable;
- attributable to variants;
- sensitive;
- timely.

A business reporting metric can be a poor experiment metric.

## Trust before interpretation

Before reading the winner:

- verify experiment assignment/exposure;
- check Sample Ratio Mismatch (SRM);
- verify instrumentation/data pipeline;
- use A/A tests or equivalent platform validation where relevant;
- inspect randomization vs analysis unit;
- inspect leakage/interference where applicable.

If trust fails, downstream p-values and metric deltas can be invalid.

## Statistical interpretation

Do not:

- interpret p = 0.05 as a 95% probability the treatment is better;
- interpret non-significance as proof of no effect;
- stop a classical fixed-horizon test the first time p < 0.05;
- mine many metrics, timepoints, segments, or iterations and present the best one as confirmatory.

Use:

- effect size;
- confidence interval;
- practical significance/MDE;
- power;
- predefined decision logic.

## OEC / tradeoffs

Where several key metrics trade off, an Overall Evaluation Criterion can encode the tradeoff.

Do not invent weights without decision rationale.

If a credible OEC is not available, keep a small set of key metrics and explicit tradeoff rules.

## Long-term value

Short-term metrics can optimize the wrong behavior.

Examples include:

- revenue that increases by spamming users;
- engagement that increases because tasks become harder;
- clicks that increase while downstream success falls.

Use guardrails and validate surrogate metrics against long-term outcomes over time.
