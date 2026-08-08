# Conflicts, Recovery, and Testing

## Conflict prevention

- Assign exclusive ownership where the domain permits it.
- Synchronize intent-level operations rather than whole records when operations commute.
- Partition independently editable fields.
- Use server-side invariants and conditional writes.
- Reduce offline edit scope for actions whose conflicts cannot be resolved safely.

## Detection

Use explicit remote versions, vector or causal information when justified, conditional request headers, or domain transaction results. A later device timestamp is not necessarily a later causal update because clocks drift and users change them.

## Resolution choices

- **Server wins:** safe when server authority dominates and local edits can be discarded visibly.
- **Client wins:** safe only when overwriting remote work is acceptable.
- **Field or operation merge:** useful when changes are independent and merge rules are deterministic.
- **Domain reconciliation:** apply business rules such as additive counters, append-only events, or reservation rejection.
- **User-assisted:** show understandable differences and preserve both versions until a choice is made.

Define what the UI shows and what audit evidence remains after every resolution.

## Failure and recovery matrix

Test at least the applicable cases:

- process killed before and after local commit;
- duplicate submission and duplicate acknowledgment;
- response lost after server success;
- operations delivered out of order;
- network switches during a batch;
- long offline period and large queue;
- expired credentials or account switch;
- server validation change;
- local schema migration with pending operations;
- deleted record edited by another device;
- invalid or expired incremental cursor;
- device clock moves backward or forward;
- low storage, corrupted local data, and partial transaction;
- app upgrade, downgrade where supported, and server rollback.

## Test levels

- Use deterministic unit or component tests for state machines, ordering, coalescing, backoff classification, and merge rules.
- Use the real local database in integration tests for transactions, migrations, uniqueness, and process restart semantics.
- Use a controllable server or contract test for idempotency, versions, cursors, and partial failures.
- Keep a small device-level suite for lifecycle, background scheduling, permissions, and user-visible pending or conflict flows.

Avoid tests that mock the queue, database, clock, network, and server simultaneously while claiming integration confidence.
