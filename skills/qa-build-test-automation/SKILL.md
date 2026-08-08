---
name: qa-build-test-automation
description: Design, review, implement, or improve a maintainable test-automation strategy and supporting suite architecture. Use when selecting automation candidates, choosing test scopes and levels, structuring CI feedback, designing fixtures and test data, isolating dependencies, adopting contract tests or service virtualization, addressing flaky or slow suites, planning ownership and maintenance, or evaluating automation return. Do not use automation percentage as the objective or replace exploratory, usability, and other human evaluation mechanically.
---

# Build Test Automation

Treat automation as an engineered feedback system, not as the conversion of manual cases into scripts. Optimize for valuable, timely, trustworthy evidence over test count.

## Operating rules

- Match the user's language, architecture, stack, and delivery constraints.
- Establish the decision and feedback need before selecting tools or layers.
- Inspect existing code, tests, CI, incidents, architecture, data flows, and team ownership when available.
- Select automation by value, repeatability, oracle quality, diagnosability, and maintenance cost—not by a mandate to automate everything.
- Place checks at the lowest scope that supplies sufficient confidence and a useful failure signal. Do not enforce a universal pyramid shape.
- Treat test code and infrastructure as production-quality software with ownership, review, versioning, and maintenance.
- Preserve manual exploration, usability evaluation, and specialist assessment where adaptation or human judgment matters.
- Report uncertainty, gaps, and expected maintenance. Do not present a green pipeline as proof of product quality.

## Workflow

### 1. Define the automation mission

Identify the consumer of feedback, decision supported, target risks, required feedback time, execution frequency, environments, release model, team capabilities, and cost constraints. Distinguish preventing regressions, accelerating development, checking contracts, qualifying builds, generating test data, and monitoring production.

If the desired behavioral coverage is unclear, use `$qa-design-tests`. If the product risk priorities are unclear, use `$qa-plan-risk-based-testing`.

### 2. Assess candidates

Evaluate each candidate by:

- business or technical risk covered;
- frequency and value of repeated execution;
- stability of behavior and interfaces;
- strength and determinism of the oracle;
- setup, data, environment, and cleanup effort;
- runtime, parallelism, and infrastructure cost;
- failure localization and diagnostic evidence;
- expected change rate and maintenance ownership;
- coverage already supplied at another layer.

Read `references/automation-architecture-heuristics.md` for selection and architecture prompts. Reject or defer candidates whose automation cost exceeds the likely information value unless a severe risk justifies them.

### 3. Choose scope and seams

Map the system under test and select the smallest useful test scope: pure logic, component, service, adapter, contract, integration, workflow, UI, or production probe. Use broader checks for wiring and critical journeys, not as the default place for every rule.

Identify boundaries where real dependencies, fakes, stubs, simulators, or service virtualization provide the best evidence. Keep selected tests against real integrations to detect incorrect doubles and deployment assumptions.

### 4. Design deterministic execution

Define:

- fixture shape and data lifecycle;
- unique identities, isolation, parallel execution, and cleanup;
- control of clock, randomness, network, queues, and external services;
- retries at the product boundary versus retries in the test harness;
- environment configuration and drift detection;
- logs, traces, screenshots, requests, responses, events, and state snapshots captured on failure.

Use `$qa-improve-testability` when reliable control and observation require production-code or architectural changes. Never hide nondeterminism by adding arbitrary waits or unconditional test retries.

### 5. Structure the suite and CI feedback

Organize checks by purpose, scope, ownership, and expected runtime. Put fast, high-signal checks early; schedule slower or specialized evidence where it can still influence the decision. Define build qualification, change-based selection where reliable, parallelism, resource limits, and failure triage.

Specify policy for failed, flaky, quarantined, disabled, and obsolete checks. Quarantine must retain visibility, ownership, expiry, and repair priority; it must not silently convert failures into success.

### 6. Implement or backlog the work

When implementation is requested, follow project conventions, make the smallest coherent change, and verify representative checks locally or in the authorized CI environment. Avoid inventing endpoints, selectors, fixtures, or test-only behavior without evidence.

Otherwise create a prioritized backlog with thin vertical slices: establish one trustworthy path and diagnostics, learn from it, then expand. Include ownership, dependencies, expected value, maintenance cost, and completion evidence.

### 7. Measure and evolve

Track useful outcomes such as time to trustworthy signal, important regressions detected, false-positive and flaky rates, diagnostic time, runtime, maintenance effort, and escaped risks. Treat line coverage, test count, and automation percentage as secondary signals only.

Review the suite after architecture changes, recurring failures, slow feedback, ignored results, or declining defect yield. Delete or replace checks that no longer justify their cost.

### 8. Deliver the automation design

Use `references/output-template.md`. Include the mission, candidate decisions, scope architecture, dependency/data/environment design, CI stages, failure evidence, ownership, backlog, measures, exclusions, and residual risk.
