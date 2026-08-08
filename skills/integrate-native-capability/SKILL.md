---
name: integrate-native-capability
description: Design, implement, review, or migrate a native device capability used from Flutter or React Native, including library selection, permissions, typed cross-language contracts, lifecycle and threading, platform differences, events, cancellation, privacy, fallback behavior, and device verification. Use for camera, location, maps, notifications, biometrics, files, Bluetooth, background work, media, sensors, platform views, custom Flutter plugins or channels, and React Native TurboModules or Fabric components.
---

# Integrate a Native Capability

Treat the native boundary as a versioned external contract. Prefer a maintained existing integration when it satisfies the behavior and risk; write custom native code only when its value is explicit.

## Define the capability contract

1. Describe the user outcome and why native access is required.
2. List supported platforms, minimum OS versions, hardware assumptions, simulator limitations, and fallback behavior.
3. Define permission timing, denied and permanently denied behavior, settings recovery, and behavior after revocation.
4. Classify data sensitivity, retention, logging, transport, and store-disclosure obligations.
5. Define operations, events, errors, cancellation, ordering, thread affinity, and lifecycle ownership.

Read [boundary-contract.md](references/boundary-contract.md) and use [native-capability-plan.md](assets/native-capability-plan.md).

## Choose reuse or custom implementation

Evaluate existing packages against:

- compatibility with locked framework and platform versions;
- New Architecture, Codegen, plugin, or embedding support;
- maintenance and unresolved crash history;
- API surface, permission scope, privacy behavior, and binary impact;
- Android and iOS parity and documented differences;
- testability, fallback, licensing, and migration path.

If a package fits, wrap only when the application needs a stable semantic boundary, testing seam, or vendor isolation. Do not create a pass-through wrapper by habit.

## Implement the boundary

For Flutter, read [flutter-integration.md](references/flutter-integration.md). For React Native, read [react-native-integration.md](references/react-native-integration.md).

1. Define the typed cross-language contract before platform implementations.
2. Keep domain policy outside native mechanism code.
3. Translate platform-specific failures into a small stable application vocabulary while preserving diagnostic cause.
4. Avoid blocking UI threads; make thread switches explicit.
5. Tie event streams, callbacks, handles, and resources to a named owner and cleanup point.
6. Handle unsupported hardware, unavailable service, interruption, revocation, process recreation, and multiple invocations.
7. Keep Android and iOS semantics aligned even when implementation differs.

## Verify on the real boundary

Use [device-test-matrix.md](references/device-test-matrix.md). Include focused host-language tests, contract tests, framework integration tests, and representative physical-device journeys. Test permission recovery and lifecycle interruption, not just the happy path.

Coordinate with `implement-flutter-feature` or `implement-react-native-feature` for UI delivery, `design-mobile-sync` for durable background data, `diagnose-mobile-performance` for high-frequency or media workloads, and `prepare-mobile-release` for entitlements and store configuration.

Do not request a permission before the user reaches the relevant action. Do not pass unvalidated maps or `any` values across the boundary. Do not assume callbacks arrive once, in order, or while the original screen is alive. Do not place secrets in deep links, logs, or generated client configuration.
