---
name: qa-assess-production-readiness
description: Assess whether a service, application, migration, infrastructure change, or release can operate, degrade, deploy, recover, and be diagnosed safely in production. Use for production-readiness reviews, launch assessments, resilience and capacity analysis, dependency and cascading-failure modeling, SLI/SLO evidence, load or recovery planning, observability and alert review, configuration and secrets, health and administration interfaces, staged rollout, rollback, data migration, or residual operational risk. Produces a conditional assessment rather than a binary certification.
---

# Assess Production Readiness

Evaluate the system as an operating service, not merely as code that passed functional tests. Require evidence for steady state, failure, overload, deployment, diagnosis, and recovery.

## Operating rules

- Match the user's language and operational context.
- Inspect architecture, dependencies, deployment configuration, runbooks, telemetry, incidents, capacity data, tests, and release plan when available.
- Separate confirmed evidence, design claims, assumptions, missing evidence, and recommendations.
- Start from critical user outcomes and data integrity. Do not treat infrastructure health alone as service health.
- Evaluate resilience patterns in context. Timeouts, retries, circuit breakers, bulkheads, and caches can create new failure modes when configured poorly.
- Never invent SLO, capacity, recovery, or alert thresholds. Propose candidates and owners when objectives are absent.
- Verify current observability and SRE terminology from `references/current-sources.md` when versioned or tool-specific facts matter.
- Do not approve a release solely because a checklist is complete. State conditions, safeguards, and residual operational risk.

## Workflow

### 1. Frame the operating context

Identify service owners, users, critical journeys, data and assets, traffic pattern, regions, tenancy, deployment model, change scope, compliance constraints, support/on-call model, and consequences of outage, slowness, incorrect data, or delayed recovery.

Record production assumptions and material differences between test, staging, and production.

### 2. Define service objectives and evidence

Identify user-relevant service level indicators for availability, correctness, latency, freshness, throughput, durability, or other critical outcomes. Record existing objectives, measurement windows, exclusions, actual performance, and response when objectives are threatened.

If no approved objectives exist, propose decision-ready candidates without presenting them as commitments. Include recovery time, recovery point, data integrity, capacity headroom, and degradation expectations where relevant.

### 3. Model dependencies and failure chains

Map integration points, protocols, trust boundaries, resource pools, queues, caches, storage, identity, configuration, third parties, operators, and shared infrastructure. For each critical dependency, examine slow, failed, malformed, stale, duplicated, partial, and recovered behavior.

Read `references/production-readiness-heuristics.md` for failure, capacity, recovery, and release prompts. Follow failures across calls, retries, threads, queues, pools, and regions to identify amplification and cascades.

### 4. Evaluate resilience and bounded work

Review timeout budgets, retries, backoff and jitter, idempotency, circuit behavior, bulkheads, concurrency limits, rate limiting, load shedding, backpressure, queue bounds, result limits, cache behavior, and graceful degradation. Verify ownership and defaults at every layer; nested retries and mismatched timeouts can multiply load.

Require realistic evidence where the risk is material: load, stress, spike, soak, capacity, dependency-failure, failover, recovery, and data-reconciliation tests. Define workload and success criteria before testing.

### 5. Assess data and recovery

Trace writes, replication, transactions, asynchronous work, migrations, backups, retention, restore, reconciliation, and irreversible operations. Verify backup usability through restore evidence, not job success alone. Check partial deployment, rollback compatibility, forward-fix needs, duplicate processing, and recovery ownership.

### 6. Assess operability and observability

Review configuration, secrets and rotation, startup, readiness, liveness, shutdown, draining, administrative operations, safe maintenance, and access/audit controls.

Check that logs, metrics, traces, events, dashboards, and alerts expose user impact, dependency health, saturation, errors, latency distributions, version/configuration, and recovery progress. Require stable correlation and useful diagnostic evidence. Alerts should be actionable, owned, tested, and tied to a response—not simply numerous.

### 7. Assess deployment and rollout

Review artifact provenance, configuration validation, schema and compatibility order, feature flags, staged or canary rollout, automated and human verification, abort thresholds, rollback or roll-forward, kill switches, communication, and post-release observation. Ensure rollback claims account for data and protocol compatibility.

### 8. Deliver the assessment

Use `references/output-template.md`. Include:

1. scope, architecture, objectives, and evidence quality;
2. failure-mode and capacity findings;
3. data integrity and recovery evidence;
4. observability, alerting, runbook, and ownership gaps;
5. deployment safeguards and rollback constraints;
6. prioritized remediation with release conditions;
7. accepted, mitigated, and unresolved operational risks.

Use `$qa-plan-risk-based-testing` when a broader project test strategy is needed and `$qa-investigate-defect` for a specific observed failure. Keep the assessment conditional: ready with stated evidence and safeguards, ready with accepted risk, or not enough evidence—not universally “production safe.”
