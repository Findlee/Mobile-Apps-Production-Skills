---
name: prepare-mobile-release
description: Prepare, review, automate, or troubleshoot a Flutter or React Native mobile release from environment configuration through signed artifacts, store submission, staged rollout, monitoring, and recovery. Use for Android or iOS versioning, flavors and schemes, signing, entitlements, permissions, secrets, CI builds, dependency locking, release tests, upgrade compatibility, privacy declarations, store readiness, phased rollout, hotfixes, or rollback planning.
---

# Prepare a Mobile Release

Treat a mobile release as a compatibility event involving code, stored data, server contracts, operating systems, and users who may not update immediately.

## Establish release identity

1. Identify the commit, application ID or bundle ID, human version, build number, channel, environment, and target stores.
2. Confirm framework, language, native toolchain, minimum OS, and dependency lock state.
3. Map development, preview or staging, and production configuration without embedding production secrets in source or the app binary.
4. Confirm signing ownership, certificate and profile validity, keystore protection, and recovery access.
5. Enumerate permissions, capabilities, entitlements, native SDKs, privacy declarations, and policy-sensitive behavior.

Read [release-controls.md](references/release-controls.md) and start [mobile-release-checklist.md](assets/mobile-release-checklist.md).

## Build reproducibly

1. Build from a clean checkout in the same automation intended for release.
2. Resolve dependencies from lockfiles and pin toolchain images or versions where practical.
3. Generate environment-specific assets and configuration from reviewed inputs.
4. Produce signed Android and iOS artifacts without exposing credentials in logs.
5. Record artifact hashes, symbols or source maps, build metadata, and provenance needed for diagnosis.

For stack details, read [flutter-release.md](references/flutter-release.md) or [react-native-release.md](references/react-native-release.md).

## Run release gates

Verify:

- static analysis, type checking, and the relevant automated suite;
- critical journeys on release candidates;
- clean install, upgrade from supported production versions, logout and account switch;
- local database and queued-operation migrations;
- offline and degraded-network behavior;
- deep links, notifications, permissions, native capabilities, and background transitions;
- startup and critical-path performance in release mode;
- accessibility and representative devices;
- server compatibility with old and new clients.

Do not let a store-upload success stand in for application verification.

## Submit and control rollout

1. Prepare store metadata, disclosures, review notes, screenshots, content ratings, and support information.
2. Upload symbols and source maps to the configured diagnostics service.
3. Release to internal or closed testing before production when risk warrants it.
4. Use staged or phased rollout with named halt criteria.
5. Watch crashes, hangs, startup, authentication, sync, payment or core-domain failure, and support signals by app version.
6. Keep a responsible owner available through the observation window.

Read [rollout-and-recovery.md](references/rollout-and-recovery.md) for compatibility and incident actions.

## Close the release

Record artifact identifiers, store status, rollout percentage, observed metrics, issues, decisions, and recovery readiness. Rotate temporary credentials and remove temporary release flags only when safe.

Coordinate with `design-mobile-sync` for queued-data compatibility, `diagnose-mobile-performance` for release regressions, `integrate-native-capability` for entitlements and platform configuration, and `plan-feature-change` for migration sequencing.

Do not assume installed clients can be rolled back. Do not ship a server-breaking contract that requires immediate adoption. Do not store signing material or production secrets in the repository. Do not publish an over-the-air update across an incompatible native-runtime boundary.
