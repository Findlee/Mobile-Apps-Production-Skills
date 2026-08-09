# Product Health Scan

## Contents

1. Using the scan
2. Strategy and positioning
3. Customer/problem evidence
4. Opportunity and solution quality
5. Core experience and value delivery
6. Assumption and discovery risk
7. Scope and complexity
8. Product behavior and specification
9. Metrics and instrumentation
10. Experimentation quality
11. Retention and lifecycle
12. Mobile/platform quality
13. Accessibility
14. AI product quality
15. Operating model and learning system

## 1. Using the scan

Evaluate only dimensions that could affect the requested decision. Use the scan to identify likely causal constraints and decide whether a bounded specialist pass is worthwhile.

Classify each selected dimension:

- `HEALTHY` - no material issue found in inspected scope;
- `WATCH` - possible issue or moderate weakness;
- `WEAK` - material issue supported by evidence or strong inspection;
- `BLOCKER` - issue can prevent safe/viable release or invalidate the decision;
- `UNKNOWN` - evidence insufficient.

Add `HIGH`, `MEDIUM`, or `LOW` confidence. Do not average statuses or convert them into percentages.

## 2. Strategy and positioning

Check:

- specific target customer and context;
- important problem/opportunity;
- value proposition beyond a feature inventory;
- relevant alternatives and differentiation;
- user, product, and business outcomes;
- strategic trade-offs, principles, and non-goals;
- consistency between stated strategy and actual product behavior.

Red flags include "for everyone", feature-list strategy, incompatible priority segments, competitor copying without rationale, and success defined only as shipping.

Use `product-strategy` when ambiguity here could change downstream priority.

## 3. Customer/problem evidence

Check:

- evidence for context, severity, frequency, workarounds, and desired progress where needed;
- representation of target users, buyers, and economic buyers;
- direct customer exposure proportional to uncertainty;
- source, segment, recency, method, and limitations;
- observed behavior separated from stated preference and team interpretation;
- contradictory evidence retained.

Red flags include fictional personas as evidence, future-intent questions as proof, one loud customer defining the roadmap, and review/support data treated as representative prevalence.

Use `customer-research` when customer context is the next material unknown.

## 4. Opportunity and solution quality

Check:

- opportunity expressed as a customer need, pain, or desire rather than a feature;
- plausible causal link from solution to outcome;
- alternatives considered for novel or high-stakes problems;
- standard patterns used for solved, non-differentiating problems;
- solution not overfit to one anecdote;
- commitment proportional to evidence strength.

Red flags include request-to-build with no problem framing, cosmetic variants counted as alternative mechanisms, and large fixed solutions before opportunity clarity.

Use `product-discovery` when opportunity or solution direction could change.

## 5. Core experience and value delivery

Trace the full path to value, not only screens.

Check:

- promise and value understandable early enough;
- unnecessary work removed before first value;
- clear actions, consequences, status, and feedback;
- navigation and information structure aligned to the user's task;
- complete ideal, empty, partial, loading, error, interrupted, permission, and recovery states;
- preserved work, correction, cancellation, reversal, deletion, refund, and exit where relevant;
- downstream handoffs, support, notifications, moderation, and operations;
- useful efficiency for returning or expert users.

Heuristic inspection is `INFERENCE` unless corroborated. Request a bounded `review-product-experience` pass when deep experience-quality analysis could change priority.

## 6. Assumption and discovery risk

Check solution-critical assumptions across:

- desirability;
- usability;
- viability;
- feasibility;
- ethics and harm;
- data and privacy;
- operational dependencies.

Ask what must be true, which assumptions are important and weakly supported, and whether implementation commitment increased before risk decreased.

Use `product-experiment` when a targeted evidence step can prevent unnecessary commitment. Do not let a failed solution invalidate a supported opportunity automatically.

## 7. Scope and complexity

Check:

- coherent end-to-end value or learning slice;
- explicit outcome, non-goals, and release boundary;
- optional depth separated from required behavior;
- manual paths considered before expensive automation;
- speculative scale or architecture not creating current product complexity;
- each must-have surviving a removal test;
- quality floor preserved after reduction.

Classify material scope as `KEEP`, `SIMPLIFY`, `REMOVE`, `DEFER`, or `VALIDATE BEFORE BUILDING`.

Use `mvp-scope` when inclusion/exclusion is the main decision.

## 8. Product behavior and specification

Check:

- current and target behavior;
- actors, journeys, states, transitions, and business rules;
- permissions, entitlements, destructive actions, and lifecycle behavior;
- failures, recovery, concurrency, retries, and idempotency;
- external dependencies and operational ownership;
- event semantics and acceptance criteria;
- unresolved product decisions clearly exposed;
- implementation detail not masquerading as product requirement without need.

Use `product-spec` when a delivery agent could otherwise invent product semantics.

## 9. Metrics and instrumentation

Check:

- success described in words before metrics;
- business goal, product outcome, drivers, and guardrails distinguished;
- activation representing first meaningful value;
- retention event and interval representing recurring value;
- metric not obviously gameable;
- baseline, segmentation, and denominator available where needed;
- attempted, succeeded, failed, abandoned, and exposure states distinguishable;
- event identity, properties, timing, and attribution coherent;
- each metric connected to a decision.

Use `product-metrics` when measurement weakness blocks interpretation or learning.

## 10. Experimentation quality

When causal claims depend on an experiment, check:

- prior hypothesis, decision, primary metric, and guardrails;
- appropriate assignment and analysis unit;
- trustworthy exposure and instrumentation;
- sample-ratio and equivalent validity checks;
- practical effect, uncertainty, MDE/power assumptions where applicable;
- stopping rule and multiple comparisons;
- segment analysis not mined post hoc for a winner;
- connection to product outcome rather than a local click.

Load [experimentation.md](experimentation.md). Use `product-metrics` for quantitative trust and `product-experiment` for product hypothesis and learning-method choice.

## 11. Retention and lifecycle

Check:

- recurring value and natural usage interval;
- activation, value discovery, and repeat value separated;
- new, current, resurrected, dormant, and churned users distinguished when useful;
- cohort definitions and denominators;
- winback assessed on post-return value rather than opens;
- notification, streak, reward, or incentive mechanics aligned with user benefit and agency;
- the earliest causal bottleneck addressed before downstream retention tactics.

Do not impose daily retention on an episodic product. Request a bounded `review-behavioral-design` pass when intervention mechanisms or ethical consequences are material.

## 12. Mobile/platform quality

Apply for native or hybrid mobile products.

Check:

- platform expectations and adaptive layouts;
- navigation, back behavior, state restoration, app lifecycle, and deep links;
- interruptions, process death, offline behavior, and synchronization;
- permissions and graceful denial/revocation;
- notifications;
- purchase, subscription, restore, refund, expiry, and entitlement lifecycle;
- performance, startup, crashes, ANRs, responsiveness, and degraded services;
- accessibility and store promise versus in-app behavior;
- rollout and recovery.

Load [mobile-app.md](../lenses/mobile-app.md), [ios-quality.md](ios-quality.md), and [android-quality.md](android-quality.md) selectively. Request `review-mobile-application` when Flutter/React Native implementation health could change global priority.

## 13. Accessibility

Check accessibility as functional product quality:

- semantics, names, roles, values, and states;
- keyboard and focus behavior where applicable;
- text scaling, reflow, contrast, and non-color cues;
- touch target and alternatives to gestures;
- screen reader, switch, voice, and alternative input;
- reduced motion, captions, and media alternatives;
- clear errors, instructions, and accessible authentication;
- representative assistive-technology testing.

Load [accessibility.md](accessibility.md) and current platform guidance. Prioritize by affected task and consequence, not cosmetic preference.

## 14. AI product quality

Apply when AI generates, retrieves, recommends, ranks, predicts, communicates, or acts.

Check separately:

### Product value

- Why is AI needed for this job?
- Is a deterministic approach safer, cheaper, or sufficient?
- Does AI improve user-task and product outcomes rather than only model scores?

### System behavior

- input/context and data quality;
- RAG, agents, tools, routing, memory, and provider complexity;
- factuality, grounding, structured output, consistency, correction, and uncertainty;
- permissions, confirmation, idempotency, rollback, fallback, and escalation;
- latency, cost, availability, and degraded behavior.

### Evaluation and operations

- task-specific eval objectives and representative cases;
- typical, edge, adversarial, subgroup, and language coverage;
- calibrated graders and human review;
- environment outcomes for agent actions;
- regression evals for model/prompt/tool changes;
- feedback, observability, incidents, versioning, staged rollout, and rollback.

### Risk and trust

- confabulation and information integrity;
- privacy, data leakage, security/tool misuse, and provenance;
- harmful bias and uneven performance;
- over-reliance, automation bias, and unclear responsibility;
- consequential actions without accountable human control.

Load [ai-product.md](../lenses/ai-product.md). Request `design-ai-product-system` when architecture, autonomy, evals, guardrails, feedback, observability, or rollout could change readiness.

## 15. Operating model and learning system

Check whether the team can turn evidence into better decisions:

- clear outcomes and strategic context;
- cross-functional competence and real decision rights;
- direct customer and data access;
- discovery and delivery connected but not conflated;
- commitments state outcomes, constraints, and decision points rather than only fixed features;
- shipping triggers measurement, interpretation, and a next decision;
- research, experiment, incident, and production learning is retained;
- ownership exists for metrics, AI evals, guardrails, rollout, and incidents;
- dependencies and stakeholder involvement do not silently remove team agency.

A common red flag is:

`idea -> build -> ship -> next idea`

with no meaningful:

`expectation -> measure -> learn -> decision`

Use `operate-product-team` only when operating conditions are a causal constraint or the requested decision concerns the operating model. Keep organizational constraints distinct from product defects and recommendations within the user's authority.
