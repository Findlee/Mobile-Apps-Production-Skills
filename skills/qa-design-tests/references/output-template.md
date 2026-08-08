# Test design template

## Mission, scope, and assumptions

- Change or behavior:
- Critical users/outcomes:
- In scope / out of scope:
- Evidence and assumptions:

## Risk-to-test map

| Priority | Risk or rule | Model/technique | Evidence needed | Coverage status |
|---|---|---|---|---|
| High | ... | Boundary / state / property / ... | ... | Planned / existing / gap |

## Prioritized tests

| ID | Priority | Setup/state | Action/input | Expected observations | Level | Risk covered |
|---|---|---|---|---|---|---|
| T-01 | P0 | ... | ... | Response, state, side effects | Unit / integration / E2E / exploratory | ... |

Keep data concrete enough to implement. Group equivalent cases and list their representative values.

## Automation design

- Lowest useful layer:
- Fixtures and data lifecycle:
- Dependency strategy:
- Determinism and cleanup:
- Diagnostics on failure:

## Structural follow-up

List branches, conditions, exceptions, or mutations that need inspection after behavior-based coverage exists.

## Gaps and residual risk

State omitted dimensions, unavailable environments/data, weak oracles, and why the remaining risk is acceptable or needs follow-up.
