---
name: qa-test-web-api
description: Design, review, execute, or improve holistic testing for HTTP and web APIs, especially REST-style services described by OpenAPI. Use for API test strategy, design review, endpoint and workflow tests, schemas and contracts, authentication and authorization, errors, idempotency, concurrency, service virtualization, consumer-driven contracts, performance, security, observability, or production readiness. Verify current specifications and security guidance from primary sources.
---

# Test Web APIs

Test the API as a product, protocol implementation, dependency, and production service. Cover user and consumer workflows in addition to isolated endpoint examples.

## Operating rules

- Match the user's language and project stack.
- Inspect the API description, implementation, consumers, architecture, data model, existing checks, incidents, and telemetry when available.
- Separate documented behavior, observed behavior, assumptions, and recommendations.
- Review API design early; do not wait for implementation to identify inconsistent contracts or untestable behavior.
- Test outcomes, state changes, side effects, and observability—not status codes alone.
- Use the HTTP and API-description versions actually supported by the system. Check `references/current-sources.md` when current standards or security categories matter.
- Do not infer security from successful functional checks. State residual risk and untested dependencies.

## Workflow

### 1. Frame the API mission

Identify API purpose, consumers, critical workflows, business impact, protocol/style, environments, authentication model, trust boundaries, data sensitivity, dependencies, versioning, and operational objectives. Clarify whether work covers design review, test design, execution, automation, performance, security, or release readiness.

### 2. Build the API model

Map resources and identities, operations, state transitions, data ownership, dependencies, asynchronous processes, caches, events, trust boundaries, and consumer expectations. Trace critical workflows across multiple calls rather than treating each endpoint independently.

If an OpenAPI document exists, compare it with observed and implemented behavior. Validate that operations, parameters, schemas, examples, security schemes, errors, and versioning rules communicate the real contract.

### 3. Review design and contract

Check consistency of resource naming, methods, status semantics, headers, media types, pagination, filtering, sorting, error formats, identifiers, timestamps, nullability, compatibility, deprecation, idempotency, concurrency controls, and retry guidance.

Read `references/api-heuristics.md` for the detailed test model. Treat ambiguous or missing contract details as risks, not as permission to invent behavior.

### 4. Design functional and workflow tests

Cover representative success cases and meaningful variations for:

- required, optional, empty, null, malformed, duplicate, boundary, and extreme values;
- authentication, role, tenant, ownership, and object-level authorization;
- resource lifecycle, invalid transitions, repeated requests, partial failures, and recovery;
- ordering, pagination stability, filtering, sorting, time, locale, and encoding;
- conditional requests, caching, idempotency, concurrency, and race behavior where relevant;
- dependency failure, timeout, retry, fallback, eventual consistency, and asynchronous completion.

Verify response body, headers, status semantics, persisted state, side effects, emitted events, audit records, and absence of unintended changes.

### 5. Plan automation and change detection

Build fast schema and business-rule checks, integration checks at real boundaries, focused workflow tests, and consumer/provider contract checks where independently changing services benefit from them. Use service virtualization to control rare failures and unstable dependencies, while retaining selected tests against real integrations.

Generate tests from an API description only as a starting point. Add business intent, state, authorization, and cross-operation assertions that the description cannot provide automatically.

### 6. Evaluate performance, security, and operations

Model realistic workloads and user flows. Define latency distributions, throughput, concurrency, data volume, duration, and acceptable error behavior before running performance tests. Include warm-up, saturation, endurance, burst, and recovery when justified.

Threat-model assets, actors, entry points, trust boundaries, abuse cases, and dependency risks. Use the current OWASP API Security material as a prompt for investigation, not a compliance checkbox.

Assess structured errors, correlation identifiers, logs, traces, metrics, rate-limit signals, health behavior, SLO indicators, safe deployment, rollback, and incident diagnosis.

### 7. Deliver the strategy or report

Use `references/output-template.md`. Include:

1. context, consumers, contract version, and assumptions;
2. API model and critical workflows;
3. prioritized risks;
4. functional, contract, integration, performance, security, and operational coverage;
5. automation layers, data, environments, and test doubles;
6. evidence and defects if execution occurred;
7. omissions, current-source checks, and residual risk.
