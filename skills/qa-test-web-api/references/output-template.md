# Web API test strategy template

## Context and contract

- API purpose and critical consumers:
- Protocol/style and description version:
- Authentication, trust boundaries, and sensitive data:
- Dependencies and deployment model:
- Evidence, assumptions, and current-source verification date:

## API model and critical workflows

Describe resources, identities, states, data flows, side effects, asynchronous work, and cross-operation journeys. Include a diagram only when it materially clarifies relationships.

## Prioritized risks

| Priority | Risk | Consumer/business impact | Evidence needed |
|---|---|---|---|
| P0 | ... | ... | ... |

## Coverage plan

| Area | Scenarios/models | Assertions and observation channels | Level | Priority |
|---|---|---|---|---|
| Contract / workflow / auth / resilience / performance / security / operations | ... | Response, state, events, logs, metrics | ... | ... |

## Automation architecture

- Schema and rule checks:
- Component/integration/workflow checks:
- Consumer/provider contracts:
- Virtualized and real dependencies:
- Test data, identity, cleanup, and diagnostics:

## Performance and security models

State workloads, thresholds, threat assumptions, abuse cases, environments, and specialist review needs. Avoid generic “performance test” or “OWASP test” labels without a model.

## Execution evidence

If tests were run, record environment/version, data, results, defects, logs/traces, and evidence limitations. Otherwise label this as a plan.

## Gaps and residual risk

List untested consumers, states, dependencies, workloads, attack surfaces, production signals, or current guidance. Recommend the next highest-value action.
