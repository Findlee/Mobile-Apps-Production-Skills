# Production readiness heuristics

Load this reference for detailed failure-mode, capacity, recovery, observability, and rollout prompts. Select by architecture and consequence; do not treat it as a universal compliance checklist.

## User outcomes and objectives

- Which user journeys, writes, reads, jobs, and administrative actions must remain usable?
- Which failures are worse than unavailability, such as silent corruption, duplicate charge, security bypass, or stale decision?
- Which SLI measures the user outcome most directly? Is it measured at the client, edge, service, queue, or storage layer?
- What objective, window, exclusions, and response policy exist? What is actual performance and uncertainty?
- What availability, latency, freshness, durability, correctness, capacity headroom, RTO, and RPO are required or proposed?

Avoid averages that hide tails. Do not turn a proxy metric into a user outcome without naming the limitation.

## Integration and cascade model

For every critical dependency, examine:

- connection establishment, handshake, authentication, compatibility, and discovery;
- fast failure, slow response, timeout, malformed response, stale response, partial success, duplicate, and recovery;
- client timeout versus server work lifetime;
- retry ownership, limits, backoff, jitter, idempotency, and retry storms;
- thread, connection, memory, CPU, file descriptor, token, quota, and worker pools;
- queue bounds, age, poison messages, dead letters, redelivery, and draining;
- cache stampede, invalidation, stale data, cold start, and dependency shielding;
- shared fate across tenants, regions, availability zones, and supposedly independent services.

Trace a single failure through downstream calls and back through callers. Look for amplification, blocked resources, positive feedback loops, and self-denial.

## Stability and overload patterns

- Set timeout budgets from end-to-end objectives and nested-call structure.
- Retry only potentially recoverable and safe operations; bound attempts and total elapsed time.
- Require idempotency or deduplication for retryable side effects.
- Use circuit breaking when failing calls should be stopped and recovery can be probed safely.
- Isolate resources with bulkheads where one workload or dependency must not exhaust another.
- Fail fast when waiting cannot improve the outcome.
- Bound concurrency, queues, result sets, sessions, caches, and per-request work.
- Apply rate limits, admission control, backpressure, load shedding, and graceful degradation according to user priority.

Each pattern needs observable state, ownership, tested configuration, and recovery behavior. A default library setting is not readiness evidence.

## Capacity and performance evidence

Model realistic workflows, arrival patterns, concurrency, payloads, data size, cache state, background load, dependency latency, and duration. Distinguish baseline/load, stress, spike, soak, capacity, scalability, and recovery questions.

Measure user-relevant latency distributions, errors, throughput, saturation, queue age, resource use, and recovery. Identify the limiting resource and performance cliff. Include safety margins and growth assumptions; do not extrapolate linearly across architecture changes.

## Data integrity and recovery

- transaction and consistency boundaries;
- replication lag, failover, split-brain controls, and read-after-write expectations;
- idempotency, deduplication, reconciliation, and compensation;
- schema/data migration ordering and mixed-version operation;
- backup coverage, immutability, encryption, retention, and restore evidence;
- RPO/RTO measurement from realistic drills;
- partial deployment, partial restore, replay, and manual correction;
- irreversible operations and audit trail.

A successful backup job is not restore proof. A rollback that cannot reverse schema or data changes is not a complete rollback plan.

## Environment and lifecycle

Compare staging/test and production for topology, data volume, configuration, dependencies, identity, certificates, quotas, network, resource limits, and observability. Review configuration validation, secret loading and rotation, startup dependencies, readiness, liveness, graceful shutdown, connection draining, background-job handling, and administrative operations.

Health endpoints should represent their intended decision. Liveness must not restart a healthy process because a remote dependency is unavailable; readiness must not advertise capacity before the instance can safely serve.

## Observability and response

Require signals that connect user impact to cause:

- outcome and error metrics with meaningful dimensions;
- latency distributions and saturation;
- structured logs with version, configuration, and stable correlation;
- traces across important boundaries;
- deployment, feature-flag, schema, and dependency events;
- dashboards aligned to critical journeys and objectives;
- alerts that are actionable, owned, deduplicated, tested, and linked to runbooks;
- runbooks containing verification, mitigation, escalation, rollback, and evidence preservation.

Check access, privacy, sampling, retention, cardinality, and cost. More telemetry is not automatically more observability.

## Deployment and launch

- immutable/provenanced artifact and configuration validation;
- compatibility across old/new clients, services, messages, and schemas;
- feature flags with owner, default, expiry, and failure behavior;
- staged/canary rollout with representative traffic and explicit abort thresholds;
- smoke and synthetic verification of user outcomes;
- rollback/roll-forward timing, permissions, data implications, and rehearsed steps;
- post-release observation window, ownership, communication, and incident path.

Classify launch blockers by missing evidence and consequence. Preserve residual risk instead of converting it into a ceremonial approval.
