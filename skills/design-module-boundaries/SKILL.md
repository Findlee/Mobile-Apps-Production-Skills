---
name: design-module-boundaries
description: Design or assess source-code module boundaries, APIs, packaging, dependency direction, information hiding, public surface area, and compile-time enforcement. Use when modularizing a codebase, reorganizing packages or features, applying dependency inversion pragmatically, removing circular dependencies, reducing interface or layer proliferation, isolating domain policy from infrastructure, or making intended architecture visible and enforceable in code.
---

# Design Module Boundaries

Optimize for lower cognitive load and localized change. A boundary is useful when it hides knowledge, protects policy, or separates a real rate or reason for change.

## Observe the actual structure

1. Inspect imports, calls, data access, construction, runtime callbacks, build modules, and access modifiers.
2. Trace representative change requests through the code.
3. Compare intended diagrams or folder names with enforceable dependencies.
4. Record cycles, bypasses, shared mutable data, and public implementation details.

## Diagnose before splitting

Look for information leakage, shallow modules, pass-through methods, duplicated policy, temporal decomposition, feature envy, shotgun surgery, and abstractions with no meaningful variation.

Read [design-red-flags.md](references/design-red-flags.md) to diagnose symptoms and [boundary-heuristics.md](references/boundary-heuristics.md) to generate boundary candidates.

Do not split a large module solely because of size. A deep module may hide substantial complexity behind a simple interface.

## Design candidates

1. Group knowledge and policy that change together.
2. Separate general-purpose mechanisms from special-purpose policy.
3. Give each layer or module a distinct abstraction rather than repeating the same API.
4. Pull unavoidable complexity behind the boundary that can handle it once.
5. Make the common path simple; do not expose rare options to every caller.
6. Minimize the published surface and keep implementation types private.
7. Introduce an interface only for a real boundary, substitutability need, or valuable external interaction—not by default for every class.

Read [dependency-principles.md](references/dependency-principles.md) when deciding dependency direction and [packaging-options.md](references/packaging-options.md) when choosing a code organization.

## Evaluate the candidates

Walk at least three likely changes through each candidate. Prefer the design that:

- localizes knowledge and change;
- preserves important invariants;
- has a smaller, more stable interface;
- avoids circular or chatty collaboration;
- makes misuse difficult;
- fits team and build constraints;
- adds the least unjustified machinery.

## Enforce and migrate

Choose the cheapest reliable enforcement: language visibility, package/module boundaries, separate build targets, dependency rules, or architecture tests. Read [enforcement-options.md](references/enforcement-options.md).

Migrate incrementally:

1. Establish a target contract.
2. Route one behavior through it.
3. Move policy and data ownership in coherent steps.
4. Restrict old access after callers migrate.
5. Remove adapters and obsolete public surfaces.

## Produce the result

Include the actual dependency map, change drivers, diagnosed leaks, candidate boundaries, chosen responsibilities, public contracts, allowed/forbidden dependencies, enforcement, migration sequence, and validation.

Do not confuse folders with boundaries. Do not maximize layers. Do not use dependency inversion mechanically. Do not leave a proposed rule dependent only on developer memory when a simple enforcement mechanism exists.
