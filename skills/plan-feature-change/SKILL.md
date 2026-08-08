---
name: plan-feature-change
description: Plan a safe, outcome-oriented software feature or behavior change from approved product intent through delivery slicing, architecture impact, implementation sequence, rollout, rollback, and validation. Use when planning a new feature, cross-cutting behavior change, offline or synchronization flow, SDK migration, substantial integration, or implementation roadmap before editing code. Use product-spec first when actors, journeys, states, business rules, failure behavior, scope, or acceptance semantics remain unresolved. Do not use for trivial localized edits or pure product discovery.
---

# Plan a Feature Change

Plan from the outcome backward. Inspect the actual system before prescribing a target design. Keep facts, inferences, and unknowns distinct.

## Gather the minimum context

1. Identify the user or system actor, the problem, and the observable result.
2. Inspect current behavior, relevant code paths, data ownership, tests, and delivery constraints.
3. Record non-goals, compatibility requirements, deadlines, and unresolved decisions.
4. Ask only questions whose answers would materially change the plan. Continue with labeled assumptions when risk is low.

## Shape the change

1. Describe the main end-to-end scenario and important failure or recovery paths.
2. Select the smallest useful vertical slice that can be demonstrated or measured.
3. Separate learning work from production work. Test the riskiest assumption early.
4. Exclude polish, speculative reuse, and unrelated cleanup from the first slice.

Read [delivery-slicing.md](references/delivery-slicing.md) when the request is broad, the backlog is flat, or an MVP/release sequence is required.

## Analyze impact

1. Locate affected modules, public contracts, persisted data, external systems, and operational paths.
2. Identify the few quality characteristics that could make the change fail, such as security, latency, resilience, offline correctness, or deployability.
3. Distinguish a required preparatory refactoring from an optional improvement.
4. Identify irreversible choices and decisions that can remain open.
5. Use the simplest viable architecture. Require evidence for new layers, interfaces, services, or infrastructure.

Read [change-risk-checklist.md](references/change-risk-checklist.md) for cross-cutting, data-sensitive, externally integrated, or operationally risky changes.

## Build an executable sequence

Order work as verified vertical increments. For each increment, state:

- the user-visible or system-visible behavior;
- the code/data boundary affected;
- the risk retired;
- the verification to run;
- any rollout or compatibility condition.

Prefer this order when applicable:

1. Establish observation or characterization at the behavior boundary.
2. Introduce the smallest seam or data change needed.
3. Deliver a thin end-to-end path.
4. Add failure handling and recovery.
5. Expand coverage, performance, and polish.
6. Remove temporary compatibility mechanisms only after verification.

Read [rollout-and-migration.md](references/rollout-and-migration.md) when changing schemas, protocols, SDKs, public APIs, stored data, or remotely controlled behavior.

## Produce the plan

Use the structure in [feature-change-plan.md](assets/feature-change-plan.md), adapting it to the task. Include:

- outcome and success evidence;
- current-state facts;
- assumptions and open decisions;
- first vertical slice and non-goals;
- affected boundaries and data;
- risks and mitigations;
- ordered implementation increments;
- risk-based tests and checks;
- rollout, migration, and rollback when relevant;
- completion criteria.

Do not present a file list as a plan. Do not hide uncertainty. Do not turn a small feature into an architecture program.

## Coordinate with narrower skills

If available, use a more specific skill when the task needs depth:

- approved product behavior and acceptance contract: `product-spec`;
- release inclusion/exclusion and coherent product slice: `mvp-scope`;
- product discovery or story mapping: `map-product-scope`;
- system architecture comparison: `analyze-architecture-tradeoffs`;
- source-code module design: `design-module-boundaries`;
- testing strategy: `design-valuable-tests`;
- behavior-preserving restructuring: `refactor-safely`;
- Flutter implementation: `implement-flutter-feature`;
- React Native implementation: `implement-react-native-feature`;
- offline-first data and synchronization: `design-mobile-sync`;
- measured mobile performance diagnosis: `diagnose-mobile-performance`;
- Flutter or React Native native-platform integration: `integrate-native-capability`;
- signed artifacts, store rollout, and mobile recovery: `prepare-mobile-release`.

Keep this skill responsible for the integrated delivery plan.

When invoked after `product-spec`, preserve its product invariants, explicit scope, state/rule semantics, analytics requirements, and unresolved blockers. Own technical sequencing, repository impact, migrations, rollout, rollback, and verification; return product-semantic contradictions to the parent instead of silently deciding them.
