# Risk-based testing strategy template

Adapt this template to the feature, project, or release. Omit empty sections.

## Mission and decision

- Decision this evidence must support:
- Stakeholders and affected users:
- Scope and planning horizon:
- Constraints:
- Evidence reviewed and key assumptions:

## Quality-risk model

| Priority | Risk statement | Evidence/source | Impact | Likelihood/uncertainty | Detectability/recovery | Owner |
|---|---|---|---|---|---|---|
| P0 | Because ..., ... may ..., causing ... | ... | ... | ... | ... | ... |

Keep project/test-execution risks in a separate table when they require different owners or mitigations.

## Risk-to-evidence strategy

| Risk | Evidence needed | Activities and scopes | Environment/data | Timing | Completion signal |
|---|---|---|---|---|---|
| ... | ... | Review / check / exploration / evaluation / production signal | ... | ... | ... |

## Delivery and feedback model

- Build qualification and smoke evidence:
- Per-change and scheduled regression:
- Exploratory and specialist sessions:
- Environments, devices, dependencies, and data:
- Observability and diagnostic evidence:
- Roles and ownership:

## Decision checkpoints

State what evidence supports starting, expanding rollout, delaying, reducing scope, mitigating, or stopping. Define replanning triggers such as changed architecture, unreliable environment, severe defect, or newly discovered risk.

## Omissions, mitigations, and residual risk

| Omitted or weakly tested area | Reason | Consequence | Mitigation/monitoring | Risk owner |
|---|---|---|---|---|
| ... | ... | ... | ... | ... |

## Immediate actions

List the smallest high-value next steps, owner, dependency, and expected evidence.
