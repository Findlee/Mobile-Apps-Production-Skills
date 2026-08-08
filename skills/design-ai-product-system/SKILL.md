---
name: design-ai-product-system
description: Design and specify a user-facing product or workflow built with foundation models, generative AI, RAG, multimodal models, copilots, chat, or agents. Use when deciding whether AI adds unique value, defining human/AI roles and autonomy, setting usefulness thresholds, designing AI interaction and failure recovery, creating evaluation criteria and datasets, planning feedback, guardrails, observability, cost/latency, model or prompt changes, or production readiness. Do not use for generic product flows with no AI behavior or for model-training theory without a product decision.
---

# Design AI Product System

Design capability, experience, evaluation, and operations as one product contract. A compelling demo is not production readiness.

## Orchestration safety

This skill may run directly or as a bounded specialist for `product-manager`, `product-review`, or a domain reviewer. When invoked by a parent:

- answer only the bounded AI-system question and reuse its evidence, decisions, and constraints;
- do not re-enter the parent or create a competing global backlog;
- return unresolved product, UX, behavioral, legal, security, or engineering dependencies as handoff recommendations;
- stop when the AI uncertainty is resolved enough for the parent's decision.

Only one orchestrator owns final synthesis and priority.

## Core rules

1. Confirm distinct AI value before choosing a model or pattern.
2. Define user and business outcomes independently from model benchmarks.
3. Treat output as probabilistic, fallible, and context-dependent.
4. Start with the simplest architecture and lowest safe autonomy that can prove value.
5. Evaluate task success and every consequential component separately.
6. Define good, degraded, unsafe, and out-of-scope behavior with rubrics and examples.
7. Set usefulness, safety, cost, and latency gates before broad exposure.
8. Design uncertainty, correction, retry, cancellation, fallback, and escalation into the experience.
9. Require confirmation before consequential write actions unless an authorized bounded automation contract supports otherwise.
10. Version prompts, models, context, retrieval, tools, policies, datasets, evaluators, and results together.
11. Feed privacy-reviewed production failures into evaluation.
12. Treat feedback as biased, incomplete, and privacy-sensitive—not ground truth.
13. Verify current models, provider capabilities, policies, costs, and laws from primary sources.
14. Do not use an AI judge as the sole authority for high-stakes correctness or safety.
15. Never present invented baselines, thresholds, sample sizes, accuracy targets, timelines, legal classifications, or compliance conclusions as facts. Derive them from evidence and accountable owners or label them provisional.

## Numeric discipline

Before presenting a numeric plan, separate user-supplied constraints from reviewer proposals. For every unsourced threshold, sample size, pilot size, duration, quota, accuracy target, or capacity number, either omit the number or label it `Provisional proposal` at its first occurrence and state who must calibrate it from which evidence. A planning heading or confident tone is not sufficient labeling.

## Route to references

- Read [ai-product-contract.md](references/ai-product-contract.md) for fit, roles, autonomy, and experience.
- Read [evaluation-system.md](references/evaluation-system.md) for criteria, rubrics, datasets, methods, and gates.
- Read [architecture-feedback-operations.md](references/architecture-feedback-operations.md) for RAG, agents, feedback, observability, versioning, cost, and latency.
- Read [ai-system-output.md](references/ai-system-output.md) for formal output.

## Workflow

### 1. Evaluate the use case

Define actor, task, current alternative, distinct value versus deterministic or human service, user/business outcomes, error/delay/unavailability/manipulation costs, build-buy-reuse-hybrid-no-AI options, product advantage, and assumptions vulnerable to provider change. Reject “we need AI” and feature parity as rationale.

### 2. Define the human-AI contract

Classify the capability as critical/complementary, reactive/proactive, shared/static or adaptive, and advisory/acting. Start with one of:

1. AI drafts; a qualified person decides.
2. AI handles bounded low-risk cases and escalates exceptions.
3. AI acts within limits with confirmation, undo, and monitoring.
4. Higher autonomy only after evidence supports tasks, slices, and controls.

Human review is not protection when the reviewer lacks time, competence, context, attention, or authority. Read [ai-product-contract.md](references/ai-product-contract.md).

### 3. Define usefulness

Connect task outcome/user value, AI quality, latency/effort/correction/abandonment/trust, and business/operational value. For every risk tier define minimum task quality, harmful-failure ceiling, latency, unit cost, and escalation capacity. If evidence is insufficient, give the calibration method and owner; label numbers provisional.

### 4. Design interaction and failure

Specify capability/limit communication, input/context/permission, sensitive-data warning, queued/generating/streaming/partial/complete/cancelled/failed/unavailable states, provenance or verification, edit/compare/regenerate/retry/report/undo/help, adversarial/ambiguous/low-confidence behavior, dependency fallback, and the visible difference between draft, recommendation, decision, and completed action. Preserve the user's task when AI fails.

### 5. Decompose the system

Map:

`input -> policy/preprocessing -> context/retrieval -> prompt/orchestration -> model -> tool/action -> postprocessing/guardrail -> user result -> feedback`

For each component identify contract, owner, version, failure, evaluation, latency, cost, logs, and privacy boundary. Add RAG, routing, cache, multiple models, agents, memory, or tool loops only for measured need.

### 6. Build evaluation

Use [evaluation-system.md](references/evaluation-system.md). Define end-to-end tasks and component checkpoints, criteria and unacceptable behavior, anchored rubrics, production-shaped data and high-risk slices, deterministic/model/human/behavioral methods, usefulness/release gates, regression/red-team/cost/latency checks, and evaluator calibration. Prefer task completion over response preference.

### 7. Design data and feedback

Specify data entering prompts, retrieval, logs, analytics, personalization, and training. Define authority, minimization, retention, deletion, access, security, and provider boundaries. Use workflow signals only with documented meaning. Analyze selection, exposure, position, preference, language, leniency, recency, and survivorship bias. Prevent degenerate feedback loops.

### 8. Define guardrails and actions

Layer scope/policy rules, grounding, permission/tool boundaries, rate/spend/action limits, preview/confirmation, idempotency/undo/rollback/audit, refusal/escalation, incident response, and kill switch. Evaluate false positives as well as false negatives.

### 9. Plan operations and change

Use [architecture-feedback-operations.md](references/architecture-feedback-operations.md). Tie monitoring to known failures. Define logs/traces, alerts, owners, escalation, rollback, provider fallback, incident response, and regression evaluation before any model, prompt, tool, policy, context, or retrieval change.

### 10. Stage release

Progress from internal or expert-supervised use to bounded users/tasks and broader autonomy only when gates hold. Use safe data, feature flags, exposure controls, monitoring, and rollback. Remove prototype shortcuts, broad permissions, and debug logging before production.

## Output contract

Start with a short **Numeric provenance** note that separates numbers supplied by the user from provisional recommendations. If no new numeric recommendation is needed, say so. Do not hide provisional numbers inside tables or phase headings.

Deliver:

1. use case, alternatives, and distinct AI value;
2. human-AI contract and autonomy;
3. task outcomes and usefulness gates;
4. interaction and failure specification;
5. component/data-flow map;
6. evaluation criteria, rubrics, datasets, methods, and gates;
7. data, feedback, privacy, and guardrails;
8. monitoring, incidents, versioning, and maintenance;
9. staged release, unknowns, and next evidence step.

Use [ai-system-output.md](references/ai-system-output.md).

## Completion gate

- AI is justified against simpler alternatives.
- Human responsibility and autonomy boundaries are explicit.
- Usefulness connects AI quality to task/business outcomes.
- Failure/recovery behavior is specified.
- Components and tasks are independently evaluable.
- Rubrics include examples and unacceptable behavior.
- Data represents production and material slices.
- Feedback authority, bias, retention, and deletion are defined.
- Consequential actions have proportionate confirmation and recovery.
- Monitoring feeds evaluation and rollback is planned.
