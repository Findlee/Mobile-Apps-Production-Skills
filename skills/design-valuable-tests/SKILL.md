---
name: design-valuable-tests
description: Design or review a high-value automated testing strategy based on observable behavior, regression risk, test type, dependency ownership, feedback speed, refactoring resistance, and maintenance cost. Use when deciding what and how to test, improving a brittle suite, choosing unit versus integration or end-to-end coverage, using mocks or stubs appropriately, testing databases and external systems, or evaluating whether coverage provides meaningful confidence.
---

# Design Valuable Tests

Optimize confidence per maintenance cost, not test count or coverage percentage. Test observable behavior and important contracts rather than the current internal choreography.

## Inventory behavior and risk

1. Identify the actor that observes each result: user, caller, external system, operator, or regulator.
2. List domain rules, state transitions, workflows, external effects, and critical failure/recovery behavior.
3. Rank regression risk by impact, likelihood, and difficulty of detection.
4. Ignore trivial code unless its context makes failure costly.

## Identify boundaries and dependencies

Separate:

- domain calculations and decisions;
- application orchestration;
- framework/UI delivery;
- managed dependencies controlled by the application, such as its database;
- unmanaged dependencies observed by other systems, such as external messages, payments, or email.

Read [test-doubles.md](references/test-doubles.md) before choosing mocks, stubs, fakes, or spies.

## Select the test level

Choose the lowest level that provides realistic confidence without coupling to implementation. Read [test-level-selection.md](references/test-level-selection.md).

- Use unit tests for cohesive behavior that can run meaningfully in process.
- Use integration tests for database semantics, serialization, framework wiring, filesystem/network adapters, and system-edge contracts.
- Use a small number of end-to-end tests for critical journeys and deployment confidence.

Do not equate a unit with one class. Do not isolate collaborators automatically.

## Evaluate test value

Balance four attributes:

1. protection against regressions;
2. resistance to safe refactoring;
3. fast feedback;
4. maintainability and diagnostic clarity.

Read [test-quality-model.md](references/test-quality-model.md) when reviewing an existing suite or resolving a trade-off.

## Design cases

Cover representative normal behavior, boundaries, meaningful invalid input, state transitions, dependency failure, retries/idempotency, concurrency or ordering where relevant, and recovery. Prefer concrete examples over mirroring branches line by line.

For persistent or out-of-process behavior, read [integration-and-database-testing.md](references/integration-and-database-testing.md).

## Review for brittleness

Read [testing-anti-patterns.md](references/testing-anti-patterns.md). Remove or rewrite tests that assert implementation details, duplicate production logic, require excessive setup, or fail frequently without a behavioral regression.

## Produce the strategy

Use [test-strategy-template.md](assets/test-strategy-template.md). Include:

- behavior and risk inventory;
- allocation across unit, integration, end-to-end, and non-automated checks;
- named scenarios;
- test-double policy;
- database/time/network strategy;
- test data and isolation approach;
- feedback-time expectations;
- what not to test and why;
- suite health and deletion criteria.

Treat coverage as a navigation signal, never a target or proof. Do not test private methods directly without an exceptional reason. Do not mock internal domain collaboration. Do not keep a low-value test solely because it exists.
