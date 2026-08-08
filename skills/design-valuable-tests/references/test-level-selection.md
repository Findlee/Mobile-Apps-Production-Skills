# Test Level Selection

Select by risk and realism, not by a fixed pyramid quota.

## Unit test

Choose when meaningful behavior can execute in process without replacing collaborators whose semantics matter. Strong targets include domain decisions, algorithms, value transformations, parsers, state machines, and pure policy.

The unit may be a cohesive graph of classes. Do not require one test class per production class.

## Integration test

Choose when confidence depends on real integration semantics: database queries/constraints/transactions, serialization, framework configuration, filesystem behavior, dependency adapters, or observable outbound contracts.

Keep domain policy independently testable where practical, then use integration tests for orchestration and boundaries.

## End-to-end test

Choose for a small set of high-value journeys, deployment/wiring confidence, and failures that only emerge across the complete system. Keep the set small because feedback and diagnosis are expensive.

## Contract test

Use to protect an independently evolving boundary or external provider/consumer expectation. Define who owns the contract and how compatibility is verified.

## Other evidence

Use static analysis, property-based tests, model-based tests, load/failure tests, accessibility checks, security analysis, exploratory testing, or production monitoring when examples at one test level do not address the risk.

## Decision questions

1. What regression must this catch?
2. Which real semantics are required?
3. What is the cheapest stable observation point?
4. How fast must feedback arrive?
5. Would a safe refactoring break the test?

Conceptual lineage: classical unit testing, test pyramids as portfolios, and architecture test boundaries.
