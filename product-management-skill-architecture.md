# Product Management Skill Architecture

## Purpose

This suite turns product strategy, discovery, research, experimentation, scoping, specification, measurement, and review into reusable decision workflows for AI agents. It is organized around product decisions rather than individual books or frameworks.

The suite complements the repository's UX/UI, behavioral-design, and mobile-engineering suites. It does not replace their specialist depth.

## Skills

| Skill | Primary responsibility |
|---|---|
| `product-manager` | Default router for ordinary product work and the next decision-relevant workflow |
| `product-review` | Full product/business audit, causal synthesis, priority, and one Product Improvement Backlog |
| `product-strategy` | Target customer, value proposition, outcomes, strategic choices, principles, and non-goals |
| `product-discovery` | Opportunity and solution-direction decisions |
| `customer-research` | Qualitative customer-evidence design, collection, traceability, and synthesis |
| `product-experiment` | Risky-assumption selection and the smallest credible learning method |
| `mvp-scope` | Final release boundary and the smallest coherent slice |
| `product-spec` | Implementation-ready product behavior inside approved scope |
| `product-metrics` | Product measurement system, instrumentation, retention, experiment measurement, and post-launch interpretation |

## Entry points

Use `product-manager` for ordinary product work:

```text
product request
-> identify current product state and highest-risk unknown
-> invoke one bounded specialist when needed
-> make the decision
-> scope/specify/deliver/measure proportionally
```

Use `product-review` for an end-to-end product/business audit:

```text
full product review
-> Evidence Coverage Map
-> Current Product Model
-> Core Journey
-> product health scan
-> bounded specialist or domain-suite passes only when material
-> causal synthesis and deduplication
-> one prioritized Product Improvement Backlog
```

Direct specialist invocation remains valid when the product question is already well framed.

## One active orchestrator

Only one skill owns global orchestration, final synthesis, and priority at a time.

- `product-manager` owns ordinary Product Management routing.
- `product-review` owns full product/business audit intent.
- `review-product-experience` owns directly requested UX/UI experience audits.
- `review-behavioral-design` owns directly requested behavioral-design audits.
- `review-mobile-application` owns directly requested Flutter/React Native engineering audits.

An active parent may request a **bounded suite pass** from another review coordinator. The child receives a scoped question and shared evidence, selects only relevant specialists, and returns findings to the parent. It does not create a second global backlog or recursively call the parent.

The complete runtime contract is in [`product-management/ORCHESTRATION.md`](product-management/ORCHESTRATION.md).

## Boundaries with existing skills

| Product Management owner | Existing supporting workflow | Resolution |
|---|---|---|
| `product-review` | `review-product-experience` | Product review owns global product/business synthesis; experience review supplies bounded UX/UI findings |
| `product-review` | `review-behavioral-design` | Behavioral review supplies bounded mechanism, ethics, intervention, and scale findings |
| `product-review` | `review-mobile-application` | Mobile review supplies bounded engineering-health and release-readiness findings |
| `product-metrics` | `define-product-metrics-experiments` | Product metrics owns the broad measurement system; existing skill supplies narrow controlled-experiment depth |
| `mvp-scope` | `map-product-scope` | Mapping supplies journey and candidate slices; MVP scope owns final inclusion/exclusion |
| `product-experiment` | `design-behavior-experiments` | Product experiment owns assumption and method choice; behavioral skill owns behavioral causal-test depth |
| `product-spec` | `plan-feature-change` | Product spec owns behavior; feature planning owns technical delivery sequence, rollout, and verification |

The detailed ownership map is in [`product-management/BOUNDARIES.md`](product-management/BOUNDARIES.md).

## Evidence model

Material claims use a shared epistemic model:

```text
FACT
OBSERVATION
EVIDENCE
INFERENCE
ASSUMPTION
HYPOTHESIS
CONSTRAINT
UNKNOWN
DECISION
RECOMMENDATION
```

A child skill cannot silently upgrade epistemic status. Self-report is not observation, inference is not fact, correlation is not causal evidence, a heuristic UX finding is not user research, and an AI-generated persona is not customer evidence.

See [`product-management/EVIDENCE-MODEL.md`](product-management/EVIDENCE-MODEL.md).

## Lazy loading

Do not preload all Product Management skills or every suite in the repository.

```text
orchestrator
-> one relevant specialist or bounded suite pass
-> optional second call only if it can change the decision
-> stop when the decision can be made responsibly
```

`product-review` retains its reference and lens layers for product-level screening. Load dynamic UX, mobile, experimentation, accessibility, analytics, and AI references only when relevant.

## Source and evaluation model

Each Product Management skill contains:

- `SKILL.md` for runtime workflow;
- `SOURCES.md` for source boundaries and references;
- `EVALS.md` for local scenarios;
- `agents/openai.yaml` for Codex-facing metadata.

Cross-skill routing, loop prevention, evidence handoffs, and repository-suite integration are evaluated in [`product-management/SYSTEM-EVALS.md`](product-management/SYSTEM-EVALS.md). The source books themselves are not included in the repository.

## Change discipline

When changing the suite:

1. identify or add a failing local/system eval;
2. update the narrowest owning skill;
3. check Product Management and repository-suite boundaries;
4. update source/reference material when guidance changes;
5. rerun structure, links, orchestration, security, and cross-skill checks.
