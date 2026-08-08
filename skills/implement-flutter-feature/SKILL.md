---
name: implement-flutter-feature
description: Implement or revise an end-to-end feature in an existing Flutter and Dart application while respecting its architecture, state-management approach, navigation, data ownership, platform behavior, and verification practices. Use when editing Flutter widgets, view models or controllers, repositories and services, Riverpod or BLoC flows, routing, networking, persistence, streams, isolates, plugins, or feature tests. Do not use for framework selection, architecture-only analysis, pure performance diagnosis, or release preparation.
---

# Implement a Flutter Feature

Deliver a working vertical slice that fits the application already present. Inspect before choosing packages or patterns. Keep framework APIs at the edge and make state transitions explicit.

## Establish the local conventions

1. Inspect `pubspec.yaml`, the Dart and Flutter constraints, enabled platforms, lints, code generation, routing, state management, persistence, and test layout.
2. Trace one neighboring feature from route or entry point through UI state, business decisions, repository or service, and external effects.
3. Identify generated files and their source definitions. Never hand-edit generated output.
4. Confirm the requested behavior, failure states, interrupted states, permissions, and offline expectations.
5. Check current official documentation before introducing an exact API, package, build setting, or migration.

Read [current-sources.md](references/current-sources.md) when framework behavior or package advice could have changed.

## Model the slice

1. Distinguish ephemeral widget state from feature or application state.
2. Model loading, usable data, empty, failure, refreshing, and submitted states only when the user can observe or the workflow must distinguish them.
3. Keep widgets declarative. Move data access and nontrivial decisions out of `build` methods and event closures.
4. Keep one source of truth for mutable feature data and use unidirectional flow from state to UI and intents back to the owner.
5. Reuse the project's state-management mechanism unless a concrete limitation makes migration part of the request.

Read [flutter-state-and-data.md](references/flutter-state-and-data.md) for state ownership, repositories, data models, and dependency rules.

## Implement the end-to-end path

1. Define or adjust the data contract and failure vocabulary at the boundary.
2. Implement repository or service behavior before wiring presentation state when external data is involved.
3. Add the view model, notifier, cubit, bloc, controller, or equivalent state owner used by the project.
4. Build the smallest UI that exposes the complete behavior, including progress, empty, failure, retry, and cancellation where relevant.
5. Wire routing and deep-link behavior through the established router.
6. Add responsive and accessible semantics as part of the slice, not as final polish.
7. Isolate native or plugin details behind a narrow application-facing contract.

Read [flutter-ui-and-navigation.md](references/flutter-ui-and-navigation.md) for widget identity, layout, lists, navigation, and accessibility.

## Handle Dart execution correctly

Use `Future` for one eventual result and `Stream` for a sequence with meaningful lifetime semantics. Cancel subscriptions owned by disposable objects. Use isolates for measured CPU-bound work that would block responsiveness, not for ordinary asynchronous I/O.

Read [dart-concurrency-and-errors.md](references/dart-concurrency-and-errors.md) for error boundaries, Futures, Streams, isolates, and current-language cautions.

## Verify proportionally

1. Format and analyze the touched code using the project's commands.
2. Run focused unit tests for state transitions and domain decisions.
3. Run widget tests for observable states, interaction, routing, and dependency wiring.
4. Run integration or device checks for plugins, native UI, permissions, deep links, storage semantics, and critical journeys.
5. Use profile or release mode for performance claims.
6. Test at least one constrained screen or text scale and each affected platform.
7. Report files changed, behavior delivered, checks run, and remaining platform or data risk.

If the main challenge is sync, performance, native code, or delivery, coordinate with `design-mobile-sync`, `diagnose-mobile-performance`, `integrate-native-capability`, or `prepare-mobile-release`. Use `design-valuable-tests` for a full test strategy and `refactor-safely` for preparatory restructuring.

Do not add a domain layer, interface, code generator, or state-management library by reflex. Do not retain a `BuildContext` past its safe lifecycle. Do not assume connectivity means a request will succeed. Do not call an emulator-only check sufficient for hardware-dependent behavior.
