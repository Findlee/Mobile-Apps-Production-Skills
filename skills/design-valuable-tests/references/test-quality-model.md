# Test Quality Model

## Four attributes

### Protection against regressions

Increase by executing meaningful production behavior, using representative inputs, and including code that can plausibly fail. Trivial assertions and excessive mocking reduce protection.

### Resistance to refactoring

A test should fail when observable behavior changes incorrectly, not when implementation structure changes safely. False positives consume trust and slow design improvement.

### Fast feedback

Fast tests support frequent execution and small changes. Keep the broadest coverage fast, but do not replace realistic integration evidence with unrealistic doubles solely for speed.

### Maintainability

Favor focused scenarios, clear names, minimal setup, stable helpers, and diagnostic failures. Test code is production responsibility even when it is not shipped.

## Trade-off rule

Protection and refactoring resistance dominate. Speed and maintainability then determine how broadly and frequently the test can run. No single test maximizes all attributes; use a portfolio.

## Observable behavior

Judge behavior from a consumer's perspective. A public method can expose an implementation detail; a non-public effect can still be externally observable through a system contract. Visibility modifiers alone do not define behavior.

## Coverage

Use uncovered code to ask whether important behavior lacks protection. Do not infer quality from a percentage. A high metric can coexist with weak assertions, trivial paths, or tests coupled to implementation.

## Delete or rewrite when

- a test cannot catch a meaningful regression;
- false positives are common;
- setup cost overwhelms the behavior checked;
- another test protects the same behavior more realistically;
- the behavior no longer exists;
- the test asserts duplicated production logic rather than outcomes.

Conceptual lineage: sustainable-growth testing and four-pillar test evaluation.
