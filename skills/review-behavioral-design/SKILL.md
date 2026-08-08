---
name: review-behavioral-design
description: Conduct an evidence-aware behavioral-design review of an existing app, website, product, service, flow, codebase, prototype, decision system, experiment, or project and return a prioritized improvement backlog. Use when asked for a full behavioral audit, product review through behavioral science, conversion or retention review, onboarding review, ethical engagement review, incentive review, decision-quality review, or an assessment of what should be improved. Orchestrates companion skills for behavior change, barriers, choice architecture, healthy habits, incentives, judgment quality, ethics, experimentation, and scale while avoiding irrelevant frameworks.
---

# Review Behavioral Design

Review the existing experience without modifying it unless the user separately asks for implementation. Produce one coherent diagnosis and improvement plan rather than a stack of disconnected specialist reports.

## Resolve the companion skills

Use these package skills as specialist passes:

1. `$design-behavior-change`
2. `$diagnose-behavior-barriers`
3. `$design-choice-architecture`
4. `$design-healthy-habit-loop`
5. `$design-behavioral-incentives`
6. `$audit-decision-quality`
7. `$audit-behavioral-ethics`
8. `$design-behavior-experiments`
9. `$assess-intervention-scale`

Invoke a registered companion skill when the agent supports skill invocation. Otherwise, load its `SKILL.md` from the sibling directory `../<skill-name>/SKILL.md`. Load references only when directed by that skill. If a companion is unavailable, mark the pass as skipped and state the resulting coverage gap; do not silently simulate a complete audit.

Do not load every specialist at once. Apply them sequentially and only to relevant evidence and journeys. Ethics is mandatory. Incentive, decision-quality, habit, and scale passes require the routing conditions below.

## Establish review scope

Read [review-protocol.md](references/review-protocol.md) before a full review.

1. Identify the product, affected users, business model, lifecycle stage, and claimed user value.
2. Inventory available evidence: product documentation, source code, routes, screens, screenshots, copy, analytics events, prior experiments, research, support data, billing, consent, notifications, and cancellation.
3. Select three to five critical journeys that determine whether users obtain value. Include entry and exit when relevant.
4. State exclusions and missing evidence.
5. Treat the request as read-only. Run only safe diagnostics, builds, previews, or tests needed to inspect the project.

If the project is large, prioritize breadth across critical journeys before depth in peripheral features.

## Run the specialist passes

### 1. Frame value and behavior

Apply `$design-behavior-change` to define actor, user-valued outcome, organizational objective, target behaviors, and behavioral maps. Do not redesign the product during this pass.

### 2. Diagnose barriers

Apply `$diagnose-behavior-barriers` to each critical journey. Locate the first consequential failure, current competing behavior, supporting evidence, alternative explanation, and confidence.

### 3. Audit choices

Apply `$design-choice-architecture` to consequential decisions, pricing, permissions, consent, defaults, recommendations, settings, errors, cancellation, and complex option sets. Skip irrelevant screens that contain no meaningful choice.

### 4. Evaluate repetition

Apply `$design-healthy-habit-loop` only when recurring behavior is necessary for recurring user value. First run its habit gate. Review prompts, ability, reward, stored value, stopping cues, interruption recovery, and compulsion risks. Do not recommend habit formation for rare or high-stakes decisions.

### 5. Audit incentives when present

Apply `$design-behavioral-incentives` when rewards, penalties, points, streaks, referrals, pricing, quotas, commissions, rankings, or team metrics shape behavior. Compare stated goals with the behavior the metric actually rewards. Otherwise mark the pass not applicable.

### 6. Audit judgment systems when present

Apply `$audit-decision-quality` when the product or operating process repeatedly rates, ranks, approves, moderates, predicts, triages, or reviews comparable cases, including AI-assisted judgments. Check scales, information sequence, independence, aggregation, overrides, and evidence of noise. Otherwise mark the pass not applicable.

### 7. Audit ethics

Apply `$audit-behavioral-ethics` to the complete set of findings. This pass is mandatory. Identify bright-line failures, vulnerable groups, incentive conflicts, friction asymmetry, privacy risks, and welfare metrics.

### 8. Audit measurement

Apply `$design-behavior-experiments` to determine whether current instrumentation can validate the main diagnoses and recommendations. Identify outcome, behavior, mechanism, guardrail, and business metrics. Propose experiments only after the recommended change is clear.

### 9. Assess transfer and scale when claimed

Apply `$assess-intervention-scale` when the project is copying external evidence, expanding a pilot or experiment, entering a new population or context, or preparing broad rollout. Check false positives, audience mismatch, unscalable delivery ingredients, spillovers, marginal cost, conflicting consequences, and last-yard fit. Otherwise mark the pass not applicable.

## Synthesize findings

Read [finding-rubric.md](references/finding-rubric.md).

Merge findings that share one root cause. Preserve disagreements between specialist passes as explicit trade-offs. For example, lowering friction may increase action while weakening informed consent; do not average that conflict away.

Every finding must include:

- journey and exact location: screen, route, component, file and line, event, or process step;
- observed evidence;
- diagnosis and mechanism;
- affected user outcome;
- reach, severity, confidence, and ethical risk;
- recommended change;
- expected behavior change;
- validation metric or evidence needed;
- priority and dependencies;
- transfer and scale risk when the recommendation would expand exposure.

Do not fabricate analytics, user intent, prevalence, or causal certainty. Label inference and unknowns.

## Deliver one review report

Use the user's language and return:

1. **Executive verdict:** the largest obstacle to user value and the most important next action
2. **Scope and evidence:** artifacts reviewed, journeys covered, missing evidence, skipped passes
3. **Behavioral model:** actors, outcomes, target behaviors, and critical journey map
4. **Prioritized findings:** one deduplicated table ordered P0 to P3
5. **Journey details:** evidence, diagnosis, recommendation, and trade-offs
6. **Ethical blockers:** bright-line failures and required changes before launch
7. **Measurement gaps:** missing events, outcomes, guardrails, and data bridge
8. **Action plan:** now, next, later, and research-before-building
9. **Experiment backlog:** minimal tests tied to the highest-value uncertainties
10. **Scale readiness:** adaptations, stage gates, and stop conditions when relevant
11. **Open decisions:** choices requiring product, legal, research, or stakeholder input

Lead with findings, not framework names. Make the report implementable while keeping design recommendations distinct from actual code changes.
