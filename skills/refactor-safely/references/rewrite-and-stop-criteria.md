# Rewrite and Stop Criteria

## Prefer refactoring when

- important behavior is poorly documented but currently works;
- the system must remain deliverable throughout the change;
- risk can be reduced through small seams and migrations;
- only part of the design blocks current work;
- existing data/contracts make a big-bang replacement dangerous.

## Consider rewriting a bounded part when

- its behavior is small, well understood, and independently verifiable;
- replacement can run beside the old path or switch behind a boundary;
- the current structure prevents safe incremental change after a short investigation;
- the rewrite scope excludes unrelated stable behavior;
- migration, compatibility, and rollback are explicit.

A full-system rewrite requires stronger evidence. Do not justify it with code aesthetics alone.

## Stop refactoring when

- the current feature/fix is now easy and safe to implement;
- the named comprehension problem has been transferred into clear code;
- the boundary hides the relevant decision with a stable contract;
- additional cleanup is unrelated to the change driver;
- validation cost or blast radius grows faster than expected benefit;
- the code is ugly but stable, isolated, and not needed for present work.

## Warning signs of disguised redesign

- Observable behavior changes without a separate decision.
- New frameworks or architecture styles enter scope.
- The diff spans unrelated modules or performs repository-wide formatting.
- Tests are rewritten to match implementation rather than preserve outcomes.
- Temporary compatibility paths have no removal condition.

Conceptual lineage: when not to refactor, keeping options open, and incremental migration.
