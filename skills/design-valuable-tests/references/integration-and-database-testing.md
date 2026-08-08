# Integration and Database Testing

## Use production-equivalent semantics

Exercise the same database engine, schema constraints, transaction behavior, collation, indexes, and query translation when those properties carry risk. In-memory substitutes often hide incompatibilities.

## Control schema and reference data

Version schema and required reference data with the application. Create or migrate the test database through the same supported path used by delivery.

## Isolate tests

Choose deliberately among:

- transaction rollback for tests whose behavior permits it;
- per-test schema/database for high isolation;
- deterministic cleanup of owned records;
- unique test data with parallel-safe identifiers;
- containerized or disposable instances.

Do not rely on test order. Make cleanup resilient to failed runs.

## Test the right scenarios

- constraints and transaction boundaries;
- query shape/translation and mapping;
- migration compatibility and backfill invariants;
- idempotency, duplicate handling, and concurrency where relevant;
- controller/application behavior that coordinates domain and dependencies;
- observable outbound messages at the system edge.

Avoid testing a repository method only to restate the ORM API unless custom behavior or mapping risk exists.

## External systems

Use a layered approach: adapter unit tests for local policy, contract/sandbox tests for protocol compatibility, and a small number of integrated journeys. Make rate limits, nondeterminism, and credentials explicit.

## Time and network

Pass a clock or explicit time value at the boundary when behavior depends on time. Simulate network outcomes through the adapter contract, then test the real adapter separately.

Conceptual lineage: database integration practices and explicit system boundaries.
