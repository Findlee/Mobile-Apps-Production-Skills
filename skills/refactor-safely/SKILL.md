---
name: refactor-safely
description: Safely improve existing code without intentionally changing observable behavior, using code-smell diagnosis, preparatory and comprehension refactoring, small verified transformations, behavior characterization, rollback checkpoints, and incremental migration. Use when simplifying confusing code, removing duplication, preparing for a feature, improving an API, splitting responsibilities, replacing a dependency gradually, or restructuring legacy code while controlling regression risk.
---

# Refactor Safely

Preserve observable behavior unless the user explicitly authorizes a behavior change. Make the change easy, then make the easy change.

## Establish purpose and scope

1. State why refactoring is useful now: prepare a feature, understand code, remove a repeated hazard, or make a small local improvement.
2. Identify the behavior boundary and the exact code in scope.
3. Avoid refactoring untouched ugly code without a concrete benefit.
4. Separate structural intent from any requested behavior change.

## Build a safety net

1. Inspect existing tests and operational evidence.
2. Run the smallest relevant checks before editing.
3. Add characterization tests at a stable behavior boundary only when current protection is insufficient for the risk.
4. Record baseline outputs, invariants, performance, or serialized data when tests alone do not capture the contract.

Read [refactoring-workflow.md](references/refactoring-workflow.md) for detailed checkpoints.

## Diagnose and choose a target

Name the smell and connect it to the present change or comprehension cost. Read [smell-to-refactoring-map.md](references/smell-to-refactoring-map.md).

Sketch the target structure before editing. For consequential API or module changes, compare at least two designs. Prefer clearer information hiding and simpler common use, not smaller functions or more classes as ends in themselves.

## Transform in small steps

1. Apply one recognizable structural change.
2. Compile/type-check and run the narrow relevant test.
3. Inspect the diff for accidental behavior or formatting changes.
4. Establish a recoverable checkpoint.
5. Repeat, widening verification as the affected surface grows.

Read [refactoring-catalog.md](references/refactoring-catalog.md) to compose a sequence. Use tool-assisted refactorings when they preserve language semantics reliably, but still verify the result.

If a check fails unexpectedly, fix an obvious local mistake or return to the last verified point and retry with a smaller step. Do not stack uncertain changes.

## Handle long migrations

Keep the system working throughout. Introduce a stable seam, route callers incrementally, support old and new paths only as long as necessary, then remove the obsolete path. Avoid a long-lived half-migration with no owner or completion condition.

Read [rewrite-and-stop-criteria.md](references/rewrite-and-stop-criteria.md) before recommending a rewrite, broad restructuring, or continued cleanup beyond the immediate goal.

## Finish

1. Run the proportional full verification set.
2. Compare behavior and important nonfunctional baselines.
3. Review the final diff for scope, naming, comments, dead code, and temporary adapters.
4. Report what changed structurally, what behavior was preserved, checks run, and remaining risk.
5. Mark any intentional behavior change separately.

Do not combine broad formatting with structural work. Do not fix every nearby smell. Do not split functions solely by length. Do not call a rewrite a refactoring.
