---
name: qa-write-maintainable-tests
description: Write, review, refactor, or repair unit, component, integration, contract, and UI test code as maintainable software. Use for unclear or duplicated tests, fragile fixtures, assertion roulette, conditional test logic, excessive mocking, shared-state failures, slow or flaky suites, poor cleanup, weak names and diagnostics, parameterization decisions, or AI-generated tests that need engineering review. Focuses on test-code design rather than selecting product coverage or redesigning production architecture.
---

# Write Maintainable Tests

Create tests that clearly express the protected behavior, fail for useful reasons, and remain economical as the product changes. Treat test code as an executable explanation and a maintained software asset.

## Operating rules

- Match the user's language, framework, and established project conventions.
- Inspect the behavior, production interface, nearby tests, fixtures, helpers, and actual failure evidence before editing.
- Confirm what regression or rule the test must detect. Do not write tautological checks that merely reproduce implementation logic.
- Prefer direct, boring, local test code over clever abstraction. Extract helpers only when they preserve intent and reduce meaningful duplication.
- Keep failures diagnostic: show the expected behavior, relevant values, and one understandable reason for failure.
- Do not weaken assertions, add arbitrary sleeps, broaden retries, or delete valuable coverage merely to make a suite green.
- Modify production code only when the user requests it or when a narrowly scoped testability change is clearly part of the task; otherwise recommend `$qa-improve-testability`.
- Preserve unrelated user changes and report tests not run or evidence not obtained.

## Workflow

### 1. Establish the test's purpose

Identify the behavior, risk, regression, scope, oracle, and reason this test belongs at its chosen level. If coverage itself is unclear, use `$qa-design-tests`. If suite architecture and CI placement are the main problem, use `$qa-build-test-automation`.

For a review-only request, produce findings without editing. For an implementation or refactoring request, make the smallest coherent change and verify it.

### 2. Read the test as a specification

Check whether the name, setup, action, and assertions make the protected rule obvious without reading every helper. Trace the test's dependencies and state. Confirm that it can fail when the intended regression is introduced and does not pass for irrelevant reasons.

Read `references/test-code-heuristics.md` when selecting fixture, double, verification, or refactoring patterns.

### 3. Structure the test

Use a clear four-phase flow where useful:

1. setup or arrange;
2. exercise or act;
3. verify or assert;
4. teardown or cleanup.

Keep one coherent behavior per test. Multiple assertions are appropriate when they describe one outcome; split tests when failures represent different rules, setups, or diagnoses.

Use names that expose context, action, and expected outcome in the project's style. Prefer observable domain language over method names and ticket numbers alone.

### 4. Design fixtures and data

Choose the least expensive fixture that remains realistic and isolated. Prefer fresh or per-test mutable state. Use shared or standard fixtures only when their performance benefit outweighs coupling and when tests cannot mutate them unexpectedly.

Make relevant values visible. Use builders, factories, or helpers to hide incidental defaults without hiding the values that drive the behavior. Control identity, time, randomness, locale, network, and persistence at suitable seams.

Ensure cleanup works after both pass and failure. Avoid order dependence, shared mutable accounts, and manual intervention.

### 5. Choose doubles and verification

Distinguish stubs, spies, mocks, and fakes by role. Prefer state verification when externally visible state expresses the requirement. Use behavior verification when the interaction itself is the contract or observable effect. Avoid verifying incidental calls, ordering, or implementation structure that consumers do not depend on.

Retain selected real integration coverage for assumptions doubles cannot prove. Do not mock the unit into reproducing its own implementation.

### 6. Remove damaging smells

Prioritize smells that cause false confidence, unreliable results, high maintenance, slow feedback, or opaque failures. Refactor incrementally:

- clarify names and assertions;
- simplify setup and remove irrelevant data;
- eliminate conditional or looping test logic when it hides cases;
- isolate state and make completion deterministic;
- replace overspecified interactions;
- consolidate true duplication without building a test framework inside the project;
- delete obsolete or equivalent tests only after preserving risk coverage.

### 7. Verify trustworthiness

Run the smallest relevant test first, then the affected group or suite in proportion to the change. When flakiness or state leakage is suspected, repeat under varied order, parallelism, seed, or timing if the project supports it. Preserve the original failure evidence before rerunning.

Check that the test fails when the target behavior is deliberately broken only when mutation or a safe temporary change is practical and authorized. Revert temporary probes completely.

### 8. Deliver the result

Use `references/output-template.md` for reviews or substantial refactoring. Report:

1. behavior and risk protected;
2. findings or changes, ordered by impact;
3. fixture, double, assertion, and organization decisions;
4. verification performed and observed results;
5. remaining smells, gaps, and maintenance risks.
