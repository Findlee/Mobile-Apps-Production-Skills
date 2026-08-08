# Dependency Principles

## Direct dependencies toward policy

Keep high-value, stable domain policy independent from volatile delivery, storage, framework, and device details when the separation buys meaningful change freedom. Dependency direction should follow the protected decision, not a universal diagram.

## Prefer stable contracts

A module depended on widely should expose a small, coherent contract. Stability without abstraction can create painful rigidity; abstraction without dependents or variation creates useless machinery.

## Use interfaces deliberately

An interface is justified when it:

- represents a genuine contract with multiple or independently evolving implementations;
- isolates an external or volatile detail from protected policy;
- permits a valuable test double at a system boundary;
- establishes a build/module boundary that the language can enforce.

An interface that mirrors one class and exists only by convention usually adds indirection without information hiding.

## Remove cycles at the knowledge level

Moving a cycle behind interfaces may remove a compile-time cycle while preserving runtime and cognitive coupling. Prefer returning values, publishing domain events, extracting shared policy, changing ownership, or introducing a higher-level coordinator.

## Separate commands and queries when it clarifies contracts

Avoid APIs that both return information and produce surprising effects. Do not apply separation mechanically when an atomic operation naturally does both from the caller's perspective.

## Delay details selectively

Keep replaceable infrastructure choices outside core policy when this is inexpensive. Do not build hypothetical adapters for every library; create seams where volatility or replacement risk is real.

Conceptual lineage: dependency inversion, stable dependencies, information hiding, YAGNI, and testable boundaries.
