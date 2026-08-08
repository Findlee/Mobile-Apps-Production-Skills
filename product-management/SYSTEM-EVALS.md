# Product Management Skills - System Evals

These evals test the behavior of the skill system as a whole, not one skill in isolation. They also cover installation beside the repository's UX/UI, behavioral-design, and mobile-engineering suites.

## Eval 1 - Full audit ownership transfer

Prompt: `Do a full review of this app and tell me what to improve.`

Expected:
- `product-manager` routes to `product-review`;
- `product-review` becomes the sole active orchestrator;
- manager does not keep producing a second parallel diagnosis.

Fail if:
- both orchestrators independently return competing backlogs.

## Eval 2 - No review recursion

Context: `product-review` calls `product-metrics` to inspect retention.

Expected:
- metrics answers the bounded retention question;
- if it sees broader problems, it returns handoff recommendations;
- it does not call `product-review` again.

## Eval 3 - No manager recursion

Context: `product-manager` calls `product-discovery` for an AI coach idea.

Expected:
- discovery returns the opportunity/solution decision state;
- it does not re-enter `product-manager`.

## Eval 4 - Specialist respects bounded scope

Parent question: `Review only onboarding activation measurement.`

Expected:
- `product-metrics` does not start portfolio strategy or pricing analysis.

## Eval 5 - Shared evidence reuse

Parent already established: `No user interviews exist.`

Expected:
- child skill does not ask again whether interviews exist;
- it treats customer evidence as missing and reports the limitation.

## Eval 6 - Discovery vs research ownership

Prompt: `We don't understand why users abandon setup.`

Expected:
- discovery can frame the uncertainty;
- customer-research owns interview/observation design;
- research does not independently decide the company's strategic priority.

## Eval 7 - Discovery consumes supplied research

Evidence: 20 supplied interview transcripts already synthesized with traceability.

Expected:
- discovery can use the evidence directly;
- it does not require new interviews as ceremony.

## Eval 8 - Experiment vs metrics ownership

Prompt: `A/B test a new paywall.`

Expected:
- experiment skill defines the product hypothesis/treatment and why a randomized test answers the decision;
- metrics skill owns primary metric, guardrails, MDE/power inputs, SRM, stopping/statistics, and readout.

Fail if:
- both skills independently create contradictory statistical plans.

## Eval 9 - Experiment before problem understanding

Prompt: `Retention is bad. A/B test streaks.`

Expected:
- system routes upstream to discovery/research before spending effort on a streak experiment unless problem evidence already supports it.

## Eval 10 - Known low-risk fix

Prompt: `The submit button is covered by the keyboard on supported devices.`

Expected:
- no broad discovery or A/B ceremony;
- fix/specify/test/measure proportionally.

## Eval 11 - Strategy vs metric proxy

Strategy outcome: `Help users complete their core job successfully.`
Available easy metric: `time in app`.

Expected:
- metrics does not replace the outcome with time-in-app merely because it is measurable.

## Eval 12 - Scope vs spec

Approved V1 excludes social sharing.
During spec, sharing seems convenient.

Expected:
- spec keeps sharing out of scope;
- it may raise a scope-change request but cannot silently add it.

## Eval 13 - Spec finds incoherent scope

Approved scope omits required recovery after payment failure.

Expected:
- spec flags the coherence/quality contradiction;
- returns a scope-change request rather than inventing or silently ignoring behavior.

## Eval 14 - Metrics cannot invent target

Prompt: `Set a good D30 retention target.`
No baseline/category/business constraint supplied.

Expected:
- no fabricated target;
- asks for or marks missing baseline/decision context.

## Eval 15 - Review deduplicates specialist findings

UX, metrics, and scope all identify delayed first value.

Expected:
- one causal finding with combined evidence;
- not three duplicate backlog items.

## Eval 16 - Review distinguishes evidence and heuristic inference

Input: screenshots only.

Expected:
- UX heuristic findings are labeled expert inference;
- no claims that users are confused unless real user evidence exists.

## Eval 17 - Review is read-only by default

Prompt: `Audit this repository.`

Expected:
- inspect and report;
- do not edit code/config/events unless user separately requests fixes.

## Eval 18 - Review implementation follow-up

After audit, user says: `Implement P0 #1.`

Expected:
- use approved finding;
- if release boundary is unclear, scope it;
- if behavior is unclear, spec it;
- then implementation can begin.

## Eval 19 - No preload-all behavior

Simple prompt: `Should we add password reset?`

Expected:
- does not load/run full product-review, customer research, metrics, strategy, and all reference layers.

## Eval 20 - Full review lazy deep-dives

Full audit with strong strategy evidence but broken analytics.

Expected:
- strategy receives only lightweight scan;
- product-metrics gets deeper analysis;
- work is proportional to findings.

## Eval 21 - Missing customer evidence is not automatically a defect

Full audit has no interviews.

Expected:
- evidence coverage reports the gap;
- only recommends research if customer uncertainty materially blocks a decision.

## Eval 22 - Mandated work

Prompt: `Platform policy requires account deletion.`

Expected:
- no desirability discovery about whether users want compliance;
- scope/spec/platform-quality path, with measurement as relevant.

## Eval 23 - A/B trust failure

Primary metric +12%, severe SRM.

Expected:
- metrics marks experiment untrustworthy;
- review does not list the treatment as a proven win.

## Eval 24 - Qualitative evidence does not become prevalence

5/6 interviewees mention a problem.

Expected:
- research reports recurrence in sample;
- metrics/review do not call it 83% of the market.

## Eval 25 - Post-launch loop

Shipped feature misses product outcome.

Expected:
- metrics diagnoses what moved;
- if causal model is wrong, parent can route back to discovery;
- does not jump straight to adding more features.

## Eval 26 - Direct specialist request respected

Prompt: `Create an interview guide for recent churned subscribers.`

Expected:
- run `customer-research` directly;
- no mandatory top-level manager ceremony.

## Eval 27 - Direct specialist with unmet entry condition

Prompt: `Write a build-ready spec for an AI coach. We do not know the user problem or target.`

Expected:
- product-spec does not fabricate product decisions;
- flags unmet entry conditions and recommends discovery/research.

## Eval 28 - Handoff recommendations return to parent

Review -> discovery finds a risky assumption requiring a test.

Expected:
- discovery returns `product-experiment` as a handoff recommendation;
- review decides whether to invoke it;
- discovery does not create an uncontrolled nested chain.

## Eval 29 - Stop when decision is sufficient

A small reversible copy change has clear behavior and measurement.

Expected:
- system stops after enough specification/implementation context;
- no extra research/experiment calls for completeness.

## Eval 30 - Conflicting specialists

Scope says remove feature X; metrics shows X strongly drives validated core outcome.

Expected:
- parent surfaces the conflict and evidence;
- does not average opinions;
- resolves using product outcome, evidence strength, constraints, and causal reasoning.

## Eval 31 - AI benchmark vs product outcome

Model eval improves while task completion and retention are flat.

Expected:
- system does not call this a product win;
- AI quality is treated as one layer of the causal chain.

## Eval 32 - Mobile quality as guardrail

New feature improves conversion but increases crash rate materially.

Expected:
- product-metrics treats crash as guardrail;
- product-review includes the trade-off/blocker in priority.

## Eval 33 - Accessibility finding without fake user evidence

Automated/static inspection finds a likely target-size failure.

Expected:
- report standards/inspection basis;
- do not claim disabled users failed the task unless observed.

## Eval 34 - Strategy change triggered by evidence

Research shows target segment fundamentally differs from strategy assumption.

Expected:
- research reports evidence;
- parent routes to strategy;
- research does not silently rewrite strategy itself.

## Eval 35 - One final backlog

Full review uses five specialists.

Expected:
- final response is one prioritized Product Improvement Backlog with dependencies and evidence;
- not five appended specialist reports.

## Eval 36 - Full product review uses bounded domain suites

Prompt: `Run a full product review of this mobile habit app.`

Expected:
- `product-review` remains the sole active orchestrator;
- it may request bounded passes from `review-product-experience`, `review-behavioral-design`, or `review-mobile-application` when material;
- domain reviewers return scoped findings and do not produce competing final backlogs.

## Eval 37 - Direct UX review stays in the UX suite

Prompt: `Audit the UX and accessibility of these checkout journeys.`

Expected:
- route directly to `review-product-experience`;
- do not add product-strategy or portfolio analysis unless a discovered dependency is returned to the user or active parent.

## Eval 38 - Product measurement vs controlled-experiment depth

Prompt: `Build our activation, retention, and instrumentation system, including an A/B scorecard.`

Expected:
- `product-metrics` owns the overall measurement system;
- `define-product-metrics-experiments` may answer a bounded controlled-experiment design question;
- one metric model and decision contract are returned.

## Eval 39 - Release boundary vs story mapping

Prompt: `Map the journey and decide what belongs in V1.`

Expected:
- `map-product-scope` may create the story map and candidate slices;
- `mvp-scope` owns the final in/out release boundary;
- neither silently reopens settled product direction.

## Eval 40 - Product behavior before engineering plan

Prompt: `Turn this approved feature into a build plan.`

Expected:
- unresolved product semantics route to `product-spec` first;
- once behavior is sufficiently resolved, `plan-feature-change` owns technical sequencing, rollout, and verification;
- the engineering plan does not invent product behavior.

## Eval 41 - No cross-suite review recursion

Context: `product-review` requests a bounded mobile-engineering pass.

Expected:
- `review-mobile-application` returns only the requested findings;
- it does not invoke `product-review` or claim global priority;
- handoff recommendations return to `product-review`.
