# Refactoring Workflow

## Before editing

- Define the change driver and scope.
- Identify consumers and observable behavior.
- Locate existing tests and run a baseline.
- Check working-tree changes and preserve unrelated user work.
- Decide the fastest meaningful verification loop.

## Characterize only what matters

Add a focused test when behavior is unclear and regression risk is material. Prefer stable input/output, state transition, or system-edge observations. Avoid freezing accidental internal choreography.

For legacy behavior with known defects, record whether the defect is part of the temporary characterization. Fix it later as an explicit behavior change.

## Use two hats

- **Refactoring hat:** change structure, preserve behavior.
- **Behavior hat:** add/fix behavior, keep structural movement minimal.

Switch deliberately and verify between hats. Separate commits when that improves review and recovery, but do not contort tightly related work merely to satisfy a rule.

## Step loop

1. Make one small transformation.
2. Format only the touched construct if needed.
3. Compile/type-check.
4. Run a focused test.
5. Inspect the diff.
6. Save a recoverable checkpoint.

Increase verification after changes to public contracts, data representations, shared infrastructure, concurrency, or performance-critical paths.

## Failure response

If the cause is not immediate, revert the latest small step rather than debugging a stack of transformations. Reapply with smaller moves. A red test during refactoring is a signal to reduce uncertainty.

## Completion

Stop when the target change becomes clear/easy, the named smell no longer blocks it, and further cleanup has diminishing relevance. Run the broader suite and report residual risks.

Conceptual lineage: behavior-preserving refactoring, two hats, small steps, and strategic design investment.
