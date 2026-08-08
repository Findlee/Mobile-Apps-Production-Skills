# React Native Native Integration

Current sources:

- Architecture: https://reactnative.dev/architecture/landing-page
- Turbo Native Modules: https://reactnative.dev/docs/turbo-native-modules-introduction
- Fabric Native Components: https://reactnative.dev/docs/fabric-native-components-introduction
- Native platform guide: https://reactnative.dev/docs/native-platform

## Selection

Use a maintained New-Architecture-compatible package when it meets the contract. If the project uses Expo, verify whether an Expo module and config plugin already provide the capability.

Create a Turbo Native Module for non-visual native operations that need a custom bridge to Android or iOS. Create a Fabric Native Component when the application must render or control a native view. Do not create either for ordinary JavaScript logic.

## Typed specification

1. Define a narrow TypeScript or Flow specification supported by the installed Codegen.
2. Make nullability, sync versus async behavior, event payloads, and availability explicit.
3. Run Codegen through the repository's Android and iOS build workflows.
4. Implement generated interfaces on both platforms.
5. Keep the JavaScript-facing module name and registration consistent.

Do not pass arbitrary dictionaries when a typed record or finite variant is possible. Validate data originating outside the typed runtime.

## Lifecycle and threading

- Account for module initialization and invalidation.
- Keep subscriptions reference-counted or owned by a clear JavaScript object lifetime.
- Avoid synchronous native work that can block JavaScript or UI execution.
- Handle Activity and view-controller availability, foreground transitions, process recreation, and multiple React surfaces when relevant.
- Verify library compatibility instead of assuming the interoperability layer covers every behavior.

## Testing

Mock the native module only for JavaScript tests that are intentionally above the boundary. Add native implementation tests and device-level contract checks for real confidence. Test both missing and available modules when optional capability is part of the design.
