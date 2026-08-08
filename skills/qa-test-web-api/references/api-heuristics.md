# Web API testing heuristics

Select dimensions based on consumers, state, data, architecture, and risk. An endpoint-by-endpoint checklist is not a complete API strategy.

## Contract and protocol

- method semantics, status meaning, headers, media types, content negotiation, redirects;
- path, query, header, cookie, and body parameter serialization;
- required/optional, defaults, nullability, formats, constraints, examples, and unknown fields;
- consistent error shape, machine-readable codes, human-safe messages, and correlation identifiers;
- caching, validators, conditional requests, pagination, filtering, sorting, and links;
- compatibility, additive and breaking changes, versioning, deprecation, and sunset communication.

Use the HTTP version and OpenAPI version declared by the system. Do not reject implementation-defined behavior unless the contract or relevant standard defines it.

## Data and state

- resource lifecycle and invalid transitions;
- create/read/update/delete plus partial update semantics;
- missing, null, empty, zero, duplicate, malformed, oversized, and boundary data;
- identity, uniqueness, ownership, referential integrity, precision, time zone, encoding;
- idempotency keys, repeated requests, retries, replay, concurrency, lost update, stale reads;
- transactions, partial success, compensation, eventual consistency, asynchronous work.

Verify persistence, side effects, events, audit records, and absence of unauthorized changes.

## Authentication and authorization

Vary unauthenticated, expired, malformed, revoked, wrong-audience, and insufficient-scope credentials as applicable. Test authorization at object, function, property, tenant, and workflow levels. Change identifiers and nested resource references; do not only omit credentials.

Avoid placing real secrets or personal data in test artifacts. Verify redaction in errors, logs, traces, and analytics.

## Dependencies and resilience

Control dependency success, malformed responses, timeouts, slowness, unavailability, rate limiting, duplicates, and inconsistent state. Observe retry budgets, backoff, circuit behavior, queue growth, fallbacks, cleanup, reconciliation, and recovery after the dependency returns.

## Contracts and test doubles

Use consumer-driven contracts when separately deployed consumers and providers need fast feedback about assumptions. They complement, not replace, provider functional testing and selected integration tests.

Use service virtualization to make rare failures deterministic. Keep a smaller set of real-dependency tests to detect false assumptions in the virtual model.

## Performance model

Define workload from real or expected traffic: workflows, arrival pattern, concurrency, payload sizes, data volume, cache state, dependency behavior, and duration. Measure latency percentiles, throughput, errors, resource saturation, queueing, and recovery. Distinguish load, stress, spike, endurance, capacity, and scalability questions.

## Security and abuse

Threat-model assets, actors, entry points, trust boundaries, and abuse outcomes. Investigate object-level and function-level authorization, property exposure, resource consumption, sensitive business flows, server-side request forgery, inventory/version drift, unsafe third-party consumption, injection, and misconfiguration as relevant. Verify the current OWASP API Security categories rather than relying on a memorized version.

## Operations

Check diagnostic errors, stable correlation, auditability, metrics, logs, traces, rate-limit signals, health behavior, SLO indicators, alert usefulness, safe deployment, backward compatibility, rollback, and incident reconstruction.
