# Architecture Fitness Functions

A fitness function provides repeatable evidence that an important architecture property still holds. Use one only when drift is plausible and the property matters.

## Forms

- Static dependency rule: forbidden module/package access, cycles, public surface limits.
- Build/deploy rule: independent build, reproducible artifact, migration compatibility.
- Runtime measure: latency percentile, throughput, resource use, error budget.
- Resilience check: dependency timeout, failover, recovery time, data-loss bound.
- Security/compliance check: authorization invariant, dependency policy, audit completeness.
- Data check: schema compatibility, reconciliation, invariant, retention/deletion.
- Process review: a decision that cannot yet be automated but has an explicit cadence and owner.

## Design a useful function

Specify the protected characteristic, scope, measurement, threshold, execution frequency, failure action, and owner. Prefer objective automated checks, but do not automate a weak proxy merely because it is measurable.

## Avoid

- vanity metrics with no decision attached;
- brittle implementation checks that prevent safe refactoring;
- thresholds without baselines or business meaning;
- rules that cannot be waived through a documented decision when context changes.

Conceptual lineage: evolutionary architecture governance and architecture test boundaries.
