# Flutter Release Routing

Use current official deployment documentation rather than book-era commands:

- Deployment index: https://docs.flutter.dev/deployment
- Android release: https://docs.flutter.dev/deployment/android
- iOS release: https://docs.flutter.dev/deployment/ios
- Android flavors: https://docs.flutter.dev/deployment/flavors
- iOS flavors and schemes: https://docs.flutter.dev/deployment/flavors-ios
- Continuous delivery: https://docs.flutter.dev/deployment/cd
- Supported platforms: https://docs.flutter.dev/reference/supported-platforms

## Repository checks

- Confirm the Flutter and Dart constraints, native Gradle and Xcode projects, lockfile policy, and build modes.
- Verify flavor-specific IDs, names, icons, endpoints, entitlements, Firebase or service files, and diagnostics environments.
- Keep Android signing configuration and iOS signing assets outside public source.
- Build release artifacts through the repository's chosen commands and CI, not generic commands copied from a different Flutter generation.
- Preserve obfuscation symbol files when obfuscation is enabled.

## Verification

Run analyzer and tests, then install the actual signed candidate. Verify plugin registration, platform channels, deep links, notification entitlements, permission descriptions, database migrations, and release-mode performance on both platforms.

Flutter UI tests do not automatically cover native permission dialogs or platform views. Include device-level verification when the release depends on them.
