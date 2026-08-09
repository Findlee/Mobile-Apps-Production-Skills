# Changelog

## v1.2

Changed:

- consolidated the legacy portable `review-product-design` intent into the canonical `product-review` trigger and workflow instead of introducing a competing audit orchestrator;
- reduced the always-loaded `product-review/SKILL.md` and moved mode, artifact, health-scan, routing, severity, and output depth into lazy references;
- added one shared case brief, explicit review/testing/implementation authority, safe-inspection boundaries, and `Applied / Skipped / Unavailable` specialist coverage;
- added graceful fallback behavior for portable installations with missing specialists;
- added consistent report-language localization and stricter numeric provenance for thresholds, sample sizes, durations, quotas, targets, and impact estimates;
- added evals for canonical product-design review routing, safe inspection, missing specialists, shared context, localization, and provisional numeric guidance.

Resolved:

- duplicate full-audit ownership between `product-review` and the proposed `review-product-design` entry point;
- context cost caused by keeping the entire product-review playbook in the primary skill body;
- false claims that an unavailable specialist ran;
- exact-looking review schedules and sample sizes without calibration evidence.

## v1.1

Added:

- `design-ai-product-system` for the integrated AI product, autonomy, architecture, evaluation, feedback, guardrail, observability, incident, and staged-release contract;
- `operate-product-team` for evidence-based operating-model assessment, team charters, decision rights, cadence, stakeholder commitments, and bounded transition pilots;
- bounded routing from `product-manager` and `product-review` to both specialists;
- system evals for full AI-system design and product operating-model diagnosis.

Resolved:

- full AI-system ownership versus the interaction-level `design-human-ai-interactions` skill;
- product operating conditions versus product strategy, discovery, and review ownership;
- duplicate imports of existing strategy, experiment, behavior-design, specification, and review capabilities.

## v1.0

First system-level release after individual skill reviews.

Added:

- `ORCHESTRATION.md`
- `BOUNDARIES.md`
- `SYSTEM-EVALS.md`
- `CROSS-SKILL-AUDIT.md`
- orchestration-safety contract in every skill
- explicit ownership transfer from `product-manager` to `product-review`
- lazy-loading/context-budget rules
- read-only-by-default review behavior
- standardized bounded specialist calls and handoff recommendations

Resolved:

- recursive `product-review` / specialist routing risk
- double orchestration between manager and review
- `product-experiment` vs `product-metrics` A/B ownership overlap
- `product-discovery` vs `customer-research` evidence ownership overlap
- `mvp-scope` vs `product-spec` scope ownership overlap
- `product-strategy` vs `product-metrics` outcome/proxy drift

Repository integration:

- added Codex `agents/openai.yaml` metadata for all nine Product Management skills;
- defined bounded handoffs to the existing UX/UI, behavioral-design, and mobile-engineering review suites;
- resolved boundaries with `define-product-metrics-experiments`, `map-product-scope`, `design-behavior-experiments`, and `plan-feature-change`;
- preserved one active orchestrator across suite boundaries.
