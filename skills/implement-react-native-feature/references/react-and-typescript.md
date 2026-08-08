# React and TypeScript Decisions

## React model

- Components and hooks must be pure for current props, state, and context.
- Run side effects outside render and only to synchronize with an external system.
- Handle event-specific work in the event handler rather than encoding it as an effect driven by a flag.
- Derive values during render unless the value must persist independently.
- Use reducers when multiple events transition a cohesive state machine; do not use them merely to avoid `useState`.
- Keep context values focused and stable. Context is dependency delivery, not automatically a complete state architecture.

## State modeling

Prefer states such as:

```text
idle | loading | success(data) | empty | failure(error) | refreshing(data)
```

Adapt the set to observable behavior. Do not combine `isLoading`, `hasError`, `data`, and `isEmpty` if they can contradict one another.

Use discriminated unions for finite workflow states. Exhaustively handle variants when a missing case would be a bug.

## TypeScript boundaries

- Enable or preserve strict checking; do not weaken the project to satisfy one feature.
- Treat network JSON, storage, deep-link parameters, native results, and caught errors as `unknown` until validated or narrowed.
- Apply types to complete functions and boundary contracts so input-output relationships remain visible.
- Prefer domain-language types and stable identifiers over large bags of optional properties.
- Use unions that represent valid variants rather than interfaces with unrelated nullable fields.
- Hide an unavoidable assertion behind a small validated adapter.
- Keep generics only when they preserve a real relationship or eliminate duplication without obscuring errors.
- Test complex public types when their behavior matters to consumers.

## Memoization and concurrent behavior

Memoization is an optimization with cost and semantic consequences. Measure before adding `memo`, `useMemo`, or `useCallback`, except when stable identity is itself required by an external subscription or dependency contract.

Do not depend on render running exactly once. React may start, interrupt, repeat, or discard render work. Keep render free of mutations and externally visible effects. Use transitions only for non-urgent updates whose interruption improves responsiveness; never defer controlled input updates that must remain immediate.
