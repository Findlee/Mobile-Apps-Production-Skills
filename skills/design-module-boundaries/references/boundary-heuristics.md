# Boundary Heuristics

## Hide a decision

Group code that knows the same representation, protocol, algorithm, state transition, persistence detail, or domain rule. Expose operations in terms callers need, not the hidden decision.

## Follow change

Use real or plausible change requests:

- Which files must change together?
- Which knowledge is duplicated across them?
- Which callers break when an internal detail changes?
- Which part changes for a different reason or at a different cadence?

Keep jointly required knowledge together; separate independently changing policy or mechanism.

## Prefer deep modules

Assess benefit as hidden complexity divided by interface complexity. A deep module handles meaningful complexity behind a small, coherent contract. A shallow module adds names and forwarding without simplifying use.

## Pull complexity downward

Handle defaults, normalization, retries, representation, and common edge cases once inside the module when doing so creates a stable and unsurprising contract. Do not force every caller to assemble the same policy.

## Design it twice

Create at least two boundary/API sketches for consequential choices. Compare common-call simplicity, information leakage, error model, testability, and future change paths.

## Define errors out of existence

Prefer contracts that make invalid states or unnecessary exceptions impossible. Use types, idempotent operations, defaults, aggregate error handling, or a higher-level operation when appropriate.

## Stop conditions

Do not create a boundary when callers still need most implementation knowledge, behavior must remain tightly coordinated, enforcement costs exceed the change risk, or the boundary is based only on speculative reuse.

Conceptual lineage: deep modules, information hiding, change coupling, and component boundaries.
