# Mobile testing heuristics

Use these prompts to select risk-relevant coverage. Do not run every prompt against every app.

## Device matrix selection

Select a small primary matrix that spans meaningful differences:

- most-used devices and OS versions from product telemetry;
- minimum supported and newest supported OS;
- low-resource and representative mainstream hardware;
- smallest and largest supported layouts, plus tablet/foldable if supported;
- platform/vendor behavior that affects permissions, background work, notifications, storage, or power;
- devices required for camera, biometrics, NFC, Bluetooth, location, or other hardware risks.

Add an extended matrix for scheduled compatibility checks. Record the user/risk represented by each row. Do not multiply devices that provide the same evidence.

## Lifecycle and interruption

- first launch, cold/warm start, background/foreground, process death, restart;
- lock/unlock, rotation, resizing, split screen, app switching;
- call, notification, alarm, permission dialog, audio route, keyboard change;
- low memory/storage/battery, thermal pressure, clock/time-zone change;
- interrupted input, upload, purchase, authentication, and synchronization;
- deep link from stopped/running states and return from external apps.

Verify preserved input, transaction state, duplicate prevention, sensitive-screen behavior, cleanup, and recovery.

## Network and data

Test offline start, mid-operation loss, slow/high-latency connections, packet loss, transport switching, captive portal, VPN/proxy where relevant, server timeout, retry, duplicate response, and stale cache. Follow local and remote state through conflict, eventual consistency, logout, account switching, clearing data, and reinstall.

## Permissions, privacy, and security

- ask at the point of need and handle deny, restricted, one-time, limited, revoked, and changed-in-settings states;
- minimize sensitive data in storage, backups, logs, screenshots, clipboard, notifications, analytics, and crash reports;
- verify authentication, authorization, session expiry, biometrics fallback, secure transport, deep-link validation, and exported components/interfaces;
- test data separation between users, profiles, tenants, and app installations;
- inspect third-party SDK behavior and data flows.

Use OWASP MASVS and MASTG to structure deeper security work. Security review may require specialist tools and expertise beyond this skill.

## Accessibility and localization

Exercise screen reader navigation, focus order, labels, roles, state announcements, actionable target size, contrast, text scaling, orientation, reduced motion, keyboard/switch input, captions, and error recovery as applicable. Test long translations, plural forms, bidirectional text, input methods, locale formats, and mixed-language content.

Automated accessibility checks catch only part of the risk; include assistive-technology and task-based human testing.

## Performance and reliability

Observe startup, frame responsiveness, memory growth, CPU, network volume, storage, battery, thermal effects, background work, crash/ANR/hang behavior, and recovery. Define user-facing budgets and representative device/network conditions before judging results.

## Installation and release

Cover fresh install, upgrade from materially used versions, migration with real data shapes, interrupted update where testable, release signing/configuration, production endpoints, store declarations, staged rollout, crash and performance signals, feature flags, and rollback or mitigation options.
