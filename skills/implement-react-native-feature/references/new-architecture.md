# React Native New Architecture

Verify the installed React Native version before following exact commands. The durable model is:

- Fabric is the renderer used by the New Architecture.
- JSI enables direct JavaScript/native interfacing without the legacy asynchronous bridge model.
- Turbo Native Modules expose native capabilities through typed specifications.
- Codegen converts TypeScript or Flow specifications into platform interfaces and boilerplate.
- The modern renderer supports concurrent React behavior and synchronous layout use cases.
- Hermes is the commonly bundled JavaScript runtime, but inspect project configuration rather than assuming.

## Dependency review

Before adding a native dependency, check:

1. compatibility with the installed React Native version and New Architecture;
2. Android and iOS support and minimum OS versions;
3. autolinking and Codegen requirements;
4. maintenance, release cadence, unresolved native crashes, and migration notes;
5. Expo compatibility if the project uses Expo;
6. whether a platform API or existing project dependency already solves the need.

## Custom native work

Prefer an existing maintained integration when its behavior and risk fit. If custom work is necessary:

1. define a narrow typed JavaScript specification;
2. design explicit nullability, errors, events, cancellation, and threading semantics;
3. generate platform interfaces with the project's Codegen workflow;
4. implement Android and iOS behavior behind the same semantic contract;
5. test missing capability, denied permission, process recreation, and platform-specific failure;
6. measure serialization and threading costs rather than assuming JSI makes the feature fast.

Current official sources:

- Architecture: https://reactnative.dev/architecture/landing-page
- Native modules: https://reactnative.dev/docs/turbo-native-modules-introduction
- Native components: https://reactnative.dev/docs/fabric-native-components-introduction
- Codegen: https://reactnative.dev/docs/the-new-architecture/using-codegen
