---
name: implement-react-native-feature
description: Implement or revise an end-to-end feature in an existing React Native and TypeScript application while respecting its React model, navigation, state and data ownership, native-platform architecture, Expo or bare workflow, and verification practices. Use when editing React Native screens, components, hooks, stores, server-state flows, navigation, lists, forms, animations, persistence, native modules, or feature tests. Do not use for web-only React work, architecture-only analysis, pure performance diagnosis, or release preparation.
---

# Implement a React Native Feature

Fit the feature to the repository's actual React Native generation, runtime, and workflow. Build a verified vertical slice and keep render logic pure.

## Establish the runtime and conventions

1. Inspect `package.json`, lockfiles, TypeScript and lint configuration, React Native and React versions, New Architecture settings, Hermes, platform projects, and whether Expo or a bare workflow is used.
2. Inspect navigation, state ownership, server-state handling, persistence, styling, native dependencies, and test commands.
3. Trace one neighboring feature from route through component state and data boundary to external effects.
4. Check library compatibility with the installed React Native generation before adding or upgrading anything.
5. Use current official documentation for exact APIs and build instructions.

Read [current-sources.md](references/current-sources.md) for source routing and freshness rules.

## Model React behavior

1. Keep components and hooks pure and idempotent for their inputs.
2. Store the minimum state necessary; derive values that can be computed during render.
3. Place state at the nearest owner shared by every consumer, but do not lift unrelated state globally.
4. Use effects only to synchronize with systems outside React. Do not use an effect to reproduce ordinary data derivation or event handling.
5. Model asynchronous and workflow states so invalid combinations cannot occur.
6. Treat props, state, hook values, and published data as immutable snapshots.

Read [react-and-typescript.md](references/react-and-typescript.md) for component, hook, state, and type-system decisions.

## Implement the native feature path

1. Define typed boundary inputs, outputs, failures, and cancellation behavior.
2. Implement the data or platform adapter before binding it to UI state when the feature crosses a boundary.
3. Add a hook, store action, reducer, query, or controller consistent with the project.
4. Render loading, usable data, empty, failure, retry, and permission states that the user can observe.
5. Wire navigation and deep links using the installed navigation system.
6. Handle keyboard, safe areas, text scaling, orientation or width changes, and accessibility where relevant.
7. Use virtualized lists for large collections and stable keys for real item identity.
8. Keep platform differences explicit and small.

Read [react-native-platform.md](references/react-native-platform.md) for screens, lists, navigation, lifecycle, gestures, and platform behavior.

## Respect the current architecture

Assume New Architecture compatibility matters. Do not design around the legacy bridge without evidence that the project intentionally remains there. Use typed Codegen contracts for custom native modules or components when the installed version supports them.

Read [new-architecture.md](references/new-architecture.md) before adding native code, choosing an incompatible dependency, or making claims about JSI, Fabric, TurboModules, Codegen, or concurrent rendering.

## Verify proportionally

1. Run the project's formatting, lint, and TypeScript checks.
2. Test domain and state transitions without rendering where that remains meaningful.
3. Test components through visible content, accessibility roles, and user interactions rather than internal props or hook calls.
4. Use integration or device tests for navigation wiring, persistence, native modules, permissions, deep links, gestures, and critical journeys.
5. Check both Android and iOS for platform-sensitive changes.
6. Measure performance in release builds; development behavior is not a valid baseline.
7. Report behavior delivered, checks run, platform coverage, and remaining compatibility risk.

If the main challenge is sync, performance, native code, or delivery, coordinate with `design-mobile-sync`, `diagnose-mobile-performance`, `integrate-native-capability`, or `prepare-mobile-release`. Use `design-valuable-tests` for a full portfolio and `refactor-safely` for preparatory restructuring.

Do not add global state because prop passing feels inconvenient. Do not use `any` at untrusted boundaries. Do not memoize by reflex. Do not assume a JavaScript component test verifies native implementation. Do not add a native module before checking maintained libraries and platform APIs.
