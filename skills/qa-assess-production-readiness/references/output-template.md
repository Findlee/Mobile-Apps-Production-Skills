# Production-readiness assessment template

## Assessment scope

- System/change/release:
- Owners, users, and critical journeys:
- Architecture and deployment model:
- Review date, versions, and environments:
- Evidence reviewed, assumptions, and missing access:

## Objectives and current evidence

| User outcome | SLI and measurement point | Objective/window | Current evidence | Gap/owner |
|---|---|---|---|---|
| ... | ... | Existing or proposed | ... | ... |

Include recovery, data integrity, and capacity objectives where relevant. Label proposed values clearly.

## Failure-mode matrix

| Component/dependency | Failure or overload mode | Propagation/user impact | Existing control | Evidence | Residual risk |
|---|---|---|---|---|---|
| ... | Slow / failed / partial / stale / saturated / recovering | ... | Timeout / bound / isolation / degradation / ... | Tested / observed / claimed / missing | ... |

## Capacity and recovery

- Workload and growth assumptions:
- Bottlenecks, bounds, and headroom:
- Load/stress/spike/soak evidence:
- Backup, restore, failover, reconciliation, RTO/RPO evidence:
- Data migration and rollback constraints:

## Operability and observability

| Area | Existing evidence | Gap and consequence | Required action/owner |
|---|---|---|---|
| Configuration/secrets/startup/shutdown/health/logs/metrics/traces/alerts/runbooks/on-call | ... | ... | ... |

## Deployment safeguards

- Compatibility and migration order:
- Staged rollout/canary and representative traffic:
- Verification and abort thresholds:
- Feature flags, kill switches, rollback/roll-forward:
- Post-release observation and communication:

## Prioritized actions and release conditions

| Priority | Action or missing evidence | Risk reduced | Completion evidence | Owner | Release condition |
|---|---|---|---|---|---|
| P0 | ... | ... | ... | ... | Blocker / before expansion / follow-up |

## Assessment

Choose a conditional conclusion and explain it:

- ready with stated evidence and safeguards;
- ready with explicitly accepted residual risk;
- limited rollout only under stated conditions;
- not enough evidence for the proposed exposure;
- not ready because a specific unacceptable risk remains.

List accepted, mitigated, transferred, monitored, and unresolved risks with owners. Do not use a universal “production safe” label.
