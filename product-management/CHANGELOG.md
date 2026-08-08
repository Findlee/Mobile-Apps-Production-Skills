# Changelog

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
