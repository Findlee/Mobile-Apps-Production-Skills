# Test automation design template

## Mission and constraints

- Feedback consumer and decision:
- Risks and behaviors in scope:
- Required feedback time and frequency:
- Architecture, delivery model, and constraints:
- Existing suite and pain points:
- Assumptions:

## Candidate decisions

| Candidate | Risk/value | Oracle and stability | Cost/diagnostics | Decision | Reason |
|---|---|---|---|---|---|
| ... | ... | ... | ... | Automate now / later / keep manual / omit | ... |

## Automation architecture

| Check group | Scope | Real/controlled boundaries | Data and isolation | Trigger/stage | Expected runtime | Owner |
|---|---|---|---|---|---|---|
| ... | Component / contract / integration / workflow / probe | ... | ... | ... | ... | ... |

Describe the feedback flow or include a small diagram when three or more stages or dependencies make prose unclear.

## Environment and evidence design

- Accounts, fixtures, reset, cleanup, and privacy:
- Clock, randomness, scheduling, network, and failure control:
- Test doubles and real-integration coverage:
- Parallelism and resource limits:
- Failure artifacts, correlation, redaction, and retention:

## CI and failure policy

- Stage gates and advisory signals:
- Failed-test triage:
- Flaky detection, quarantine, ownership, and expiry:
- Disabled/obsolete test review:

## Prioritized backlog

| Priority | Thin slice or change | Dependency | Completion evidence | Owner | Maintenance expectation |
|---|---|---|---|---|---|
| P0 | ... | ... | ... | ... | ... |

## Measures and review cadence

List outcome measures, baseline if known, target or decision threshold, and when the architecture will be revisited.

## Exclusions and residual risk

State behavior kept manual or exploratory, unsupported environments, weak oracles, remaining real-integration assumptions, and accepted maintenance debt.
