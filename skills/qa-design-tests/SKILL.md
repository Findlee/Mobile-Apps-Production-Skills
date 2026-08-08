---
name: qa-design-tests
description: Design a focused, risk-based set of tests from requirements, code, models, incidents, or change descriptions. Use when creating or reviewing test cases, automated checks, regression coverage, boundary and equivalence tests, state-transition tests, decision tables, combinatorial tests, properties, coverage goals, or mutation-testing ideas. Use after clarifying material ambiguity; do not use for executing an exploratory session.
---

# Design Strong Tests

Derive tests from risks and behavioral models instead of producing a generic checklist. Optimize for information gained and important faults detected, not test count.

## Operating rules

- Match the user's language and project conventions.
- Inspect the available requirements, code, architecture, existing tests, incidents, and production signals before proposing coverage.
- Separate specification-based tests from implementation-based tests. Do the specification pass first to avoid copying code defects into expected results.
- State the oracle: how each test decides whether behavior is acceptable.
- Tie every important test group to a risk, rule, transition, contract, or invariant.
- Prefer the smallest set that preserves meaningful distinctions. Do not multiply equivalent examples.
- Distinguish a test idea, a manually executed test, and an automated check.
- State untested dimensions and residual risk.

## Workflow

### 1. Frame the test mission

Summarize the change, users, critical outcomes, failure impact, scope, constraints, and available evidence. If behavior is materially ambiguous, first apply `$qa-clarify-requirements` or make explicit assumptions.

### 2. Select test models

Choose models that match the problem:

- equivalence partitions and boundaries for input domains;
- decision tables for interacting business rules;
- state machines for lifecycle behavior;
- sequence models for ordering, retry, interruption, and concurrency;
- data-flow and trust-boundary models for integration and security;
- properties and invariants for broad generated input spaces;
- use-case or journey models for end-to-end value.

Read `references/test-design-heuristics.md` for selection and reduction guidance.

### 3. Derive specification-based tests

For each model, cover:

- representative valid behavior;
- invalid and rejected behavior;
- boundaries and just-outside-boundary values;
- empty, missing, duplicate, malformed, extreme, and unexpected data where relevant;
- alternate states and transitions;
- failures of dependencies and recovery behavior;
- permissions, time, ordering, concurrency, and idempotency where relevant.

Make expected observations precise. Include state changes and side effects, not only returned values or visible screens.

### 4. Add structural tests

Inspect implementation details only after the behavioral pass. Look for untested branches, exception paths, loops, conditions, integrations, data conversions, caches, and concurrency controls. Use coverage to find gaps, never as proof of quality.

Use mutation testing when practical to assess whether checks can detect meaningful implementation changes. Treat surviving mutations as investigation leads, not an automatic demand for more tests.

### 5. Reduce and prioritize

Remove tests that exercise the same condition without adding information. Use pairwise or other combinatorial selection when many independent factors interact, while retaining known high-risk combinations explicitly.

Prioritize by failure impact, likelihood, change frequency, fault history, observability, and recovery cost. Mark smoke, release-critical, regression, and extended coverage when those labels help execution.

### 6. Choose execution level

Place each automated check at the lowest level that provides sufficient confidence and a useful failure signal. Balance fast component checks, integration/contract checks, and a small number of end-to-end checks. Keep exploratory work for risks that require human learning and adaptation.

### 7. Deliver the design

Use `references/output-template.md`. Include:

1. scope and assumptions;
2. risk-to-test map;
3. selected models and why;
4. prioritized test cases or test ideas with observable oracles;
5. proposed automation level;
6. data, environment, and observability needs;
7. coverage gaps and residual risk.

If asked to implement tests, follow the project's test style and verify the resulting suite. Do not invent unavailable fixtures, endpoints, selectors, or expected values without labeling them.
