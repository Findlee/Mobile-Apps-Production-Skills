# Skill Boundary Map

Use this map to choose one owner for each product question and avoid duplicate work.

| Question | Primary owner | Common supporting skill | Not the owner |
|---|---|---|---|
| Who are we serving and why? | `product-strategy` | `customer-research` | `product-spec` |
| What outcome should change? | `product-strategy` | `product-metrics` | `mvp-scope` |
| What is happening to customers today? | `customer-research` | `product-discovery` | `product-experiment` |
| Which opportunity should we pursue? | `product-discovery` | `customer-research` | `mvp-scope` |
| Which solution direction deserves more commitment? | `product-discovery` | `product-experiment` | `product-spec` |
| What must be true for this solution to work? | `product-experiment` | `product-discovery` | `product-spec` |
| What is the cheapest credible learning method? | `product-experiment` | `customer-research`, `product-metrics` | `mvp-scope` |
| What goes in V1 / this release? | `mvp-scope` | `product-experiment` | `product-spec` |
| How exactly must approved behavior work? | `product-spec` | `product-metrics` | `product-discovery` |
| What events/metrics define success? | `product-metrics` | `product-spec` | `product-strategy` |
| Is an A/B result trustworthy and decision-relevant? | `product-metrics` | `product-experiment` | `product-discovery` |
| What are the biggest problems in the product overall? | `product-review` | all specialists as bounded calls | individual specialists |
| Which workflow should run next? | `product-manager` | `product-review` for audit intent | specialist skills |

## Boundaries with existing library skills

| Question | Primary owner | Supporting existing skill | Boundary |
|---|---|---|---|
| What is limiting the product/business overall? | `product-review` | domain review coordinators as bounded suite passes | `product-review` owns global synthesis and priority |
| What is wrong with the UX/UI experience? | `review-product-experience` | Product skills when product context is required | Does not replace strategy, discovery, scope, or business audit |
| What behavioral mechanism or ethical risk explains action? | `review-behavioral-design` | `product-discovery`, `product-experiment` | Returns behavioral findings to the active parent |
| What is wrong with Flutter/React Native implementation health? | `review-mobile-application` | `product-spec`, `mvp-scope` for unresolved product semantics | Does not decide product strategy or final release scope |
| What is the product measurement system? | `product-metrics` | `define-product-metrics-experiments` | Existing skill may answer a bounded controlled-experiment question |
| How should the journey/backlog be mapped? | `map-product-scope` | `mvp-scope` | Mapping supports the decision; `mvp-scope` owns inclusion/exclusion |
| Which assumption should be tested with which learning method? | `product-experiment` | `design-behavior-experiments`, `define-product-metrics-experiments` | Supporting skills own behavioral/statistical depth, not product priority |
| How must approved product behavior work? | `product-spec` | `plan-feature-change` | Spec owns behavior; plan owns technical delivery sequence |

## Direction of normal flow

```text
Strategy
  -> Discovery / Customer Research
  -> Experiment
  -> Scope
  -> Spec
  -> Delivery
  -> Metrics / Learning
  -> Discovery or Strategy when evidence changes the model
```

This is not a mandatory waterfall. Skills may be entered directly when earlier decisions are already sufficiently established.

## Backward routes

Backward routing is valid when new information invalidates an earlier assumption, but the active orchestrator owns the route.

Examples:

- Spec discovers an unresolved product decision -> recommend `mvp-scope` or `product-discovery`.
- Metrics reveals product outcome is a poor proxy -> recommend `product-strategy` / `product-discovery`.
- Experiment disconfirms the target opportunity -> recommend `product-discovery`.

Do not recursively execute the backward route inside a child skill when a parent orchestrator is active.
