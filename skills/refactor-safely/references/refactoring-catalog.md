# Compact Refactoring Catalog

Compose these moves in small verified sequences.

## Clarify and extract

- Rename variable, field, or function.
- Extract function; inline function when indirection hides rather than clarifies.
- Extract variable; inline variable when the expression is clearer.
- Split phase to separate transformation, calculation, orchestration, or presentation.
- Replace inline code with a named existing operation.

## Encapsulate data

- Encapsulate variable, record, or collection.
- Replace primitive with a value object.
- Split a variable serving multiple purposes.
- Replace a derived mutable variable with a query.
- Change reference/value semantics only with identity analysis.

## Move responsibility

- Move function or field toward the knowledge it needs.
- Extract class/module around coherent hidden information.
- Inline a class/module that no longer hides meaningful complexity.
- Combine related functions into a class/transform when shared context is real.

## Simplify control flow

- Decompose conditional.
- Consolidate equivalent conditions.
- Replace nesting with guard clauses.
- Introduce a special case/null object for repeated exceptional handling.
- Replace a repeated policy switch with polymorphism/strategy only when extension and variation justify it.
- Split a loop or replace it with a pipeline when phases become clearer; measure performance when critical.

## Improve APIs

- Change function declaration or introduce a parameter object.
- Separate query from modifier when side effects surprise callers.
- Remove flag arguments by exposing intent-revealing operations.
- Preserve whole object or replace parameter with query when it reduces leakage without hiding dependencies.
- Replace constructor with factory when creation policy deserves a name/boundary.
- Remove setting methods that violate invariants.

## Migrate dependencies

- Introduce an adapter or branch by abstraction.
- Move one caller at a time.
- Compare old/new behavior when risk warrants it.
- Remove the obsolete path and temporary seam after migration.

Conceptual lineage: the refactoring catalog and incremental design.
