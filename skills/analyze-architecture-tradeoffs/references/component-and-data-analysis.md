# Component and Data Analysis

## Find logical components

Look for domain capabilities, workflows, business policies, ownership boundaries, and clusters of data that change together. Avoid making each entity, screen, endpoint, or technical layer a component.

For each candidate component capture:

- responsibility and language used by domain participants;
- inbound commands/queries/events;
- outbound dependencies;
- owned data and invariants;
- required quality characteristics;
- likely rate and reason for change.

## Analyze coupling

- **Semantic coupling:** two parts require shared domain meaning.
- **Data coupling:** they share or coordinate mutable data.
- **Temporal coupling:** operations must happen in an order or within a time window.
- **Operational coupling:** a failure or deployment in one affects another.
- **Team coupling:** delivery requires cross-team coordination.

Distribution changes coupling modes; it does not make coupling disappear.

## Choose data ownership

Prefer a clear authority for mutable data. Document consistency boundaries, read models, replication, conflict rules, retention, and audit needs. Shared databases simplify some transactions but increase coordination; separated data increases autonomy but introduces synchronization and reporting costs.

## Choose communication

Default to synchronous communication when the workflow is request/response and its availability/latency coupling is acceptable. Use asynchronous communication when decoupling in time, buffering, fan-out, or long-running work provides named value. Account for ordering, duplication, idempotency, debugging, and eventual consistency.

## Test decomposition

Walk several future changes through the model. A useful decomposition contains changes within a small area, preserves domain invariants, and does not require chatty coordination across artificial boundaries.

Conceptual lineage: component-based thinking, architecture quanta, data topology, and information hiding.
