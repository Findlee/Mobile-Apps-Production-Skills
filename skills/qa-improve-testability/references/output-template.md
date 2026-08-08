# Testability review template

## Mission and evidence

- Critical behavior and risk:
- Desired test or diagnostic capability:
- Current tests, failures, and pain:
- Code, architecture, and runtime evidence reviewed:
- Assumptions and scope limits:

## Control-observation map

| Behavior | Required state/control | Stimulus | Observable outcomes | Current barrier |
|---|---|---|---|---|
| ... | ... | ... | ... | ... |

## Prioritized findings

| Priority | Verified barrier | Consequence | Proposed change | Evidence unlocked | Cost/trade-off |
|---|---|---|---|---|---|
| P0 | ... | Slow/flaky/broad/unsafe/unobservable | ... | ... | ... |

For each finding, reference concrete code, interface, architecture, test failure, or missing signal. Label inference explicitly.

## Before and after

Describe how a representative test or investigation works today and how it would work after the change. Compare scope, data setup, dependency control, synchronization, runtime, diagnostics, and cleanup.

## Safety and production considerations

- Authentication, authorization, tenant and data integrity:
- Production availability or environment restriction:
- Audit, privacy, secrets, and retention:
- Performance, compatibility, and operational value:
- Ownership and maintenance:

## Implementation sequence

| Order | Small change | Representative proof | Dependency | Rollback/compatibility |
|---|---|---|---|---|
| 1 | ... | Test or diagnostic evidence | ... | ... |

## Residual limitations

State behavior that still requires broader scopes, real integrations, physical devices, human evaluation, production observation, or specialist assessment.
