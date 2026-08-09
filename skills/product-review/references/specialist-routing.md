# Product Review Specialist Routing

## Contents

1. Runtime rules
2. Product Management specialists
3. Domain review suites
4. Bounded-call contract
5. Specialist-return contract
6. Consolidation and fallback

## 1. Runtime rules

Use the repository-level [orchestration contract](../../../product-management/ORCHESTRATION.md) and [boundary map](../../../product-management/BOUNDARIES.md) as the source of truth when available.

`product-review` remains the only active orchestrator. It owns global diagnosis, deduplication, priority, and the final Product Improvement Backlog.

Rules:

- do not run every specialist mechanically;
- invoke a specialist only when its answer could change the decision or priority;
- pass one bounded question and shared context;
- do not let a child silently widen scope;
- do not let a child invoke the parent or produce a competing backlog;
- preserve evidence status and established decisions across handoffs;
- load references lazily;
- treat a child's handoff recommendation as input for the parent, not automatic recursion.

## 2. Product Management specialists

### `product-strategy`

Use when target market, value proposition, outcomes, differentiation, strategic trade-offs, initiatives, portfolio fit, or non-goals could change priority.

### `customer-research`

Use when customer context is weak, behavioral data needs explanation, supplied qualitative evidence needs disciplined synthesis, or the next decision requires customer evidence rather than building.

### `product-discovery`

Use when an outcome exists but the opportunity/solution space is weak, the team fixed on one solution too early, or a broad improvement request needs problem decomposition.

### `product-experiment`

Use when a high-risk assumption is identifiable and a small credible evidence step could prevent unnecessary commitment. This skill owns product hypothesis and learning-method choice, not controlled-experiment statistics.

### `mvp-scope`

Use when release breadth, date/scope conflict, optional complexity, future-proofing, or an incoherent slice is the main constraint. This skill owns inclusion/exclusion.

### `product-spec`

Use when behavior, states, rules, permissions, entitlements, failures, recovery, or acceptance is ambiguous and an implementation agent might invent semantics.

### `product-metrics`

Use when outcome, activation, retention, event semantics, instrumentation, experiment trust, cohort analysis, or post-launch quantitative interpretation could change the decision.

### `design-ai-product-system`

Use when any of these could change readiness:

- AI value versus a simpler approach;
- autonomy or consequential actions;
- RAG, agents, tools, routing, memory, providers, or caching;
- task-specific evals and regression coverage;
- data, feedback, guardrails, observability, incidents, cost/latency, versioning, rollout, or rollback.

Ask for a bounded AI-system assessment and candidate findings. The specialist does not own the parent product's global priority.

### `operate-product-team`

Use when operating behavior is a causal constraint, not merely a symptom:

- unclear charter or outcomes;
- insufficient decision rights or cross-functional competence;
- blocked customer/data access;
- stakeholder commitments preventing evidence-based choices;
- discovery/delivery cadence or ownership limiting learning;
- unclear ownership of AI evals, guardrails, rollout, or incidents.

Ask for an evidence-based team assessment. Do not infer individual performance or authorize organizational change.

## 3. Domain review suites

Use a suite coordinator rather than loading its specialists individually.

### `review-product-experience`

Request a bounded pass when UX/UI, accessibility, interaction, localization, consent, or design-system depth could change product priority.

Do not use it as a second full product/business audit.

### `review-behavioral-design`

Request a bounded pass when intentional behavior mechanisms, consequential choices, incentives, ethics, intervention evidence, or scale could change product priority.

A product outcome expressed as behavior does not automatically qualify. Use this suite when the product deliberately intervenes through reminders, defaults, streaks, rewards, commitments, coaching, friction, or environmental change.

### `review-mobile-application`

Request a bounded pass when Flutter/React Native engineering health, architecture, state/data flow, synchronization, native integration, testing, performance, or release engineering could change product priority.

It does not decide product strategy or final release scope.

## 4. Bounded-call contract

Use:

```text
ACTIVE ORCHESTRATOR:
product-review

BOUNDED QUESTION:
<one decision-relevant question>

SCOPE:
<included journey/system/team area>

EXCLUSIONS:
<areas the child must not audit>

SHARED CASE BRIEF:
<target, outcome, journey, product state>

EVIDENCE AVAILABLE:
<relevant sources and locations>

EVIDENCE UNAVAILABLE:
<material limitations>

DECISIONS ALREADY MADE:
<fixed or provisional decisions>

CONSTRAINTS AND AUTHORITY:
<technical, policy, business, review-only limits>

RETURN:
- candidate findings
- supporting basis
- confidence and limitations
- recommended action and verification
- handoff recommendations, if any
```

Do not ask a child to reconstruct the entire product or repeat settled questions.

## 5. Specialist-return contract

Require:

```text
SPECIALIST FINDINGS
1. <candidate finding>

EVIDENCE / BASIS
- <observed, evidence, inference, assumption, unknown>

CONFIDENCE / LIMITATIONS
- <what supports or could change the finding>

RECOMMENDED ACTION / VERIFICATION
- <bounded next action>

HANDOFF RECOMMENDATIONS
- <optional recommendation returned to product-review> or NONE
```

Any suggested threshold, sample size, duration, capacity allocation, quota, or target must be traceable to supplied evidence or labeled `PROVISIONAL PROPOSAL` with calibration owner and evidence source.

## 6. Consolidation and fallback

Merge candidate findings when:

- the same root condition creates several symptoms;
- several lenses recommend the same underlying decision;
- one action or evidence step resolves the combined issue.

Split when:

- owners, permissions, fixes, or verification differ;
- one item is an observed defect and another an evidence gap;
- one blocks release and another is later optimization;
- recommendations can be accepted independently.

When specialists disagree, record the conflict, evidence on each side, deciding principle, decision owner, and residual uncertainty.

When a selected specialist is unavailable:

1. record `UNAVAILABLE` and the reason in coverage;
2. use the matching lightweight health-scan section;
3. narrow confidence if specialist depth could change the conclusion;
4. do not claim the specialist ran;
5. continue the audit when useful work remains.
