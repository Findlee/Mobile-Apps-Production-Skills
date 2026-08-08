---
name: product-metrics
description: Design, audit, and interpret a product measurement system that connects customer value, product outcomes, business outcomes, instrumentation, retention, experiments, guardrails, and post-launch decisions. Use for North Star metrics, product KPI trees, activation/retention definitions, funnels/cohorts, event taxonomy, feature success criteria, A/B test metrics, experiment readouts, analytics audits, and outcome reviews. Do not invent baselines, targets, causal relationships, sample sizes, or statistical conclusions.
---

# Product Metrics

## Mission

Turn product strategy and shipped behavior into a trustworthy decision system.

The core transformation is:

`Product intent -> Value exchange -> Outcome model -> Metric system -> Definitions -> Instrumentation -> Baseline -> Decision rule -> Measurement -> Learning -> Product decision`

A good metric system should help the team answer:

- Are users receiving the intended value?
- Is the product behavior changing in the intended direction?
- Is that behavior plausibly contributing to the business outcome?
- What is getting better or worse?
- Can we trust the data?
- What decision should we make next?

Metrics are not reporting decoration and are not proof by themselves.

## Orchestration safety

This skill can run either as a top-level workflow or as a bounded specialist inside an active orchestrator.

When `product-manager` or `product-review` invokes this skill as a specialist:

- answer only the bounded question and scope passed by the parent;
- reuse the parent's evidence map, product model, decisions, and constraints instead of rebuilding them from scratch;
- do not re-enter or invoke the active parent orchestrator;
- do not broaden the review or restart strategy/discovery unless the bounded question cannot be answered without it;
- return unresolved dependencies as `HANDOFF RECOMMENDATIONS` to the parent rather than recursively chaining skills;
- do not ask the user to repeat information already present in the shared context;
- distinguish new findings from facts already established by the parent;
- stop when the bounded uncertainty is resolved enough for the parent's next decision.

Only one orchestrator owns final prioritization and user-facing synthesis at a time.

## Evidence discipline

Always distinguish:

- `FACT` - directly established information about the product, metric, data, or system.
- `EVIDENCE` - observed quantitative or qualitative information supporting a conclusion.
- `ASSUMPTION` - something believed but not established.
- `HYPOTHESIS` - a testable expectation about behavior or causality.
- `DECISION` - a choice made using available evidence and constraints.
- `CONSTRAINT` - platform, business, legal, technical, statistical, privacy, or operational boundary.
- `UNKNOWN` - information required for a stronger conclusion but not currently available.

Do not:

- invent a baseline;
- invent a target;
- invent event coverage;
- invent retention or conversion rates;
- infer causality from correlation;
- infer statistical significance without the required experiment data and method;
- claim a null result proves no effect when the test may be underpowered;
- turn a qualitative sample proportion into a population estimate;
- treat a metric as valid forever because it was useful once.

When data is unavailable, define what needs to be measured and why.

## First determine the measurement mode

Use the narrowest mode that resolves the user's decision.

### Mode A - Product metric system

Use for a product, product area, or business line that needs a coherent hierarchy of value, outcomes, drivers, guardrails, and diagnostics.

Typical outputs:

- product value statement;
- business outcome;
- product outcome;
- North Star candidate if useful;
- input/driver metrics;
- guardrails;
- diagnostic metrics;
- metric definitions;
- instrumentation gaps.

### Mode B - Feature / release success plan

Use before or immediately after a material feature release.

Define:

- intended outcome;
- primary success metric;
- guardrails;
- diagnostics;
- baseline;
- measurement window;
- decision rule;
- instrumentation.

Do not force a company-level North Star framework onto a single small feature.

### Mode C - Analytics / instrumentation audit

Use when the question is whether the current event model can answer product questions reliably.

Audit:

- event semantics;
- identity;
- timestamps;
- success/failure distinction;
- duplicate events;
- missing events;
- property definitions;
- platform consistency;
- joinability;
- experiment exposure;
- privacy/data minimization;
- schema ownership/versioning.

### Mode D - Funnel / activation diagnosis

Use when users are failing to reach initial or recurring value.

Focus on:

- entry cohort;
- eligibility;
- ordered behavioral steps;
- value moment;
- activation definition;
- time-to-value;
- drop-offs;
- segment differences;
- false activation proxies.

### Mode E - Retention / lifecycle diagnosis

Use when the problem is recurring value, churn, resurrection, or product usage cadence.

Determine:

- critical event;
- natural usage interval;
- appropriate retention definition;
- cohort entry;
- new/current/resurrected/churned lifecycle;
- retention curve shape;
- segment behavior;
- leading behaviors associated with durable usage.

### Mode F - Experiment metric design

Use before an A/B or controlled online experiment.

Define:

- hypothesis;
- randomization unit;
- analysis unit;
- eligible/triggered population;
- primary/OEC metric when appropriate;
- organizational guardrails;
- trustworthiness guardrails;
- diagnostics;
- practical significance / MDE intent;
- power/sample requirements when inputs are available;
- duration/stopping plan;
- multiple-testing policy;
- decision rule.

If the experiment itself is not yet well defined, route to `product-experiment`.

### Mode G - Experiment readout / causal decision

Use when results already exist.

First check trustworthiness, then effect size and uncertainty, then product significance.

Do not begin with "which metrics are significant?"

### Mode H - Executive / portfolio scorecard

Use when the goal is alignment across teams/products.

Prefer a small hierarchy of:

- goal metrics;
- driver/input metrics;
- guardrails;
- portfolio or team ownership;
- diagnostic drill-downs.

Avoid executive dashboards with dozens of equally important KPIs.

## The product measurement stack

Do not flatten every metric into one list.

### 1. Value statement

Before choosing a metric, state in words:

- who receives value;
- what valuable progress/result occurs;
- why the product exists for that user;
- what sustainable business result should follow if value is repeatedly delivered.

If the team cannot describe success in words, jumping directly to a metric usually creates a proxy without a shared meaning.

### 2. Business outcome / goal metric

A result the organization ultimately cares about.

Examples:

- sustainable subscription revenue;
- long-term retention;
- gross margin;
- completed marketplace transactions;
- paid conversion;
- support cost reduction.

Goal metrics are often slower-moving, less sensitive, and farther from the daily control of an individual team.

They should generally be:

- simple enough to explain;
- stable enough to survive routine feature releases;
- strategically meaningful.

### 3. Product outcome / driver metric

A measurable user/customer behavior or state that the team can influence and believes contributes to the goal.

Examples:

- users completing the core job successfully within the first session;
- weekly users completing at least one meaningful collaboration;
- users receiving an order on time;
- trial users reaching recurring value before trial expiration.

A driver metric is a causal hypothesis, not automatically a proven driver.

Ask:

`If we move this metric, why should the goal metric move?`

If the answer is weak or purely correlational, label the relationship as an assumption and validate it.

### 4. Input / lever metrics

Behaviors or product factors a team can directly influence to move the product outcome or North Star.

Useful input sets are:

- small;
- complementary;
- actionable;
- tied to a causal model;
- not merely a feature list.

For a product-level North Star framework, 3-5 inputs are often enough as a working set, but do not force a fixed count when the product model is different.

### 5. Guardrail metrics

Guardrails answer:

`What must not materially worsen while we optimize the primary outcome?`

Two categories matter.

#### Organizational guardrails

Protect customer/business/system health.

Examples:

- crash rate;
- latency;
- refund/cancellation rate;
- complaints;
- error rate;
- safety incidents;
- abuse/fraud;
- privacy/security incidents;
- unsubscribe rate;
- support burden;
- revenue cannibalization;
- content quality.

#### Trustworthiness guardrails

Protect the validity of measurement/experiments.

Examples:

- sample ratio mismatch;
- assignment/exposure integrity;
- missing/duplicate logs;
- contamination between variants;
- join-key failure;
- instrumentation anomalies.

A guardrail is useful only when the team knows what kind of movement is unacceptable or at least what movement triggers investigation.

### 6. Diagnostic metrics

Diagnostics explain movement without competing with the primary metric.

Examples:

- step-level funnel conversion;
- error types;
- payment decline reasons;
- AI response failure classes;
- source-specific activation;
- feature-level clickthrough;
- revenue decomposition into payer rate and conditional revenue.

Diagnostics are for understanding, not for declaring success by cherry-picking a positive submetric.

### 7. Data-quality metrics

Track whether the data itself remains usable.

Examples:

- event delivery rate;
- schema validation failures;
- unexpected null rates;
- duplicate rate;
- identity-merge anomalies;
- timestamp lag;
- missing exposure events.

Instrumentation quality is a product decision dependency, not a secondary analytics concern.

## North Star Framework

Use a North Star only when a product-level unifying metric materially improves alignment and prioritization.

Do not use it as a mandatory template for every feature.

### A strong North Star candidate should

- represent realized customer value, not merely exposure or activity;
- reflect the current product strategy;
- be within product/marketing's sphere of influence without being directly manipulable by one trivial action;
- act as a plausible leading indicator of sustainable business success;
- be measurable consistently;
- be understandable outside analytics;
- avoid vanity behavior;
- have a causal story that can be challenged and updated.

### Weak North Star examples

Usually weak without additional context:

- downloads;
- registered users;
- raw DAU;
- number of screens viewed;
- total push notifications sent;
- number of AI messages generated;
- total features shipped.

These can increase while customer value stays flat or falls.

### Value moment test

Ask:

`What event or state demonstrates that the customer actually received the product's intended value?`

Prefer a value event over app open.

Examples:

- completed workout rather than opened fitness app;
- received order rather than opened delivery app;
- completed match rather than opened game;
- successfully exported report rather than opened dashboard;
- completed useful AI task rather than sent one chat message.

### North Star inputs

Model the North Star as depending on a small number of actionable inputs.

Common lenses include:

- breadth: how many relevant users receive value;
- depth: how much value each receives;
- frequency: how often value recurs;
- efficiency/quality: how successfully or quickly value is delivered.

Do not force these lenses when they do not fit the product.

### North Star validation

A North Star is a model, not doctrine.

Revisit it when:

- strategy changes;
- the customer base changes;
- the metric stops predicting sustainable results;
- teams discover it is gameable;
- the definition no longer reflects value;
- leading relationships fail under controlled tests or repeated evidence.

## Metric quality checklist

For each primary, driver, or North Star metric, assess:

### Meaning

- What user/customer value does it represent?
- What does an increase actually mean?
- Can the metric rise for a bad reason?

### Alignment

- How does it connect to the intended product/business outcome?
- Is the connection causal evidence or a hypothesis?

### Actionability

- Can the responsible team meaningfully affect it?
- Does it guide a product decision?

### Sensitivity

- Can realistic product changes move it in the relevant time window?
- Is variance too high for useful decisions?

### Timeliness

- Does feedback arrive soon enough to act?
- If the true business metric is too slow, is a validated surrogate needed?

### Interpretability

- Can product/engineering/design understand why it moved?
- Is a model-derived metric too opaque for operational use?

### Quality

- Does the metric include whether the user action was successful or valuable?
- Example: `signup` may be weaker than `signup + reaches meaningful value`.

### Game resistance

Ask:

`How could a team make this number go up while making the product worse?`

Then add quality constraints, guardrails, or replace the metric.

### Stability

- Is the metric definition versioned?
- Can teams compare it over time?
- Has a business/user-base/platform change invalidated it?

## Metric definition contract

Never use an important metric name without a semantic definition.

For each metric specify, when relevant:

- human-readable name;
- purpose/decision supported;
- event or state definition;
- numerator;
- denominator;
- unit of analysis;
- population / eligibility;
- cohort-entry rule;
- time window;
- timezone/calendar semantics;
- unique vs repeated behavior;
- success/failure qualification;
- inclusion/exclusion rules;
- identity rule;
- handling of bots/test/internal users;
- handling of missing/late data;
- metric owner;
- definition version/date.

### Denominator test

A metric can change because the numerator changed, the denominator changed, or both.

Always inspect denominator movement when interpreting ratios.

Example:

`purchase conversion = purchasers / eligible users`

If eligibility changed, the conversion rate can move even if purchasing behavior did not.

## Activation

Activation should represent first meaningful value or a validated leading behavior, not an arbitrary onboarding completion.

### Activation design process

1. Define the intended early value.
2. Identify candidate behaviors/states that indicate value was received.
3. Compare candidates against later retention/value when possible.
4. Prefer a definition the product team can act on.
5. Include a time-to-activation window if timing matters.
6. Validate that optimizing activation does not simply move a proxy.

### Avoid

- `account_created` as activation by default;
- `onboarding_completed` when onboarding itself is optional or bureaucratic;
- `push_permission_granted` as evidence of product value;
- defining activation only because the event already exists.

## Retention and recurring value

Retention must be anchored to how the product is naturally used.

### 1. Define the critical event

A critical event is the behavior that best indicates the user received recurring product value.

Prefer:

`returns and performs critical event`

over:

`returns and opens app`

when open alone does not represent value.

### 2. Determine natural usage interval

Do not automatically use D1/D7/D30 for every product.

Ask:

- Is expected usage daily, weekly, monthly, episodic, or event-driven?
- How long do successful users naturally take before repeating the critical event?

Use observed behavior plus product/customer context.

### 3. Choose a retention definition

Potential definitions include:

- N-day retention;
- unbounded/rolling retention;
- bracket/custom-interval retention;
- usage-interval based retention;
- retained critical-event completion.

Choose based on the product's natural use, not analytics-tool defaults.

### 4. Separate lifecycle stages when useful

For an established product, distinguish:

- `NEW` - newly entered the product/lifecycle;
- `CURRENT` - active consistently within expected usage intervals;
- `RESURRECTED` - active again after a dormant interval;
- `CHURNED/DORMANT` - failed to return within the defined interval.

Do not assume the same intervention works for all lifecycle stages.

### 5. Read the retention curve

Ask:

- How large is early drop-off?
- Does the curve flatten?
- Which cohorts improve/deteriorate?
- Which lifecycle group is driving active-user growth or decline?
- Do retained users show a different value behavior?

Do not infer why a curve moves from quantitative data alone. Route to `customer-research` when explanation requires user evidence.

## Funnels and journeys

A funnel is useful only if its step definitions correspond to meaningful product behavior.

For each funnel:

- define eligibility at entry;
- define ordered/unordered step semantics;
- define max conversion window;
- distinguish attempts from success;
- inspect time between steps;
- inspect repeated attempts;
- segment only when it changes the product decision;
- connect final step to customer value.

Avoid funnels that merely mirror screen navigation if screens are not meaningful behavioral states.

## Segmentation

Segment to test a decision-relevant hypothesis, not to hunt for a positive chart.

Potential dimensions:

- lifecycle stage;
- platform / app version;
- geography;
- acquisition source;
- payer/subscription state;
- new vs tenured;
- behavioral cohort;
- use case;
- account/team size;
- device capability;
- experiment eligibility/triggering.

### Segmentation rule

Before slicing, state:

`If segment X behaves differently, what product decision changes?`

If the answer is nothing, the segment is probably diagnostic noise.

For experiment readouts, post-hoc segment fishing creates a multiple-testing problem. Treat surprising segments as hypotheses for replication unless the analysis was pre-specified and statistically handled.

## Instrumentation contract

For every decision-critical event define:

| Field | Meaning |
|---|---|
| Event | Stable semantic event name |
| Actor | User/account/device/system responsible |
| Trigger | Exact behavior/state causing emission |
| Success state | Whether event represents attempt, success, failure, or state change |
| Timestamp | When behavior occurred, not merely when batch arrived |
| Properties | Decision-relevant attributes only |
| Identity | Stable join key / actor identity |
| Experiment | Exposure/variant/trigger if applicable |
| Source | Client/server/backend/partner |
| Deduplication | How repeated delivery is handled |
| Privacy | Data minimization / sensitivity constraints |

### Prefer semantic events over UI-element telemetry

Prefer:

`subscription_purchase_succeeded`

rather than only:

`green_button_tapped`

UI events may still be diagnostic, but the core metric system should survive copy/layout changes.

### Separate attempts, successes, and failures

For important flows, do not let one ambiguous event represent all states.

Example:

- `payment_started`
- `payment_succeeded`
- `payment_failed`

This prevents false conversion and enables recovery diagnosis.

### Client and server instrumentation

Use the side that best represents the truth being measured.

Client telemetry is useful for:

- what the user saw;
- taps/clicks;
- visible latency;
- local errors;
- screen-level interaction.

Server/backend telemetry is often stronger for:

- authoritative payment completion;
- entitlement changes;
- durable state transitions;
- generated jobs/tasks;
- backend failures.

When both are needed, ensure they can be joined reliably.

### Identity

Be explicit about:

- anonymous -> signed-in merge;
- device changes;
- cross-platform users;
- account/workspace identity;
- reinstall behavior;
- test/internal accounts.

Changing identity semantics can silently break cohort, retention, attribution, and experiment analysis.

### Schema evolution

For decision-critical metrics:

- name an owner;
- version meaning changes;
- avoid silently changing historical semantics;
- backfill only when methodologically valid;
- document migration dates.

## Baselines and targets

### Baseline before target

When practical, understand:

- current level;
- trend;
- seasonality;
- cohort differences;
- variance;
- denominator behavior;
- instrumentation quality.

### Targets

Do not invent a target because a template asks for one.

A target can come from:

- business economics;
- customer threshold;
- contractual/platform requirement;
- historical performance;
- benchmark used with context;
- power/practical-significance requirement;
- strategic aspiration explicitly labeled as such.

Distinguish:

- `aspirational target`;
- `forecast`;
- `decision threshold`;
- `minimum practical effect`;
- `guardrail threshold`.

These are not interchangeable.

## Experiments: metric design

For controlled experiments, business reporting metrics may be too slow, noisy, or unattributable.

### Experiment scorecard

Prefer a hierarchy:

1. Primary metric or OEC.
2. Key guardrails.
3. Secondary/driver metrics.
4. Diagnostics.
5. Trustworthiness/data-quality checks.

Do not declare 25 co-primary metrics.

### OEC - Overall Evaluation Criterion

Use an OEC when multiple key outcomes require an explicit trade-off and a single decision criterion improves consistency.

An OEC should:

- be measurable during the experiment;
- be attributable to variants;
- be sensitive/timely enough for decisions;
- reflect or predict long-term strategic value;
- encode important trade-offs;
- resist gaming.

Do not create a weighted OEC merely to appear quantitative.

If weights are not defensible, keep a small set of key metrics and define decision rules for conflicting movement.

### Primary metric localization trap

A feature-local metric can improve while the overall user experience worsens.

Example:

`click-through on new widget +30%`

may coexist with:

`overall task success flat/down`

because the widget cannibalized another path.

Prefer metrics that capture the intended outcome beyond the local UI when possible.

### Surrogate / early indicators

A surrogate is useful when the true goal arrives too slowly for experiment decisions.

But the surrogate relationship must be validated.

Do not assume:

`more messages -> more retention`

just because historical high-retention users send more messages.

Historical correlation is not enough to prove that forcing more messages will improve retention.

### Practical significance before statistical significance

Before running the test, define:

`What smallest effect would materially change the product/business decision?`

This informs the minimum detectable effect and power calculation.

Do not use statistical significance to justify economically irrelevant effects.

### Randomization and analysis unit

Explicitly define both.

Examples:

- randomize by user, analyze per user;
- randomize by account, analyze account outcome;
- randomize by device, analyze device outcome.

If the analysis unit is finer than the randomization unit, naive variance calculations may be wrong.

Do not perform advanced variance correction by improvisation. Use the validated experiment platform/statistical method.

### Triggering / eligibility

When only a subset can be affected by Treatment, triggered analysis can reduce noise.

But triggering itself must be trustworthy and based on conditions not biased by Treatment.

Define:

- eligible population;
- exposure event;
- trigger event;
- overall treatment effect if needed;
- triggered treatment effect;
- complement sanity check when supported.

## Experiments: trust before interpretation

A statistically sophisticated readout of broken data is still wrong.

Use this order:

### Check 1 - Experiment execution

- correct variant allocation;
- expected ramp/exposure;
- no unintended overlap/contamination;
- exposure event works;
- no obvious data loss or duplication.

### Check 2 - Sample Ratio Mismatch (SRM)

If observed variant counts materially violate the intended assignment ratio, treat the experiment as untrustworthy until the cause is resolved.

Do not say:

`The ratio is only 0.6% off, so it is fine.`

With large samples, a small percentage imbalance can be extremely unlikely and associated with severe bias.

### Check 3 - Instrumentation / data quality

- data pipeline stable;
- metric definitions unchanged;
- IDs/join keys intact;
- timestamps sensible;
- no platform/version-specific missing data.

### Check 4 - A/A / platform validity when relevant

A/A tests can validate:

- expected false-positive behavior;
- variance estimation;
- platform bias;
- carryover effects;
- system-of-record alignment;
- experiment plumbing.

Do not require a new A/A before every product A/B test, but experimentation infrastructure should have demonstrated validity.

### Check 5 - Power / sensitivity

A non-significant result can mean:

- true effect is near zero;
- effect exists but test lacks power;
- metric is too noisy;
- exposure/triggering diluted the effect.

Do not translate `p > threshold` into `there is no effect` without examining the confidence interval and detectable effect.

## Statistical interpretation rules

This skill should reason about experiment statistics, but must not fabricate calculations.

### p-value

Do not say:

`p = 0.03 means there is a 97% probability Treatment is better.`

For classical NHST, the p-value is computed under the null hypothesis. It is not the posterior probability that the treatment works.

### Confidence interval

Prefer reporting:

- estimated treatment effect;
- confidence interval;
- practical significance;
- guardrail movement.

A wide interval crossing both meaningful positive and negative effects means the result is uncertain, not "no effect."

### Power

Power is relative to an effect size.

Do not say:

`The test has 80% power`

without:

- metric variance/baseline assumptions;
- significance approach;
- target minimum detectable effect;
- sample/traffic plan.

If these are unavailable, request them or state that power cannot be calculated responsibly.

### Peeking / early stopping

Do not repeatedly inspect classical fixed-horizon p-values and stop the first moment significance appears.

Use either:

- a pre-specified duration/analysis plan compatible with the platform; or
- a validated sequential/Bayesian method designed for continuous monitoring.

Do not mix methods casually.

### Multiple testing

Risk increases when exploring:

- many metrics;
- many time points;
- many segments;
- many variants;
- repeated iterations.

Separate:

- pre-specified primary metrics;
- expected secondary metrics;
- exploratory diagnostics.

Treat unexpected post-hoc discoveries as hypotheses unless corrected/replicated appropriately.

### Statistical vs product significance

A tiny effect can be statistically significant with huge traffic and still be a bad product decision.

A larger but uncertain effect can still justify further testing when upside warrants it.

Always combine:

`effect size + uncertainty + business/customer meaning + guardrails + cost/risk`

## Experiment decision matrix

Use the actual experiment plan when one exists.

A generic structure:

### Primary positive, guardrails healthy

Potential decision:

- ship / ramp / replicate depending on risk and uncertainty.

### Primary negative

Potential decision:

- do not ship / rollback / iterate.

### Primary flat, interval rules out meaningful upside

Potential decision:

- stop / deprioritize / pivot.

### Primary flat, interval still includes meaningful upside/downside

Potential decision:

- inconclusive;
- increase power / duration if worth the cost;
- improve sensitivity/triggering;
- revise metric.

### Primary positive, important guardrail negative

Potential decision:

- trade-off decision;
- mitigate;
- narrow rollout;
- redesign;
- do not ship.

### Conflicting key metrics

Do not cherry-pick the favorable metric.

Use the pre-defined OEC/trade-off rule or explicitly escalate the unresolved trade-off.

## Post-launch measurement

A release is not done because deployment succeeded.

For material product work:

1. Verify instrumentation after deployment.
2. Check adoption/exposure only as diagnostics.
3. Evaluate primary product outcome.
4. Evaluate guardrails.
5. Inspect lifecycle/cohorts where relevant.
6. Compare observed behavior with prediction.
7. Combine quantitative evidence with qualitative evidence.
8. Decide:
   - keep;
   - ramp;
   - iterate;
   - rollback;
   - investigate;
   - revisit opportunity;
   - revise causal model;
   - stop.

If the feature is not achieving the intended outcome, do not automatically optimize feature usage. Ask whether the feature is the wrong solution or the outcome model is wrong.

## Institutional memory

For material experiments/releases, preserve:

- hypothesis;
- product decision context;
- metric definitions/version;
- eligible population;
- exposure/rollout;
- experiment dates;
- result/effect size;
- uncertainty;
- guardrails;
- decision;
- why the decision was made;
- follow-up result if shipped.

Do not maintain only a list of "wins." Negative and null results are product knowledge.

Historical experiment data can later help evaluate:

- which metrics are sensitive;
- which metrics move causally together under product interventions;
- which patterns repeat;
- whether early indicators predict slower outcomes;
- which ideas frequently fail.

## AI / ML product metrics

Do not evaluate an AI product with only model-quality metrics.

Separate at least these layers when material:

### Product value

- task completion;
- successful user outcome;
- recurring usage tied to value;
- retained value users;
- conversion/monetization where relevant.

### Interaction

- acceptance/use of output;
- edit/regenerate/retry rate;
- abandonment;
- time to successful outcome;
- handoff/escalation.

### Model / output quality

- correctness/groundedness as relevant;
- instruction adherence;
- quality rubric score;
- task-specific success;
- hallucination/error class rate.

### Reliability / operations

- latency;
- tool-call failure;
- model/provider failure;
- fallback frequency;
- availability.

### Economics

- inference cost per successful task;
- cost per active value user;
- gross margin impact;
- expensive retry/tool behavior.

### Trust / safety

- harmful output rate;
- unsafe action attempts;
- user reports;
- privacy violations;
- permission violations.

Do not let a model benchmark substitute for evidence that the user actually receives value.

## Mobile product lens

When relevant, include mobile-specific guardrails/diagnostics such as:

- crash-free users/sessions;
- ANR/hang rate;
- app launch latency;
- screen/API latency;
- install/update failure;
- app size where strategically relevant;
- OS/app-version differences;
- permission denial/recovery;
- background/foreground state issues;
- network failure/recovery;
- purchase/restore flow integrity.

Do not make every mobile quality metric a primary product KPI.

## Boundary with `product-experiment`

For a randomized product experiment, `product-experiment` defines what product assumption is being tested and why the treatment can change the decision. `product-metrics` defines how the experiment is measured, trusted, analyzed, and interpreted.

Do not redesign the product hypothesis simply because a metric is easier to measure. If the treatment/assumption is unclear, return that gap to `product-experiment`. If the hypothesis is clear, own the scorecard and statistical contract without sending the task back unnecessarily.

## Boundary with existing experiment skills

`product-metrics` owns the product-wide measurement system: value exchange, North Star and outcome model, activation/retention/funnel semantics, instrumentation, scorecards, guardrails, and post-launch decisions.

Use `define-product-metrics-experiments` as a bounded specialist for a narrow controlled-experiment metric, readiness, trust-check, or readout question. Use `design-behavior-experiments` when the experiment specifically tests a behavioral mechanism or intervention. Their outputs return to the active Product Management parent and must not create a competing metric model or product priority.

## Cross-skill routing

Route to:

- `product-strategy` when business/product outcome or value exchange is unclear;
- `product-discovery` when the opportunity or causal model is unclear;
- `customer-research` when quantitative behavior requires explanation or customer-value validation;
- `product-experiment` when the next step is to design a nontrivial validation/controlled test;
- `mvp-scope` when metric findings imply the release is overbuilt/underbuilt;
- `product-spec` when instrumentation or product behavior needs implementation-ready definition;
- `product-review` when the user wants a complete product audit rather than a measurement-only analysis.
- `define-product-metrics-experiments` for bounded controlled-experiment design or interpretation depth;
- `design-behavior-experiments` for bounded behavioral causal-test depth.

## Anti-patterns

Do not:

- call outputs outcomes;
- use downloads or registrations as automatic proof of value;
- use app open as retention when open is not the value event;
- optimize CTR without checking downstream value/cannibalization;
- use time-on-site without understanding whether more time means value or friction;
- use short-term revenue alone when it can damage long-term value;
- treat a correlated behavior as a proven causal driver;
- choose a North Star because a famous company uses it;
- create many North Stars for one coherent product;
- make every dashboard metric a KPI;
- define ratios without denominators;
- change metric definitions silently;
- ignore identity semantics;
- instrument everything "just in case";
- omit failure events from critical funnels;
- segment until a positive result appears;
- peek at fixed-horizon p-values and stop early;
- call an underpowered null "no effect";
- ignore SRM;
- ignore guardrail degradation;
- equate statistical significance with product value;
- claim an experiment caused long-term effects that were not measured or supported by a validated surrogate;
- optimize AI benchmark quality while product value falls.

## Output contracts

Use the smallest output that fits the request.

### Contract A - Product measurement architecture

```text
VALUE EXCHANGE
Target user:
Value received:
Business value:

OUTCOME MODEL
Business goal:
Product outcome / North Star candidate:
Causal hypothesis:
Confidence/evidence:

INPUTS / DRIVERS
1.
2.
3.

GUARDRAILS
- ...

DIAGNOSTICS
- ...

METRIC DEFINITIONS
| Metric | Purpose | Formula/definition | Population | Window | Owner |

INSTRUMENTATION GAPS
| Gap | Why it matters | Required event/state |

OPEN ASSUMPTIONS
- ...
```

### Contract B - Feature success plan

```text
RELEASE INTENT
Target user:
Problem/opportunity:
Expected behavior change:

PRIMARY METRIC
Definition:
Baseline:
Target / decision threshold:
Window:

GUARDRAILS
- ...

DIAGNOSTICS
- ...

INSTRUMENTATION
| Event | Exact trigger | Properties | Purpose |

POST-LAUNCH DECISION
Keep if:
Iterate if:
Rollback/stop if:
Investigate if:
```

### Contract C - Retention analysis plan

```text
CRITICAL EVENT
...

USAGE INTERVAL
Known / estimated / unknown:
Evidence:

RETENTION DEFINITION
...

COHORT ENTRY
...

LIFECYCLE
New:
Current:
Resurrected:
Churned/dormant:

DIAGNOSTIC QUESTIONS
1.
2.
3.

REQUIRED DATA
...
```

### Contract D - Experiment metric plan

```text
HYPOTHESIS
...

ELIGIBLE POPULATION
...

RANDOMIZATION UNIT
...

ANALYSIS UNIT
...

PRIMARY / OEC
...

ORGANIZATIONAL GUARDRAILS
...

TRUST GUARDRAILS
- SRM
- exposure integrity
- instrumentation integrity

SECONDARY / DIAGNOSTICS
...

PRACTICAL SIGNIFICANCE
Minimum effect that changes decision:

POWER / SAMPLE
Known inputs:
Missing inputs:
Method/platform:

STOPPING / ANALYSIS PLAN
...

DECISION RULE
...
```

### Contract E - Experiment readout

```text
TRUST CHECK
SRM:
Instrumentation:
Exposure/assignment:
Known anomalies:
Verdict: TRUSTWORTHY / QUESTIONABLE / INVALID

PRIMARY RESULT
Effect:
Uncertainty / CI:
Statistical result:
Practical significance:

GUARDRAILS
...

SECONDARY / DIAGNOSTIC
...

SEGMENTS
Pre-specified:
Exploratory:

INTERPRETATION
What evidence supports:
What evidence does not support:

DECISION
SHIP / RAMP / ITERATE / ROLLBACK / CONTINUE TEST / INCONCLUSIVE / STOP

NEXT LEARNING
...
```

## Completion standard

The work is complete when the relevant decision can be made with explicit metric meaning, trustworthy instrumentation, appropriate uncertainty, and a clear next action.

The work is not complete merely because a dashboard or KPI list exists.
