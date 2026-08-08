# Architecture, Feedback, and Operations

## Contents

1. Component map
2. Complexity
3. Feedback
4. Observability
5. Change

## 1. Component map

| Component | Purpose | Input/output | Version | Failure | Evaluation | Latency/cost | Data boundary |
|---|---|---|---|---|---|---|---|

Consider preprocessing, policy, retrieval, context assembly, prompt, model, router, memory, tools, executor, parser, guardrails, cache, UI, logging, and feedback.

## 2. Complexity

- Add RAG only for necessary current/private context with evaluated retrieval.
- Add routing/gateway for access, fallback, model choice, spend, or centralized policy.
- Cache with explicit freshness/identity boundaries.
- Add agents only when variable planning/tool use creates measured value.
- Grant write tools narrowly with destination/parameter validation.
- Prefer deterministic code for reliable rules/calculations.

Every component needs failure behavior, evaluation, observability, and ownership.

## 3. Feedback

Collect workflow-aligned accept/edit/retry/regenerate/undo/send/complete/abandon/correction/escalation signals. Explain whether they affect current result, personalization, analytics, evaluation, support, or training. Inspect selection, exposure, position, preference, language, recency, and survivorship bias.

## 4. Observability

Track task/component, structure, grounding, retrieval, tool, harmful-output, refusal, privacy, guardrail, correction, cancellation, escalation, latency, cost, availability, rate-limit, fallback, version, and slice signals. Minimize sensitive logs; define access, retention, deletion, detection, response, and rollback. Add privacy-reviewed production failures to regression data.

## 5. Change

Version model/provider/settings, prompts, retrieval corpus/embedding/ranker/chunking, tools/schemas/permissions, policy, guardrails/evaluators, datasets/rubrics/gates/results. Run regression, slice/safety, cost, and latency checks before bounded exposure with monitoring and rollback.
