---
name: qa-plan-risk-based-testing
description: Create or review a risk-based testing strategy for a feature, project, product, migration, release, or constrained testing effort. Use when deciding what to test, how deeply, in what order, at which levels, with which environments and evidence, or what can reasonably be omitted under time, budget, staffing, device, data, or infrastructure constraints. Produces priorities and residual-risk reporting rather than exhaustive test cases or a binary quality sign-off.
---

# Plan Risk-Based Testing

Build a testing strategy around decisions and product risks. Allocate limited testing effort where new evidence can change an important decision.

## Operating rules

- Match the user's language and planning horizon.
- Begin with the decision that testing must support, not a standard test-plan outline.
- Separate product risk, project risk, test-execution risk, assumptions, and unknowns.
- Base priorities on evidence where available: users, incidents, architecture, change history, analytics, support data, regulations, and business impact.
- Use scores to compare and discuss risks, not to manufacture precision. Preserve high-impact low-frequency risks.
- Distinguish testing activities, automated checks, exploratory learning, and production evaluation.
- Adapt the strategy when evidence changes. Do not treat the initial plan as a fixed contract.
- State material omissions and residual risk. Never promise complete testing or certify quality from a green suite.

## Workflow

### 1. Frame the testing mission

Identify stakeholders, target users, business outcomes, release or project scope, important decisions, timeline, constraints, and consequences of being wrong. Clarify whether the work concerns a feature, release, migration, whole product, or incident-driven change.

Record the evidence reviewed and the assumptions needed to continue. If expected behavior is materially ambiguous, apply `$qa-clarify-requirements` before detailed planning.

### 2. Build the quality-risk model

Express each risk as a plausible failure and consequence, not a vague quality category. Assess:

- affected users, assets, workflows, and obligations;
- impact on safety, money, data, trust, access, operations, or reputation;
- likelihood based on complexity, change, exposure, dependency, and fault history;
- detectability and recoverability;
- uncertainty in the estimate.

Read `references/risk-strategy-heuristics.md` for risk prompts and prioritization guidance. Group related risks, remove duplicates, and retain traceability to their evidence.

### 3. Select evidence for each priority risk

For each material risk, decide what evidence would reduce uncertainty enough to support the stakeholder decision. Combine only relevant activities:

- specification examples and reviews;
- unit, component, integration, contract, workflow, and end-to-end checks;
- exploratory sessions;
- accessibility, security, performance, reliability, compatibility, and recovery testing;
- static analysis, code review, simulation, or failure injection;
- beta, staged rollout, telemetry, synthetic probes, and production observation when safe.

Use agile testing quadrants as a conversation aid for balance, never as a mandatory coverage grid.

### 4. Design the delivery model

Define who supplies and reviews evidence, when feedback arrives, and what the team needs:

- environments and production-like properties;
- accounts, data creation, privacy, reset, and cleanup;
- services, test doubles, devices, networks, and configuration;
- logs, metrics, traces, screenshots, events, and stable identifiers;
- build qualification, smoke coverage, regression cadence, and exploratory time;
- required specialist reviews and external approvals.

Use `$qa-build-test-automation` for automation architecture and `$qa-improve-testability` when the system cannot be controlled or observed economically.

### 5. Define decision points and adaptation

Define evidence-based checkpoints rather than ceremonial entry and exit gates. State what evidence is needed to start a risky stage, what findings cause replanning, and what information supports release, delay, scope reduction, or mitigation.

Do not hide uncertainty behind pass percentages. Explain test reliability, environment differences, unavailable evidence, known defects, workarounds, rollout safeguards, and residual risks.

### 6. Deliver the strategy

Use `references/output-template.md`. Include:

1. mission, scope, stakeholders, and constraints;
2. prioritized quality-risk model with evidence sources;
3. risk-to-test and risk-to-observation mapping;
4. levels, environments, data, tools, people, and cadence;
5. decision checkpoints and reporting model;
6. explicit omissions, mitigations, and residual risk;
7. immediate next actions and owners.

Keep the main strategy concise enough to guide work. Put detailed cases in `$qa-design-tests`, exploratory charters in `$qa-run-exploratory-testing`, and platform-specific depth in `$qa-test-mobile-app` or `$qa-test-web-api`.
