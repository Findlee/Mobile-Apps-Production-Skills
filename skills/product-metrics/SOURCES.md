# Product Metrics - Source Map

This skill synthesizes the supplied product-management books with the supplied experimentation reference and current official Amplitude product-analytics guidance.

The runtime skill is tool-agnostic. Source material is used to design the reasoning rules, not required at runtime.

## Ron Kohavi, Diane Tang, Ya Xu - Trustworthy Online Controlled Experiments

Primary source for rigorous experiment metrics, goal/driver/guardrail taxonomy, metric quality, OECs, instrumentation trustworthiness, power, p-values, confidence intervals, A/A testing, SRM, multiple testing, and institutional memory.

### Key ideas used

- Organizational metrics can be structured as goal, driver, and guardrail metrics.
- Goal metrics express ultimate success; driver metrics are shorter-term causal hypotheses about how to move the goal; guardrails protect important constraints and experimental validity.
- Goal metrics should be relatively simple and stable.
- Driver metrics should be aligned, actionable, sensitive, and resistant to gaming.
- Metrics are proxies and require continuous evaluation, including whether they encourage gaming or actually drive long-term goals.
- Experiment metrics need measurability, attribution, sensitivity, and timeliness; business reporting metrics are not automatically suitable for experiments.
- Surrogate/early metrics are useful only when there is credible evidence they predict the slower goal.
- OECs can encode trade-offs across key metrics but should not be created with arbitrary weights.
- Too many co-equal key metrics increase cognitive load and multiple-testing risk.
- Short-term metrics can produce perverse outcomes; the Amazon email example demonstrates why lifetime value and unsubscribe cost can matter more than immediate click-through revenue.
- Goodhart/Campbell/Lucas problems require caution when a metric becomes a target or when historical correlation is treated as causal.
- Instrumentation is a prerequisite for trustworthy product and experiment decisions.
- Randomization unit and analysis unit must be compatible with statistical analysis.
- A/A tests are useful for validating false-positive behavior, variance estimation, platform bias, system-of-record consistency, and experimentation plumbing.
- SRM is a critical trust guardrail; even a numerically small allocation mismatch can invalidate results at large sample sizes.
- p-values are frequently misinterpreted; they are not the probability the null is true or that Treatment is better.
- Confidence intervals communicate uncertainty around treatment effects.
- Power is tied to a minimum effect size of practical interest; a non-significant result can be underpowered.
- Peeking and multiple testing increase false-positive risk unless the method explicitly supports sequential monitoring/corrections.
- Institutional memory should preserve hypothesis, experiment context, metric results, and the decision, including failures and nulls.

### Main chapters used

- Chapter 3 - Twyman's Law and Experimentation Trustworthiness
- Chapter 6 - Organizational Metrics
- Chapter 7 - Metrics for Experimentation and the Overall Evaluation Criterion
- Chapter 8 - Institutional Memory and Meta-Analysis
- Chapter 13 - Instrumentation
- Chapter 14 - Choosing a Randomization Unit
- Chapter 17 - The Statistics behind Online Controlled Experiments
- Chapter 19 - The A/A Test
- Chapter 20 - Triggering for Improved Sensitivity
- Chapter 21 - Sample Ratio Mismatch and Other Trust-Related Guardrail Metrics
- Chapter 23 - Measuring Long-Term Treatment Effects

## Amplitude - North Star Playbook

Official online source used for product-level North Star framing and inputs.

Sources reviewed 2026-08-08:

- https://amplitude.com/books/north-star/about-north-star-framework
- https://amplitude.com/books/north-star/the-north-star-checklist
- https://amplitude.com/books/north-star/changing-your-North-Star
- https://amplitude.com/north-star-hub

### Key ideas used

- A North Star Metric should represent value customers receive, be influenceable by product/marketing, and act as a leading indicator of sustainable business results.
- A North Star is paired with a small number of influential inputs that teams can more directly affect.
- Raw activity metrics such as registered users or DAU are often weak North Stars when they do not represent realized value.
- The metric should reflect product strategy and remain understandable/actionable.
- North Stars and input relationships are beliefs that should be revisited as strategy, market, or evidence changes.
- One coherent product usually benefits from one product-level North Star rather than competing North Stars, while complex organizations may require separate frameworks for genuinely separate products/businesses.

### Runtime synthesis choices

The skill does not force a North Star onto every feature or small product task. Feature success metrics and experiment metrics can be local as long as they connect to product value/outcomes.

## Amplitude - Mastering Retention / Retention Lifecycle Framework

Official online source used for critical-event retention, natural product usage interval, retention definition, and lifecycle segmentation.

Sources reviewed 2026-08-08:

- https://amplitude.com/books/mastering-retention
- https://amplitude.com/books/mastering-retention/your-critical-event-and-product-usage-interval
- https://amplitude.com/books/mastering-retention/the-retention-lifecycle-framework
- https://amplitude.com/books/mastering-retention/new-user-retention
- https://amplitude.com/books/mastering-retention/current-user-retention
- https://amplitude.com/books/mastering-retention/resurrected-user-retention

### Key ideas used

- Retention should be based on a critical event that represents value when simple app open is insufficient.
- The product's natural usage interval should inform whether retention is evaluated daily, weekly, monthly, or through a custom interval.
- N-day retention is only one valid retention definition; teams should choose a definition that matches the product's natural behavior.
- New, current, resurrected, and dormant/churned users behave differently and should not always be collapsed into one active-user curve.
- Retention analysis should begin with instrumentation and baseline product usage rather than immediately applying tactics.

### Runtime synthesis choices

Amplitude's specific "80% repeat critical event" usage-interval procedure is treated as a useful analytical method, not as a universal law. Product context, seasonality, data quality, and qualitative research can justify a different interval.

## Teresa Torres - Continuous Discovery Habits

Primary supporting source for product outcomes as team-influenceable behavior and for treating causal links between outcomes as hypotheses rather than facts.

### Key ideas used

- Product teams should work toward outcomes rather than feature output.
- Product outcomes should be close enough to the team to guide decisions while still contributing to business outcomes.
- The relationship from product outcome to business outcome is itself a hypothesis that must be tested.
- Discovery and delivery both feed learning; post-launch evidence should update the opportunity/solution model.

## Melissa Perri - Escaping the Build Trap

Primary supporting source for metrics as success criteria, retention/product metric diagnosis, and "done = outcome achieved/learned" rather than "done = shipped."

### Key ideas used

- Product strategy should tie initiatives/tactics to success metrics and outcomes.
- Product teams need data to diagnose the problem rather than simply deliver requested features.
- Version 1 is a hypothesis; teams should measure and iterate rather than automatically move to the next feature.
- Success criteria should be planned before launch and instrumentation should support them.

## Dan Olsen - The Lean Product Playbook

Supporting source for Lean Product Analytics, funnels, retention, cohorts, AARRR, and measuring/iterating product-market-fit hypotheses.

### Key ideas used

- Product analytics is useful for identifying where users receive or fail to receive value.
- Funnel, cohort, retention, conversion, and LTV/other business metrics should be chosen based on the product question, not as a mandatory dashboard template.
- Quantitative evidence should be combined with qualitative customer feedback when explaining why behavior occurs.

## Jeff Patton - User Story Mapping

Supporting source for outcome-first releases and measuring real-world results after shipping.

### Key ideas used

- Prioritize target outcomes rather than output/features.
- Release slices should be tied to intended user/business results.
- After release, evaluate whether the outcome occurred and feed learning back into product work.

## Marty Cagan - Inspired

Supporting source for validation before expensive commitment and for making product behavior/success explicit before engineering handoff.

### Key ideas used

- Product validation includes value, usability, and feasibility rather than assuming a detailed specification is proof.
- Product teams should obtain evidence early and use live/beta behavior for continued learning.
- Product success requires more than implementation completion.

## Ryan Singer - Shape Up

Secondary supporting source for bounded product work and explicit problem/appetite context.

### Key ideas used

- A feature/solution must stay anchored to a problem and a bounded appetite.
- Scope boundaries and no-gos prevent implementation from expanding beyond the intended bet.
- Metrics used for the release should evaluate the intended result, not reward arbitrary extra scope.

## Synthesis choices and modern extensions

### Goal / driver / guardrail vs North Star / inputs

These taxonomies are compatible but serve different contexts.

- `Goal` is the ultimate business/product success measure.
- `North Star` is an optional product-level unifying value/outcome metric.
- `Driver/input` metrics are actionable causal hypotheses used to move the goal/North Star.
- `Guardrails` protect customer, business, system, and measurement integrity.
- `Diagnostics` explain movement without becoming competing success criteria.

The runtime skill chooses the simplest hierarchy appropriate to the decision.

### Statistical execution

The skill defines decision and interpretation rules, but it does not pretend to be a full statistics package. Exact power, variance, confidence interval, SRM, sequential-testing, or multiple-testing calculations should use the validated experimentation/analytics stack or a statistically appropriate tool with the required inputs.

### Mobile metrics

Crash-free usage, ANRs, app-version/platform segments, network recovery, and purchase integrity are modern mobile operational/product guardrails synthesized from experimentation/product-quality principles. The detailed mobile-quality reference layer is intentionally deferred to `product-review`, where current Apple/Android guidance will be integrated.

### AI/ML product metrics

The split between product value, interaction, model quality, reliability, economics, and trust/safety is a modern extension for AI products. It applies the source principles that local technical metrics should not substitute for user value and that systems need outcome and guardrail metrics. The final AI-product reference layer will be deepened in `product-review` with current NIST/OpenAI/Anthropic sources.
