# Consolidated QA project review template

## Executive summary

- Project/revision and review date:
- Intended users, critical outcomes, and release context:
- Overall conditional assessment:
- Most important strengths supported by evidence:
- Top risks and missing evidence:
- Recommended decision and immediate action:

Do not use a numeric quality score.

## Scope, evidence, and limitations

- Components and platforms reviewed:
- Requirements, code, tests, CI/CD, runtime, and operational artifacts inspected:
- Commands or observations performed:
- Sampling strategy:
- Assumptions, unavailable evidence, blocked access, and stale artifacts:

## Specialist lens status

| Lens | Status | Evidence reviewed | Main conclusion or gap |
|---|---|---|---|
| Requirements | Deep / light / not verifiable / not applicable / blocked | ... | ... |
| Risk strategy | ... | ... | ... |
| Test design | ... | ... | ... |
| Exploratory testing | ... | ... | ... |
| Mobile | ... | ... | ... |
| Web API | ... | ... | ... |
| Testability | ... | ... | ... |
| Automation architecture | ... | ... | ... |
| Test code | ... | ... | ... |
| Defect investigation | ... | ... | ... |
| Production readiness | ... | ... | ... |

## Consolidated findings

| ID | Priority | Finding and evidence | Impact | Confidence | Lenses | Recommended action | Closure evidence |
|---|---|---|---|---|---|---|---|
| QA-001 | P0–P3 | Condition, location, and failure mode | Users/data/delivery/operations | Direct / corroborated / inferred / claimed / missing | ... | ... | ... |

Add supporting detail beneath a finding only when the table cannot communicate the mechanism or trade-off. Keep severity, priority, confidence, and effort separate.

## What to do now

List release blockers, unacceptable risks, missing critical evidence, and enabling work in dependency order. Include owner or responsible role when known.

## What to do next

Group the remaining work into coherent risk-reduction increments. Prefer changes that improve several lenses, such as explicit time control, stable contracts, correlation, deterministic data setup, or staged rollout safeguards.

## Later improvements

List lower-exposure hardening and maintainability work without mixing it into urgent actions.

## Evidence still required

| Unverified claim or risk | Why static evidence is insufficient | Required environment/action | Success signal |
|---|---|---|---|
| ... | ... | Device session / test run / load model / restore drill / security review / production signal | ... |

## Residual risk and decision

State accepted, mitigated, monitored, transferred, and unresolved risks. Finish with one conditional recommendation:

- proceed for the intended stage;
- proceed only with stated safeguards or limited exposure;
- resolve named blockers before proceeding;
- insufficient evidence for the decision.

Do not imply that absence of findings proves quality or that every file and runtime path was reviewed.
