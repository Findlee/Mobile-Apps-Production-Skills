# Test-code review and refactoring template

## Scope and protected behavior

- Files/tests reviewed:
- Behavior or regression protected:
- Intended test scope and oracle:
- Project conventions and constraints:
- Verification available:

## Findings

| Priority | Finding and evidence | Confidence/risk | Recommended pattern or change |
|---|---|---|---|
| P0 | File/line or observed failure | ... | ... |

Prioritize false confidence, nondeterminism, state leakage, missing assertions, and expensive maintenance over cosmetic preferences.

## Changes made

For each material change, explain the intent:

- naming and structure;
- fixture and data lifecycle;
- assertion/oracle;
- double and verification style;
- isolation, waiting, cleanup, or diagnostics;
- organization and parameterization.

## Verification

| Command or method | Scope | Result | Evidence limitation |
|---|---|---|---|
| ... | Single test / group / suite / repeated / parallel | ... | ... |

State whether the check was shown to catch the target regression or mutation when that was practical.

## Remaining risks

List unrun tests, unavailable dependencies, broader integration assumptions, known smells left in place, and recommended follow-up through `$qa-improve-testability`, `$qa-build-test-automation`, or `$qa-design-tests`.
