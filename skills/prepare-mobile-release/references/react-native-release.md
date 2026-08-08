# React Native Release Routing

First identify whether the project uses bare React Native or Expo and whether updates are delivered through a native store build, an over-the-air system, or both.

Official sources:

- Android publishing: https://reactnative.dev/docs/signed-apk-android
- iOS publishing: https://reactnative.dev/docs/publishing-to-app-store
- React Native environment: https://reactnative.dev/docs/set-up-your-environment
- Expo EAS Build, when used: https://docs.expo.dev/build/introduction/
- Expo Submit, when used: https://docs.expo.dev/deploy/submit-to-app-stores/
- Expo Updates, when used: https://docs.expo.dev/eas-update/introduction/

## Repository checks

- Confirm React Native, React, Node, package manager, Gradle, Android plugin, Kotlin, CocoaPods, Ruby, Xcode, and Hermes or runtime configuration.
- Confirm New Architecture and Codegen behavior in the candidate build.
- Resolve dependencies from the committed lockfile and run native installation in clean automation.
- Generate and archive JavaScript source maps and native symbols for the exact artifact.
- Verify Android product flavors and iOS schemes or Expo profiles map to the correct IDs and services.

## Over-the-air updates

Treat the native runtime version as a compatibility boundary. Do not deliver JavaScript that requires unavailable native modules, changed Codegen contracts, entitlements, permissions, or native resources. Define channel targeting, rollout, rollback, and monitoring separately from store rollout.

## Verification

Install the signed release candidate and verify startup, bundle loading, deep links, push, native modules, gestures, maps, permissions, source-map symbolication, and both platforms. Development-server success does not verify a packaged bundle.
