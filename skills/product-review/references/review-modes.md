# Product Review Modes

## Contents

1. Mode selection
2. Quick review
3. Full review
4. Focused review
5. Pre-release review
6. Post-launch review
7. Artifact review
8. Common focused patterns

## 1. Mode selection

Choose the narrowest mode that supports the user's decision. Mode controls depth, not evidence standards.

If several modes appear relevant, prioritize the immediate decision. For example, review a PRD as an artifact unless the user explicitly asks for the whole product to be audited.

Do not use `FULL REVIEW` merely because many artifacts are available.

## 2. Quick review

Use for a fast product health check.

Focus on:

- value proposition and core journey;
- obvious experience friction and missing recovery;
- obvious scope or complexity problems;
- measurement gaps;
- visible platform, reliability, privacy, or AI risks;
- the few actions most likely to change the outcome.

Return a compact verdict and the top material actions. Do not expand into every specialist workflow or a large scorecard.

## 3. Full review

Use for a comprehensive audit of a product, project, or product/business performance.

Cover, when relevant:

- strategy and positioning;
- customer/problem evidence;
- opportunity and solution quality;
- core journeys and experience quality;
- assumptions, discovery, and experimentation;
- scope and product behavior;
- measurement, activation, retention, and lifecycle;
- accessibility and mobile/platform quality;
- AI-system quality and risk;
- product operating model and learning system.

Run only the deep dives that could change the diagnosis. A full review still needs a short prioritized backlog, not equally weighted commentary on every dimension.

## 4. Focused review

Use when the user names one area such as onboarding, activation, retention, monetization, an AI assistant, analytics, a product spec, or a single feature.

Inspect the target deeply and check only adjacent dependencies that can materially change the recommendation.

Examples:

- for onboarding, inspect first value and activation measurement, not the whole portfolio;
- for retention, verify activation and the recurring-value event before proposing habit mechanics;
- for pricing, inspect value exposure, entitlement lifecycle, and measurement before broad strategy;
- for AI, inspect the task, autonomy, evals, guardrails, fallback, and product outcome.

## 5. Pre-release review

Use before store submission, production rollout, or a major feature launch.

Focus on:

- complete core and recovery journeys;
- unresolved product semantics;
- loading, empty, error, interrupted, permission, entitlement, and degraded states;
- analytics and experiment exposure;
- success metrics and guardrails;
- privacy, consent, accessibility, and platform behavior;
- performance/stability evidence;
- rollout, rollback, feature flags, support, and incident ownership;
- AI eval and guardrail coverage when applicable.

Return:

- `RELEASE STATUS`;
- `BLOCKERS`;
- `HIGH-RISK NON-BLOCKERS`;
- `REQUIRED VERIFICATION`;
- `POST-RELEASE MONITORING`.

Use one status:

- `READY`;
- `READY WITH KNOWN RISKS`;
- `NOT READY`;
- `INSUFFICIENT EVIDENCE`.

Do not assign a schedule unless it is supplied or explicitly provisional.

## 6. Post-launch review

Use after a release when performance, customer behavior, or product quality is being evaluated.

Check:

- whether intended behavior actually shipped;
- whether the primary outcome and guardrails moved;
- metric/event semantics and exposure integrity;
- segment and lifecycle differences;
- activation before diagnosing downstream retention;
- experiment trustworthiness before causal claims;
- support, review, incident, reliability, and AI-production signals;
- whether the original assumptions changed.

Return a next decision:

- continue;
- iterate;
- expand;
- reduce;
- rollback;
- stop;
- return to discovery.

Do not judge success from shipped output or a single aggregate metric.

## 7. Artifact review

Use for a PRD, product spec, roadmap, research plan, experiment plan, metrics plan, pitch, or similar product artifact.

Review the artifact against:

- its intended decision or handoff;
- the current product state;
- the appropriate source-of-truth boundary;
- its evidence and unresolved assumptions;
- the behavior it must define at this stage.

Do not penalize a lightweight artifact for information that deliberately lives in another accessible source of truth. Do not treat unspecified runtime behavior as an observed defect.

## 8. Common focused patterns

### Onboarding and activation

Inspect:

- target user and entry context;
- promise before commitment;
- pre-value steps and permissions;
- first meaningful value state;
- unnecessary setup or education;
- interruption and return;
- activation-event semantics;
- differences between completion and actual value.

### Paywall and monetization

Inspect:

- value experienced before the offer;
- offer and audience clarity;
- price, billing interval, trial, renewal, and cancellation;
- purchase, pending, failed, restored, expired, refunded, and revoked states;
- entitlement consistency across devices/accounts;
- conversion guardrails such as refunds, support, opt-outs, and retention.

### Retention

Inspect:

- recurring user value and natural usage interval;
- activation and value discovery;
- retention event semantics;
- new, current, resurrected, dormant, and churned segments;
- cohort and denominator quality;
- whether proposed habit mechanics serve the user's goal;
- whether the bottleneck occurs earlier than retention.

### AI feature

Inspect:

- why AI is better than deterministic alternatives;
- task and human-control contract;
- context, tools, RAG, agents, and external actions;
- task-specific evals and representative cases;
- guardrails, fallback, escalation, and correction;
- latency, cost, observability, incidents, and provider/model changes;
- user-task and product outcomes beyond model metrics.

Use a bounded `design-ai-product-system` pass when system-level readiness could change the decision.

### Analytics

Inspect:

- metric meaning before dashboards;
- event semantics and properties;
- attempted, succeeded, failed, and abandoned states;
- identity, attribution, time windows, and denominators;
- activation, retention, lifecycle, and guardrails;
- experiment assignment and exposure where relevant;
- decisions each metric can and cannot support.

### Product specification

Inspect:

- approved scope and non-goals;
- actors, journeys, rules, states, and transitions;
- permissions, entitlements, failures, and recovery;
- external dependencies and operational ownership;
- analytics semantics;
- acceptance criteria tied to product behavior;
- unresolved decisions that a coding agent might otherwise invent.
