# Flutter State and Data Decisions

## State ownership

- Keep short-lived visual state close to the widget when no other behavior needs it.
- Move shared, persisted, remotely sourced, or workflow state to the feature's established state owner.
- Represent impossible combinations out of the model. Prefer a sealed state family or an equivalent explicit state machine when independent booleans can contradict one another.
- Derive display values rather than storing duplicate state.
- Treat widget inputs and published state as immutable snapshots.

## Unidirectional flow

Use this default direction:

1. A repository or service publishes data or an operation result.
2. A view model, notifier, cubit, bloc, or controller converts it into presentation state.
3. Widgets render the state.
4. User actions invoke intents on the state owner.

Avoid widgets directly coordinating multiple data sources or mutating repository-owned models.

## Repositories and services

- Give a repository ownership of a coherent set of application data, not every HTTP endpoint.
- Let services wrap external mechanisms such as HTTP, a database, files, plugins, or platform APIs.
- Make the repository the source of truth when it combines local and remote sources.
- Introduce an abstract repository when multiple implementations, test fakes, environments, or a stable boundary justify it.
- Do not mirror API, database, domain, and UI models automatically. Separate models when their constraints or change drivers differ enough to repay conversion cost.

## Dependency choice

Prefer constructor injection or the dependency mechanism already used by the project. Keep dependencies scoped to their real lifetime. Avoid hidden mutable singletons and service locators in business code; if the project uses a locator, confine lookup to composition code.

## State-management selection

Do not migrate merely because another library is fashionable.

- `setState` or local listenables can be enough for contained ephemeral state.
- A project-wide provider, Riverpod, BLoC, or similar mechanism is appropriate when the existing app already relies on it or the feature needs shared lifetime, dependency composition, or explicit event/state handling.
- MVVM, MVI, and BLoC are ways to assign responsibility and flow. The value comes from explicit ownership and predictable updates, not the label.

## Data-boundary checks

- Validate and decode untrusted external data before it enters trusted application state.
- Give failures stable application meanings instead of leaking transport exceptions into widgets.
- Preserve stable identifiers across local and remote representations.
- Decide whether a write is committed locally, remotely, or only after both; make the UI wording match that promise.
