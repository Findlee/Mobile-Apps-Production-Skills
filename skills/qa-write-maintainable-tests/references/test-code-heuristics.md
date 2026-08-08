# Maintainable test-code heuristics

Load this reference for detailed review and refactoring choices. Diagnose the consequence before naming a smell; a pattern is useful only when it improves trust, clarity, isolation, or cost.

## Trustworthiness

- Does the test fail when the protected behavior is wrong?
- Can it pass because the assertion is weak, absent, tautological, or aimed at the wrong object?
- Can it fail because of unrelated state, time, ordering, infrastructure, or another assertion?
- Is the oracle independent enough to detect an implementation error?
- Does the failure preserve values and context needed for diagnosis?
- Is the test deterministic under supported order and parallel execution?

## Readability and four phases

Keep setup, exercise, verification, and cleanup recognizable even if framework syntax merges them. Name the test around context, action, and outcome. Keep relevant inputs and expected values visible near the assertion.

Avoid mystery guests, magic defaults, deep helper chains, generalized test DSLs, and control flow that requires executing the test mentally. Parameterization is valuable when rows express the same rule; split rows when setup, oracle, or diagnosis differs materially.

## Fixture choices

- **Minimal fixture:** create only objects required to expose the behavior. Prefer by default.
- **Fresh fixture:** create mutable state per test for strong isolation.
- **Shared fixture:** reuse expensive read-only or carefully sandboxed state when cost justifies coupling.
- **Standard fixture:** use a representative baseline when many tests genuinely share domain context; make deviations obvious.

Use builders or factories to provide safe incidental defaults. Avoid one giant fixture that hides preconditions and changes many tests for unrelated reasons.

For databases, choose isolation appropriate to the system: unique namespaces, transaction rollback when application behavior permits, truncation/reset, disposable databases, or immutable shared reference data. Verify cleanup after failed tests.

## Values

- Use literal values when they communicate the rule directly.
- Derive expected values only from an independent source, not the same algorithm as production.
- Generate values when broad domains matter; preserve seed and shrunk failing example.
- Use realistic identifiers, times, locales, encodings, and historical data shapes where they influence behavior.

## Test doubles

- **Stub:** supplies indirect input.
- **Spy:** records interaction for later verification.
- **Mock:** includes expectations about interaction.
- **Fake:** provides a working simplified implementation.

Use state verification for externally visible outcomes. Use behavior verification when an interaction is itself the contract, such as sending an irrevocable message or calling a required boundary. Avoid verifying every internal call, exact ordering without a requirement, or arguments unrelated to the behavior.

Keep selected tests with real frameworks, protocols, storage, and dependencies because doubles can encode the same misunderstanding as the code.

## High-value smells

### Obscure test

Symptoms: unclear purpose, distant data, generic names, many helpers, assertion roulette. Clarify the rule, inline relevant values, rename, and separate unrelated outcomes.

### Conditional test logic

Symptoms: branches, loops, swallowed exceptions, or assertions that may not execute. Create explicit cases or framework parameterization with independently visible results.

### Fragile test

Symptoms: breaks on harmless refactoring, UI layout, call sequence, formatting, or incidental data. Assert stable public behavior and reduce interaction over-specification.

### Erratic test

Symptoms: order dependence, shared state, clock/network races, random failures, resource leaks. Isolate data, control nondeterminism, wait for meaningful completion, and preserve evidence.

### Slow test

Symptoms: broad scope, repeated expensive setup, sleeps, unnecessary I/O. Move rules to a narrower scope, reuse only immutable expensive state, improve seams, and retain a focused broad check.

### Test-code duplication

Remove duplication that obscures intent or multiplies maintenance. Keep small repetition when it makes individual examples obvious. Extract domain-relevant builders and assertions rather than generic clever helpers.

### Test logic in production

Do not add behavior-changing test branches. Prefer dependency boundaries, public/admin capabilities with proper controls, or a Humble Object. Use `$qa-improve-testability` for production design changes.

## Refactoring safety

Preserve behavior coverage while refactoring. Run tests before and after. Make small changes, inspect failures, and avoid changing production behavior and test expectations simultaneously unless the task explicitly requires both. Delete a test only after identifying the risk and equivalent remaining evidence.
