# Testing Anti-patterns

## Implementation mirroring

Symptoms: one test per method/class; assertions on every internal call; safe refactoring breaks many tests. Recenter on units of observable behavior.

## Overspecified mocks

Symptoms: exact call order/counts where not contractual; mocks for domain collaborators; large setup graphs. Use real in-process behavior and verify only meaningful system-edge commands.

## Private-method testing

Symptoms: reflection or widened visibility exists only for tests. Test through the public behavior; extract a real concept only when it deserves its own contract.

## Leaked domain logic

Symptoms: expected results are computed with the same algorithm as production. Use concrete examples, properties, invariants, or an independent oracle.

## Shared mutable fixtures

Symptoms: tests depend on execution order or constructor/setup state that hides scenario data. Build focused fixtures per test or use explicit factories/builders.

## Multiple acts

Symptoms: one test walks many behaviors and failures are hard to diagnose. Split by behavior unless a single end-to-end journey is the actual unit under test.

## Coverage theater

Symptoms: tests are added to hit lines, trivial accessors dominate, assertions are weak. Return to risk and observable behavior.

## Fake mismatch

Symptoms: in-memory DB, fake clock, or fake queue behaves differently from production in the dimension under test. Use the real dependency or narrow the claim the test supports.

## Flakiness normalization

Symptoms: retries hide race conditions or environment leakage. Quarantine only temporarily; diagnose ownership, time, concurrency, external dependency, or cleanup.

Conceptual lineage: unit-testing anti-patterns and resistance to refactoring.
