# Cross-Skill Audit - v1.0

## Scope

Audit of all nine skills as one runtime system, focused on routing, ownership, duplication, recursion, context cost, handoffs, and implementation safety.

## Findings and changes

### P0 - Recursive orchestration risk - FIXED

Several specialists could recommend `product-review` or another skill while already running under `product-review`. Without a shared runtime rule, this could create loops such as:

`product-review -> product-metrics -> product-review`

Fix:

- added `ORCHESTRATION.md` as the system-level source of truth;
- added orchestration-safety rules to every skill;
- specialists now return handoff recommendations to the active parent instead of recursively chaining;
- `product-manager -> product-review` explicitly transfers orchestration ownership.

### P0 - Ambiguous experiment ownership - FIXED

`product-experiment` and `product-metrics` both contained A/B-test responsibilities.

Fix:

- `product-experiment` owns product hypothesis, treatment, learning method, audience/context, and decision meaning;
- `product-metrics` owns scorecard/OEC, metric semantics, randomization/analysis implications, MDE/power, SRM/A-A, stopping/statistics, and quantitative readout.

### P1 - Context explosion from loading all skills - FIXED

The full library is intentionally detailed. Loading all nine skills plus references at once would waste context and increase instruction conflict.

Fix:

- added lazy-loading policy;
- parent orchestrators call specialists one at a time with bounded questions;
- shared product/evidence state is reused instead of reconstructed.

### P1 - Scope/spec ownership ambiguity - FIXED

Both `mvp-scope` and `product-spec` can encounter scope questions.

Fix:

- `mvp-scope` owns release boundary;
- `product-spec` owns behavior inside approved boundary;
- spec can flag contradictions but cannot silently add/remove scope.

### P1 - Discovery/research duplication - FIXED

Both skills can map customer experience and opportunities.

Fix:

- `product-discovery` owns the product opportunity/solution decision;
- `customer-research` owns qualitative evidence collection and synthesis;
- research returns evidence to discovery rather than reprioritizing the full product when called as a child.

### P1 - Strategy/metrics proxy drift - FIXED

A measurable metric can accidentally replace the intended outcome.

Fix:

- strategy owns the intended outcome;
- metrics operationalizes it;
- proxies remain explicitly hypotheses until their causal relationship is supported.

### P1 - Double orchestration between manager and review - FIXED

`product-manager` and `product-review` are both high-level skills.

Fix:

- manager is default router;
- review owns audit intent;
- manager transfers ownership and does not continue a parallel audit.

### P1 - Review mutating the product during diagnosis - FIXED

A review agent attached to a repository could start editing while still auditing.

Fix:

- review is read-only by default;
- implementation requires a separate user request/handoff.

### P2 - Evidence-label vocabulary differences - FIXED

Skills intentionally use domain-specific evidence labels, but parent synthesis needs a common vocabulary.

Fix:

- added `EVIDENCE-MODEL.md`;
- child outputs may keep domain-specific labels;
- parent orchestrator normalizes them without upgrading epistemic status.

### P2 - Handoff inconsistency - FIXED

Skills used different language for routing and outputs.

Fix:

- standardized bounded specialist call and specialist response contracts in `ORCHESTRATION.md`;
- added shared `HANDOFF RECOMMENDATIONS` behavior.

### P2 - Missing system-level evals - FIXED

Each skill had extensive local evals, but cross-skill behavior was not directly tested.

Fix:

- added `SYSTEM-EVALS.md` for routing, loops, ownership transfer, bounded calls, duplicate findings, context reuse, and implementation boundaries.

## Static integrity checks

The package was checked for:

- valid skill frontmatter presence;
- unique skill names;
- references only to existing skill names;
- local EVALS files for all skills;
- SOURCES files for all skills;
- presence of product-review dynamic references/lenses;
- system-level orchestration and boundary documentation.

## Remaining intentional overlaps

Some overlap is desirable because skills must remain usable directly:

- `product-experiment` includes basic quantitative cautions even though rigorous experiment statistics live in `product-metrics`;
- `product-discovery` can reason from supplied customer evidence even though primary qualitative research design lives in `customer-research`;
- `product-spec` defines analytics semantics required for implementation while `product-metrics` owns the broader measurement system;
- `product-review` contains lightweight audit lenses so it can diagnose before deciding whether a specialist deep-dive is warranted.

These overlaps are guardrails, not competing ownership.

## Release recommendation

The system is coherent enough to treat this package as `v1.0` of the Product Management Skills architecture.

## Repository integration audit

The package was also checked against the repository's existing UX/UI, behavioral-design, and mobile-engineering suites.

- `product-review` owns full product/business audit synthesis.
- `review-product-experience`, `review-behavioral-design`, and `review-mobile-application` may run as bounded domain-suite passes under an active parent.
- `product-metrics` owns the broad measurement system; `define-product-metrics-experiments` supplies narrow controlled-experiment depth.
- `mvp-scope` owns the release boundary; `map-product-scope` supplies journey maps and candidate slices.
- `product-experiment` owns assumption and learning-method choice; behavioral/statistical specialists supply bounded depth.
- `product-spec` owns approved product behavior; `plan-feature-change` owns technical delivery sequencing.

These adaptations preserve lazy loading and prevent competing orchestrators from returning parallel final backlogs.

Future changes should be made by:

1. adding a failing system/local eval;
2. updating the narrowest owning skill;
3. checking boundary impact;
4. updating sources when external guidance changes;
5. rerunning static/system audit.
