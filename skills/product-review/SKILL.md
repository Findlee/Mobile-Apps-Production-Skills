---
name: product-review
description: Run an evidence-based end-to-end product and business audit of an existing product, feature, release, roadmap, product plan, product spec, analytics setup, or AI product. Use for "full product review", "what should we improve", "why is this underperforming", portfolio or roadmap diagnosis, and cross-domain reviews spanning strategy, customer evidence, opportunity quality, scope, behavior, measurement, and learning. Orchestrate Product Management specialists and request bounded UX/UI, behavioral-design, or mobile-engineering suite passes when needed, then return one prioritized Product Improvement Backlog. For a narrow UX/UI experience audit use review-product-experience directly; for a narrow behavioral or mobile-engineering audit use the matching domain reviewer.
---

# Product Review

## Mission

Act as the end-to-end diagnostic and synthesis layer for an existing product.

The job is not to generate a generic critique or a long list of best practices. The job is to answer:

1. What is materially limiting this product or decision now?
2. What evidence supports that conclusion?
3. What is still only an inference or unknown?
4. What should be fixed, validated, measured, simplified, removed, or deferred?
5. In what order should the team act?

The final output must be one coherent prioritized plan, even when several specialist product skills are used internally.

## Core operating model

Use this review loop:

`Evidence inventory -> Product model -> Core journey -> Diagnose -> Deep-dive only where needed -> Apply relevant quality lenses -> Synthesize causal findings -> Prioritize -> Action plan -> Learning loop`

Do not mechanically run every specialist skill in sequence.

The review is an orchestrated diagnosis, not a checklist marathon.

## Orchestration safety

`product-review` becomes the active orchestrator for audit/review intent. If `product-manager` routed the request here, orchestration ownership transfers to `product-review` until the review is complete.

Rules:

- never invoke `product-manager` from inside a review;
- never re-enter `product-review` recursively;
- issue bounded specialist questions instead of asking specialists to perform their own broad audit;
- pass the shared Evidence Coverage Map, Current Product Model, relevant journey slice, constraints, and already-established findings;
- specialist skills return evidence, findings, confidence/limitations, and handoff recommendations; `product-review` owns deduplication, causal synthesis, priority, and the final backlog;
- if a specialist recommends another skill, decide at the review layer whether that second call would materially change the audit;
- when requesting a pass from `review-product-experience`, `review-behavioral-design`, or `review-mobile-application`, explicitly mark it as a bounded suite pass; the child reviewer must not claim global priority or produce a competing final backlog;
- do not let a specialist silently widen the review scope;
- review is read-only by default: do not edit code, product behavior, analytics, or configuration unless the user separately asks for implementation.

Load specialist skills and reference layers lazily. Do not preload the entire skill library into context.

## Evidence discipline

For every material finding, distinguish:

- `OBSERVED` - directly visible in the supplied artifact, build, code, screenshot, event schema, or data.
- `EVIDENCE` - research, analytics, experiment results, reviews, support data, logs, or other supplied evidence supporting the finding.
- `INFERENCE` - a reasoned interpretation from observable product behavior or expert inspection.
- `ASSUMPTION` - something currently treated as true without sufficient evidence.
- `UNKNOWN` - important information not available in the review inputs.
- `RECOMMENDATION` - an action proposed from the current evidence and risk.

Rules:

- Never invent users, quotes, metrics, research, experiments, market facts, or business goals.
- Never present an AI heuristic inspection as real user evidence.
- Never present a screenshot-based inference as proof of actual interaction behavior that was not observed.
- Never present repository structure as proof that users understand or value the feature.
- Never turn qualitative frequency in a small sample into population prevalence.
- Never call an experiment trustworthy before checking the design and available trust signals.
- If evidence is missing, classify the gap separately instead of disguising it as a product defect.
- Make a decision when reasonable under uncertainty, but state what could change it.

## Review modes

Choose the narrowest mode matching the user's goal.

### QUICK REVIEW

Use for a fast product health check.

Focus on:

- core value proposition;
- core journey;
- obvious UX friction;
- obvious scope/complexity issues;
- measurement gaps;
- critical platform/reliability risks if visible;
- top 5-10 actions.

Do not expand into every specialist workflow.

### FULL REVIEW

Use when the user asks for a comprehensive audit of the product/project.

Cover, as relevant:

- strategy and positioning;
- customer/problem evidence;
- opportunity and solution quality;
- core user journeys;
- UX heuristics;
- discovery and assumption risk;
- scope and complexity;
- product behavior/specification;
- analytics and product metrics;
- retention and lifecycle;
- experimentation quality;
- mobile/platform quality;
- accessibility;
- AI-product quality and risk if applicable;
- build-trap / learning-system risk.

The output must still prioritize. A full review is not an excuse to produce 100 equally weighted findings.

### FOCUSED REVIEW

Use when the user names a specific area such as:

- onboarding;
- activation;
- retention;
- monetization/paywall;
- subscription lifecycle;
- AI assistant;
- feature X;
- UX;
- analytics;
- product spec;
- release scope.

Evaluate the target area deeply, while checking only adjacent dependencies that can materially change the recommendation.

### PRE-RELEASE REVIEW

Use before a release, store submission, production rollout, or major feature launch.

Focus on:

- core journey completeness;
- unresolved product-semantic decisions;
- error/loading/empty/recovery states;
- analytics and experiment exposure;
- success metrics and guardrails;
- entitlement/payment/subscription states where applicable;
- permissions and privacy behavior;
- platform conventions and quality requirements;
- accessibility;
- performance/stability evidence;
- rollback/feature-flag strategy where relevant;
- AI eval/guardrail coverage where applicable.

Return explicit `BLOCKERS`, `HIGH-RISK NON-BLOCKERS`, and `READY ITEMS`.

### POST-LAUNCH REVIEW

Use when a release has shipped and performance or behavior is being evaluated.

Focus on:

- whether the intended behavior shipped;
- whether the primary outcome moved;
- guardrails;
- segment differences;
- retention/lifecycle effects;
- experiment trustworthiness if causal claims are made;
- unexpected behavior and support/review signals;
- next decision: continue, iterate, expand, reduce, rollback, stop, or return to discovery.

Do not judge a launch by shipped output alone.

### ARTIFACT REVIEW

Use for a PRD, product spec, roadmap, experiment plan, research plan, metrics plan, pitch, or other product artifact.

Review the artifact against its purpose and current product state. Do not penalize a lightweight artifact for not containing information that belongs elsewhere if the source-of-truth is clear.

## Step 1 - Define the audit contract

Before deep review, determine internally:

- What exactly is being reviewed?
- What decision should the review support?
- Which release/version/build/artifact is in scope?
- Who is the relevant target user/customer, if known?
- What outcome is the product or reviewed area expected to create, if known?
- Is the review quick, full, focused, pre-release, post-launch, or artifact-focused?
- Which evidence sources are available?
- Which important sources are absent?

Ask a clarifying question only when the missing answer would materially change the review.

Do not ask for every possible source before starting. Review what exists and explicitly state limitations.

## Step 2 - Build the Evidence Coverage Map

Inventory the evidence before drawing strong conclusions.

Typical evidence sources:

| Source | What it can support | What it cannot establish by itself |
| --- | --- | --- |
| Repository/code | implemented behavior, routes, states, feature flags, analytics calls, business logic | customer value, comprehension, real-world UX quality |
| Running build | observable interaction behavior, state transitions, defects | population impact, why users behave that way |
| Screenshots/video | visible hierarchy, copy, obvious affordances, visual consistency | full interaction behavior, recovery, actual performance |
| Product spec/PRD | intended behavior, assumptions, scope, decisions | whether the product actually behaves that way |
| Analytics | what users did at scale under the event definitions | why they did it, causality without design |
| Experiment | causal effect if design and execution are trustworthy | effects outside tested population/context without justification |
| Interviews | context, stories, motivations, needs, workarounds | population prevalence |
| Usability tests | task comprehension and interaction problems in tested context | market demand or broad prevalence |
| Reviews/support | concrete complaints, language, failure cases | representative frequency without denominator |
| Revenue/cohort data | monetization/retention behavior | user motivation by itself |
| Competitor analysis | alternatives, conventions, positioning | evidence that copying them creates value |
| AI evals | model/system behavior on evaluated cases | actual product value unless linked to user outcomes |

Produce a compact coverage summary when it helps:

```text
AVAILABLE
- repository
- screenshots
- analytics

MISSING
- customer interviews
- usability tests
- experiment history

IMPLICATION
Strong confidence on implementation and measurement gaps.
Limited confidence on customer motivation and desirability.
```

## Step 3 - Reconstruct the Current Product Model

Do not begin with recommendations. First reconstruct the current product as it exists.

Capture enough of the following to guide the audit:

### Product frame

- target user/customer;
- core job/problem/opportunity;
- value proposition;
- relevant alternative/workaround;
- business model;
- primary product outcome;
- major strategic choices/non-goals;
- material constraints.

If these are not explicitly defined, mark them `UNKNOWN` or `INFERENCE`.

### Core journey

Map the end-to-end value path, not merely screens:

`Entry -> Setup -> First meaningful action -> Value moment -> Result -> Return/repeat -> Monetization if applicable -> Recovery/exit`

For products with several materially different roles, create separate journeys.

### System states

Where relevant, identify:

- first-time;
- returning;
- free;
- trial;
- paid;
- expired;
- offline;
- loading;
- error;
- permission denied;
- empty;
- partially complete;
- interrupted;
- deleted/cancelled;
- degraded AI/provider state.

This reconstruction becomes the shared context for all specialist deep-dives.

## Step 4 - Run the Product Health Scan

Use the dimensions below as a diagnostic scan. Do not treat every dimension as equally important.

For each dimension, classify status as:

- `HEALTHY` - no material issue found from available evidence;
- `WATCH` - possible issue or moderate weakness;
- `WEAK` - material issue supported by evidence or strong inspection;
- `BLOCKER` - issue can prevent safe/viable release or invalidate the decision;
- `UNKNOWN` - evidence insufficient.

Also label confidence:

- `HIGH` - directly observed and/or strongly supported by evidence;
- `MEDIUM` - multiple supporting signals but material uncertainty remains;
- `LOW` - expert inference or weak/partial evidence.

Do not create fake decimal scores.

### Dimension A - Strategy and positioning

Check:

- target customer is sufficiently specific;
- important problem/opportunity is clear;
- product value is distinct from feature inventory;
- differentiation/alternative is understood;
- business outcome and product outcome are not confused with outputs;
- strategic choices create focus;
- non-goals exist where needed;
- product behavior does not conflict with strategy.

Red flags:

- "for everyone";
- strategy is a roadmap of features;
- all segments are priorities;
- competitor copying is the strategy;
- no reason the target user should switch or return;
- success is defined only as shipping.

If material, route to `product-strategy`.

### Dimension B - Customer/problem evidence

Check:

- problem is based on customer reality rather than the absence of a requested feature;
- evidence exists for context, frequency, severity, workarounds, and desired progress where needed;
- target users were actually represented in research;
- evidence distinguishes user, buyer, and economic buyer where relevant;
- research is not only filtered through stakeholders/sales/support;
- contradictory evidence is visible.

Red flags:

- fictional personas used as evidence;
- future-intent questions treated as proof;
- one loud customer defines the roadmap;
- app-store reviews are treated as representative prevalence;
- team has no direct customer exposure in a high-uncertainty product.

If customer context is the next uncertainty, route to `customer-research`.

### Dimension C - Opportunity and solution quality

Check:

- the opportunity is expressed as a customer need/pain/desire, not a feature;
- solution addresses the chosen opportunity;
- multiple mechanisms were considered for high-stakes novel problems;
- standard patterns are used where the problem is solved and non-differentiating;
- core causal link to desired outcome is plausible;
- solution is not overfit to one anecdote.

Red flags:

- feature request -> build with no problem framing;
- only cosmetic variants counted as alternative solutions;
- large solution is fixed before opportunity is understood;
- team optimizes a local interaction disconnected from product outcome.

If opportunity/solution space is unclear, route to `product-discovery`.

### Dimension D - Core experience and value delivery

Inspect the full path to value.

Check:

- value is understandable early enough;
- unnecessary steps do not precede value;
- calls to action are clear;
- navigation matches user mental model;
- critical state changes are visible;
- users retain control and can exit/cancel/recover;
- errors are prevented or recoverable;
- the product does not rely on memory unnecessarily;
- information and features are focused on the primary goal;
- experienced users have reasonable efficiency where relevant.

Use the NN/g heuristic reference as an expert-inspection lens, not as user evidence.

A heuristic violation is `INFERENCE` unless corroborated by behavioral/user evidence.

If experience quality across several journeys is material to the product decision, request a bounded pass from `review-product-experience` rather than loading its UX/UI specialists individually.

### Dimension E - Assumption and discovery risk

Check solution-critical assumptions across:

- desirability;
- usability;
- viability;
- feasibility;
- ethics/harm;
- data/privacy;
- operational dependencies.

Ask:

- What must be true for this to work?
- Which assumptions are high importance and weak evidence?
- Did the team increase implementation commitment before reducing the most material risks?
- Did a failed solution incorrectly invalidate a good opportunity?

If the key uncertainty is testable, route to `product-experiment`.

### Dimension F - Scope and complexity

Check:

- V1/release is a coherent end-to-end slice;
- scope is tied to an outcome or learning goal;
- optional depth and future scale are separated from current requirements;
- no-go/out-of-scope decisions are explicit;
- speculative architecture does not create product complexity;
- features do not exist only because they were cheap to add;
- each major must-have survives a removal test;
- manual paths are considered when automation is expensive and not core to learning/value.

Classify material scope elements when useful:

- `KEEP`;
- `SIMPLIFY`;
- `REMOVE`;
- `DEFER`;
- `VALIDATE BEFORE BUILDING`.

If scope is the main issue, route to `mvp-scope`.

### Dimension G - Product behavior and specification

Check:

- current and target behavior are explicit;
- primary user journeys are unambiguous;
- business rules are centralized and consistent;
- states/transitions are coherent;
- empty/loading/error/recovery states are covered where material;
- destructive actions have clear lifecycle behavior;
- permissions and entitlements are explicit;
- acceptance criteria verify behavior rather than invent it;
- non-goals prevent silent scope expansion;
- unresolved semantic questions are visible;
- implementation detail is not masquerading as product requirement without need.

If behavior is ambiguous or implementation-ready handoff is missing, route to `product-spec`.

### Dimension H - Metrics and instrumentation

Check:

- success is described first in words;
- business goal, product outcome, driver/input, and guardrail metrics are distinguished;
- activation represents first meaningful value, not merely completed onboarding;
- retention uses a meaningful critical event and natural usage interval;
- primary metric is not obviously gameable;
- guardrails protect customer/business value;
- baseline and segmentation are available where needed;
- decision-critical events have precise semantics;
- attempted/succeeded/failed states are distinguishable where relevant;
- user identity and attribution are coherent;
- experiment exposure is instrumented if experimentation is used;
- product outcome is not replaced by a local click/usage metric.

If measurement is weak, route to `product-metrics`.

### Dimension I - Experimentation quality

When causal claims depend on an experiment, check:

- hypothesis and primary decision metric were defined before results;
- randomization and analysis unit are appropriate;
- sample ratio mismatch or equivalent trust checks are available;
- experiment exposure is correctly logged;
- instrumentation is trustworthy;
- practical effect/MDE and power were considered when relevant;
- fixed-horizon tests were not stopped merely when p < 0.05;
- multiple metrics/segments were not mined post hoc for a winner;
- confidence intervals and effect size are considered, not only significance;
- organizational guardrails are included;
- result is linked to the product outcome and not only a local metric.

Do not declare a causal product win from an untrustworthy experiment.

### Dimension J - Retention and lifecycle

When retention matters, check:

- critical event represents recurring value;
- natural usage interval is understood;
- retention method matches expected usage pattern;
- new, current, resurrected, and dormant/churned users are not needlessly mixed;
- activation/value discovery/habit formation are distinguished where useful;
- lifecycle segments reveal different problems rather than one aggregate retention rate;
- winback/resurrection is assessed on post-return quality, not only opens.

Do not impose daily retention on products used naturally weekly, monthly, or episodically.

If repeated behavior, consequential choices, incentives, behavioral ethics, or intervention mechanisms are material, request a bounded pass from `review-behavioral-design` rather than loading all behavioral specialists directly.

### Dimension K - Mobile/platform quality

Apply only when reviewing a mobile app or mobile release.

Use `lenses/mobile-app.md` and current official platform references when available.

Use this lens for product-level screening. When Flutter/React Native implementation health, architecture, synchronization, native integration, performance evidence, or release engineering could materially change priority, request a bounded pass from `review-mobile-application`.

Review:

- platform-native expectations and consistency;
- adaptive layout/orientation/form factors where relevant;
- back/navigation/state restoration;
- app switching, sleep, lock, interruptions;
- network loss and recovery;
- runtime permissions and graceful denial;
- notifications;
- IAP/subscription purchase and restore flows;
- performance/startup/responsiveness;
- crashes/ANRs and production vitals;
- accessibility;
- privacy/security behavior visible to product review;
- store promise vs in-app experience if store materials are supplied.

Do not pretend a product review replaces a security audit, penetration test, legal review, or device-lab QA.

### Dimension L - Accessibility

Apply to user-facing digital products, especially pre-release reviews.

Use WCAG 2.2 as a broad accessibility reference and platform accessibility guidance for native apps.

Check, as relevant:

- non-text alternatives;
- semantic labels/roles;
- keyboard/focus behavior for applicable interfaces;
- focus visibility and not being obscured;
- contrast and non-color-only communication;
- text scaling / larger text behavior;
- touch/target size;
- alternatives to dragging where applicable;
- predictable controls;
- clear errors and instructions;
- accessible authentication;
- screen-reader support;
- reduced motion;
- captions/audio descriptions where media requires them.

Classify accessibility issues by user impact and task criticality, not cosmetic preference.

### Dimension M - AI product quality

Apply if the product includes generative AI, an AI assistant, agentic behavior, model-generated content, or autonomous tool actions.

Use `lenses/ai-product.md`.

Check separately:

#### Product value
- Why is AI needed for this job?
- Does AI improve the user's outcome versus a simpler deterministic approach?
- Is the value measured in product terms, not only model benchmark scores?

#### System behavior
- input/context quality;
- output quality;
- factuality/grounding where required;
- uncertainty handling;
- corrections and regeneration;
- latency;
- fallback/degraded behavior;
- tool/action permissions;
- idempotency and irreversible action protection;
- human escalation/oversight where appropriate.

#### Evaluation
- task-specific eval objective;
- representative production-like cases;
- typical, edge, and adversarial cases;
- automated grading where appropriate;
- human calibration;
- multiple trials for nondeterministic agent tasks where useful;
- final environment outcome, not only a convincing transcript;
- regression evals on model/prompt/tool changes.

#### Risk/trust
- confabulation;
- privacy/data leakage;
- harmful bias or subgroup/language performance;
- over-reliance / automation bias / inappropriate anthropomorphism;
- information integrity;
- security/tool misuse;
- IP/provenance where relevant;
- third-party model/component dependency.

Do not use every NIST risk category mechanically. Select risks relevant to the use case and potential impact.

### Dimension N - Build-trap and learning system

Check:

- roadmap is outcome-oriented enough to change tactics when evidence changes;
- teams are not rewarded only for output volume;
- shipping triggers measurement and learning;
- experiment/research history is retained;
- failed tests inform future work rather than disappear;
- customer exposure exists where uncertainty warrants it;
- there is a clear feedback loop from production evidence back to discovery and prioritization.

Red flags:

`idea -> build -> ship -> next idea`

with no meaningful:

`expectation -> measure -> learn -> decision`

## Step 5 - Use specialist skills selectively

The review skill owns diagnosis and final synthesis.

Specialist skills provide deeper analysis when a finding crosses a material threshold.

### `product-strategy`

Invoke/deep-dive when:

- target market/value proposition is ambiguous;
- strategic choices conflict;
- product is trying to serve incompatible segments;
- feature roadmap appears disconnected from outcomes;
- portfolio/initiative fit matters.

### `customer-research`

Invoke/deep-dive when:

- customer context is weak;
- the root problem is uncertain;
- behavioral data needs explanation;
- qualitative evidence needs synthesis;
- the next action should be research rather than build.

### `product-discovery`

Invoke/deep-dive when:

- desired outcome exists but opportunity/solution space is weak;
- the team is fixed on one solution too early;
- broad improvement request needs a problem decomposition.

### `product-experiment`

Invoke/deep-dive when:

- a high-risk assumption is identifiable;
- user/business risk is meaningful;
- cheap validation can prevent expensive implementation;
- solution options require evidence.

### `mvp-scope`

Invoke/deep-dive when:

- release is too broad;
- date and scope conflict;
- core value is buried under optional work;
- complexity/future-proofing is excessive;
- a coherent smaller slice is needed.

### `product-spec`

Invoke/deep-dive when:

- behavior/states/rules are ambiguous;
- a coding agent is likely to invent product semantics;
- pre-release defects stem from incomplete product definition;
- a reviewed recommendation is ready for implementation handoff.

### `product-metrics`

Invoke/deep-dive when:

- outcome is not measurable;
- instrumentation is weak;
- activation/retention definitions are poor;
- experiment metrics are invalid or gameable;
- a post-launch decision requires causal or cohort interpretation.

### Existing domain review suites

Use these only when their bounded contribution could change a product decision or backlog priority:

- `review-product-experience` for a deep UX/UI, accessibility, interaction, localization, consent, or design-system pass;
- `review-behavioral-design` for behavioral mechanisms, consequential choices, incentives, ethics, intervention evidence, or scale;
- `review-mobile-application` for Flutter/React Native engineering health, architecture, data/sync, testing, performance, native boundaries, or release readiness.

Pass the shared product frame, evidence map, journey slice, bounded question, constraints, and already-established findings. Ask the suite reviewer to return candidate findings, evidence, confidence, limitations, and handoff recommendations. `product-review` remains the only active orchestrator and owns final deduplication and priority.

### Important orchestration rule

Do not concatenate seven independent reports.

Maintain one shared:

- product model;
- journey;
- evidence map;
- finding registry;
- dependency graph;
- priority list.

When two specialist skills identify the same underlying problem, merge the findings.

Example:

```text
Observed: onboarding has 8 steps before first core value.
UX lens: excessive friction.
Metrics lens: biggest funnel drop occurs before first value.
Scope lens: 3 steps are not required for V1 value.

ONE FINDING:
First-value path is over-scoped and causing measurable activation loss.
```

Do not report this as three unrelated issues.

## Step 6 - Build causal finding chains

Prefer root-cause chains over symptom lists.

Example:

```text
SYMPTOM
D7 retention is weak.

OBSERVED
Users completing first successful project retain much better.

OBSERVED
Only 22% of new users reach first successful project.

INFERENCE
The primary bottleneck is activation/value discovery, not current-user habit formation.

RECOMMENDATION
Focus first on the path to first successful project, then re-evaluate retention.
```

Another example:

```text
SYMPTOM
Subscription conversion is low.

OBSERVED
Paywall appears before the user experiences the product's core result.

UNKNOWN
No experiment compares post-value vs pre-value paywall timing.

RECOMMENDATION
Do not redesign pricing first. Validate paywall timing/value exposure.
```

A strong review should reduce 30 surface observations into a smaller number of root product problems.

## Step 7 - Classify findings

Each material finding should have:

### Finding type

Use one of:

- `PRODUCT DEFECT` - behavior is broken relative to intended or expected product behavior.
- `PRODUCT RISK` - likely to limit customer/business outcome.
- `EVIDENCE GAP` - important decision lacks sufficient evidence.
- `MEASUREMENT GAP` - outcome cannot be reliably observed or interpreted.
- `SCOPE COMPLEXITY` - unnecessary breadth/depth/architecture is hurting speed or coherence.
- `UX QUALITY` - expert-inspection usability/interface issue.
- `PLATFORM QUALITY` - mobile/platform convention or quality issue.
- `ACCESSIBILITY` - barrier for users with relevant access needs.
- `AI QUALITY/RISK` - AI-specific behavior/evaluation/trust issue.
- `PROCESS/BUILD-TRAP` - operating model encourages output over learning/outcomes.

### Priority

Use:

#### P0 - Blocker

Use sparingly when the issue can:

- cause serious harm, privacy/security exposure, destructive data loss, or material compliance risk;
- make the core journey unusable for the target scenario;
- make payment/entitlement/destructive behavior materially unsafe or incorrect;
- invalidate a critical experiment/decision because the data cannot be trusted;
- make a release fundamentally non-viable.

#### P1 - High

Materially limits the primary product outcome, value delivery, monetization, retention, or release quality and should be addressed before lower-value optimization.

#### P2 - Medium

Creates meaningful friction, ambiguity, inefficiency, or risk but does not dominate the current outcome.

#### P3 - Low

Polish, local optimization, or low-impact process improvement.

Do not inflate severity to make the report feel important.

### Confidence

Use `HIGH`, `MEDIUM`, or `LOW` based on evidence quality.

A high-priority low-confidence finding usually means `VALIDATE` rather than immediately `BUILD`.

## Step 8 - Convert findings into action types

Every material finding should end in one primary action type:

- `FIX` - behavior clearly broken and sufficiently understood.
- `SIMPLIFY` - reduce friction or scope while preserving value.
- `REMOVE` - eliminate low-value/harmful complexity.
- `INSTRUMENT` - add or repair measurement before a decision can be made.
- `RESEARCH` - learn customer context/problem before solution work.
- `DISCOVER` - explore opportunity/solution space.
- `EXPERIMENT` - test a specific risky assumption.
- `SPECIFY` - resolve product behavior/rules/states.
- `KEEP` - current behavior is defensible; avoid unnecessary change.
- `DEFER` - potentially useful but not worth current focus.
- `STOP` - evidence suggests the work should not continue.

Avoid recommendations like:

- "improve UX";
- "increase retention";
- "make onboarding better";
- "add personalization".

A recommendation must state the decision/action and why it is next.

## Step 9 - Prioritize by dependency and learning value

Do not sort only by severity.

Use this sequence:

1. Safety, privacy, security, destructive behavior, compliance blockers.
2. Broken core value delivery.
3. Foundational evidence/measurement gaps that block correct decisions.
4. High-impact product bottlenecks supported by evidence.
5. High-risk assumptions that can be cheaply resolved.
6. Scope simplification that accelerates the above.
7. Secondary UX/quality improvements.
8. Polish and future options.

Prefer fixing the earliest causal bottleneck.

Example:

If onboarding completion is weak because users do not understand why the app needs a permission, fix/validate that before optimizing the paywall shown three screens later.

If retention is weak because activation is extremely low, diagnose activation before launching resurrection campaigns.

If analytics are semantically broken, repair measurement before claiming a product change improved the outcome.

## Step 10 - Product Improvement Backlog

The primary deliverable for a full review is a prioritized backlog, not a prose essay.

Use a table like:

| Priority | Action | Area | Finding | Basis | Confidence | Expected impact | Dependency | Next step |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| P0 | FIX | Subscription | Restore purchases fails after reinstall | OBSERVED | HIGH | Prevent lost entitlement | None | Repair + test lifecycle |
| P1 | SIMPLIFY | Activation | 3 pre-value onboarding steps are not required | EVIDENCE + INFERENCE | MEDIUM | More users reach first value | Event semantics | Scope focused V1 |
| P1 | INSTRUMENT | Analytics | Core value completion not tracked | OBSERVED | HIGH | Enables activation/retention diagnosis | None | Add success event contract |
| P1 | EXPERIMENT | Monetization | Paywall precedes value | INFERENCE | LOW | Potential conversion/retention gain | Instrumentation | Test timing after value |

Do not use expected impact as fabricated percentages. Use qualitative impact unless data supports a numeric estimate.

## Required output contract

Adapt depth to mode, but preserve the logic below.

### 1. Executive assessment

Include:

- product/review scope;
- strongest part of the product, if materially supported;
- biggest current product risk;
- biggest evidence limitation;
- overall review confidence.

Keep this compact.

### 2. Evidence coverage

Show what was available and what was missing when it affects confidence.

### 3. Product health map

Example:

| Area | Status | Confidence | Main issue |
| --- | --- | --- | --- |
| Strategy | WATCH | Medium | target segment too broad |
| Core value | WEAK | High | first value appears late |
| UX | WATCH | Medium | recovery/state feedback gaps |
| Metrics | BLOCKER | High | no core-value completion event |
| Mobile quality | HEALTHY | Medium | no major issues observed |
| AI quality | UNKNOWN | Low | no eval evidence supplied |

### 4. Top findings

Report only material findings first.

For each finding include:

- priority;
- type;
- observation/evidence;
- interpretation;
- why it matters;
- action;
- confidence.

### 5. Product Improvement Backlog

Organize into:

#### DO NOW
High-confidence fixes, instrumentation, release blockers, and obvious simplifications.

#### VALIDATE BEFORE BUILDING
High-impact but uncertain recommendations requiring research/discovery/experiment.

#### DO NEXT
Important improvements dependent on earlier work.

#### REMOVE / SIMPLIFY
Complexity with weak current value.

#### DEFER
Good ideas that should not distract now.

### 6. What not to do yet

Explicitly name tempting downstream work that should wait.

### 7. Missing evidence / next evidence

List only gaps that can materially change decisions.

### 8. Next review trigger

State when to revisit, for example:

- after 2 weeks of post-release data;
- after the activation experiment;
- after 5-8 target-user usability sessions;
- after instrumentation is repaired;
- before store submission.

## PRE-RELEASE output contract

When mode is PRE-RELEASE, lead with:

### RELEASE STATUS

Use one of:

- `READY`
- `READY WITH KNOWN RISKS`
- `NOT READY`
- `INSUFFICIENT EVIDENCE TO ASSESS`

Then show:

### BLOCKERS

Only release-blocking issues.

### HIGH-RISK NON-BLOCKERS

Issues the team may consciously accept with rationale.

### REQUIRED VERIFICATION

Tests/checks that must still run.

### POST-RELEASE MONITORING

Primary outcome, guardrails, technical quality, AI evals, rollback signals.

Do not call a release ready merely because the code compiles.

## QUICK REVIEW output contract

Keep to:

1. Top 5-10 findings.
2. Do now.
3. Validate.
4. Remove/defer.
5. Biggest missing evidence.

Avoid a giant scorecard.

## Focused review patterns

### Onboarding / activation

Check:

- promised value before/after install;
- first meaningful value;
- required vs optional setup;
- permissions timing;
- information collection necessity;
- cognitive load;
- progress/system status;
- recovery;
- activation event semantics;
- time-to-value;
- segment-specific friction.

Do not optimize onboarding completion as the final goal if users still fail to reach value.

### Paywall / monetization

Check:

- value exposure before ask;
- offer clarity;
- price/period/trial clarity;
- entitlement semantics;
- restore/cancel/expiry states;
- payer/non-payer journeys;
- impact on retention and trust;
- experiment design;
- revenue metric vs long-term guardrails.

Do not infer that lower conversion is always a pricing problem.

### Retention

Check:

- critical event;
- natural usage interval;
- new/current/resurrected cohorts;
- activation quality;
- current-user habit drivers;
- resurrection quality;
- cohort/segment differences;
- whether retention is actually the earliest bottleneck.

### AI feature

Check:

- core user job;
- deterministic alternative;
- context/input quality;
- quality/factuality;
- error correction;
- uncertainty/trust;
- latency/cost;
- eval suite;
- model change regressions;
- safety/privacy/tool actions;
- product outcome vs model score.

### Analytics

Check:

- metric hierarchy;
- event semantics;
- identity;
- funnel observability;
- retention event;
- experiment exposure;
- data quality/trust;
- dashboards reflecting decisions rather than vanity reporting.

### Product spec

Check:

- problem/outcome context;
- behavior/state completeness;
- rules;
- non-goals;
- edge/failure states;
- analytics contract;
- unresolved decisions;
- coding-agent ambiguity.

## Heuristic review protocol

When applying NN/g-style heuristic inspection:

1. Define the user, task, device, and scope.
2. First pass: understand the flow without evaluating every detail.
3. Second pass: identify specific heuristic violations.
4. Record the exact screen/state/action.
5. Link the issue to the violated principle.
6. Explain the likely user consequence.
7. Label it `INFERENCE` unless corroborated.
8. Merge duplicate issues into root patterns.

A single AI review cannot truthfully reproduce the benefit of several independent human evaluators. Do not claim it did.

## Dynamic reference policy

Some reference layers change over time, especially:

- Apple Human Interface Guidelines;
- Android Core App Quality and Android vitals;
- store/platform requirements;
- OpenAI/Anthropic AI guidance;
- AI model/tool behavior.

The package includes reviewed snapshots under `references/` and `lenses/`.

When current compliance/release behavior matters and web access is available:

1. Check the current official source.
2. Prefer current official guidance over an old snapshot.
3. State the source date/version when a recommendation depends on a changing requirement.
4. Do not silently treat historical platform guidance as current policy.

Stable product principles from the source books can remain embedded in the skill.

## Repository/codebase review rules

When a repository is available:

Inspect evidence proportionally, such as:

- routes/navigation;
- screens/components;
- feature flags/remote config;
- purchase/subscription logic;
- permissions;
- auth/account lifecycle;
- analytics events;
- experiment assignment/exposure;
- AI prompts/model/tool configuration;
- error handling;
- state restoration;
- tests;
- release configuration.

But do not infer:

- customer value from code presence;
- actual usability from component names;
- production frequency from possible code paths;
- successful analytics from SDK calls alone;
- safe AI behavior from a system prompt alone.

Use code to establish implementation facts, then connect them to product evidence.

## Screenshot/video review rules

When only screenshots are supplied:

You may confidently inspect:

- visual hierarchy;
- labels/copy;
- visible state/status;
- apparent navigation/control discoverability;
- consistency;
- obvious contrast/target issues when sufficiently visible;
- content density;
- apparent value communication.

Treat as lower-confidence inference:

- interaction timing;
- gesture behavior;
- error recovery;
- performance;
- actual user comprehension;
- accessibility semantics;
- behavior behind controls.

Ask for a build/video only if interaction behavior is central to the decision.

## Analytics review rules

When analytics are supplied:

1. Verify event definitions before interpreting funnels/cohorts.
2. Separate descriptive from causal conclusions.
3. Check denominator/population/eligibility.
4. Compare cohorts/segments only when definitions are coherent.
5. Look for the earliest material drop/bottleneck, not only the final metric.
6. Treat correlations as hypotheses unless experimental/causal evidence supports more.
7. Verify whether metric changes could be gaming or denominator effects.

## Experiment review rules

Before trusting a "winner":

1. Confirm assignment/exposure and target population.
2. Check SRM/trust signals if available.
3. Verify instrumentation and metric semantics.
4. Confirm primary metric/guardrails were defined appropriately.
5. Check duration/stopping method.
6. Check MDE/power or at least whether the result is too imprecise for the decision.
7. Check multiple metrics/segments/iterations.
8. Read effect size and interval, not only p-value.
9. Connect local metrics to product/business outcome.

If trustworthiness fails, classify the result as `INVALID` or `QUESTIONABLE`, not a win/loss.

## AI review rules

For AI systems, separate four layers:

```text
MODEL / COMPONENT QUALITY
        |
SYSTEM / AGENT BEHAVIOR
        |
USER TASK SUCCESS
        |
PRODUCT / BUSINESS OUTCOME
```

A higher model benchmark does not prove a better product.

A convincing response transcript does not prove a tool action completed correctly.

A successful tool action does not prove the user received value.

A product metric improvement does not automatically prove every AI-risk dimension is acceptable.

## Anti-patterns

Do not:

- run every subskill mechanically;
- create a 100-item checklist with no prioritization;
- invent a 0-10 product score unsupported by data;
- treat missing evidence as proof of a defect;
- treat heuristic inspection as user research;
- treat code as proof of user value;
- treat app reviews as representative prevalence;
- copy competitor features without an opportunity rationale;
- recommend building a large feature when the key assumption is unvalidated;
- optimize local CTR/usage while ignoring the product outcome;
- recommend more features when simplification is the better intervention;
- declare a release ready without checking critical states and measurement;
- declare an A/B winner without trust checks;
- equate statistical significance with business significance;
- equate non-significance with no effect;
- force daily retention on a non-daily product;
- use `app_open` as retention merely because it is easy to track;
- treat AI output quality as equivalent to product value;
- recommend an agentic architecture when a simpler workflow solves the job;
- silently make product decisions while reviewing implementation;
- bury P0/P1 issues under design polish;
- report the same root issue multiple times because several frameworks detected it;
- produce recommendations without next actions or decision logic.

## Quality bar

A strong product review should let a product team answer, in order:

1. What is the product trying to accomplish?
2. What evidence did the review actually inspect?
3. Where is the earliest or most important bottleneck?
4. Which findings are facts/evidence vs expert inference?
5. What are the 3-5 highest-leverage actions now?
6. Which recommendations require validation before build?
7. What should be removed or deferred?
8. What evidence or measurement is missing?
9. What should the team explicitly not do yet?
10. When should the product be reviewed again?

If the answer is clear, stop. Do not add framework output for its own sake.
