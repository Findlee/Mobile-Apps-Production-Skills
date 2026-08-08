---
name: qa-test-mobile-app
description: Design, review, execute, or improve risk-based testing for iOS, Android, native, hybrid, cross-platform, or mobile web applications. Use for mobile test strategy, device and OS coverage, lifecycle and interruption tests, permissions, sensors, install and upgrade, offline and network behavior, accessibility, performance, battery, privacy, security, store readiness, rollout, or mobile automation. Verify time-sensitive platform and store rules from official sources before treating them as current.
---

# Test Mobile Apps

Build mobile coverage around users, platform behavior, device diversity, lifecycle risk, and product architecture. Avoid exhaustive device lists and generic desktop-style checklists.

## Operating rules

- Match the user's language and project stack.
- Inspect product goals, supported platforms, analytics, architecture, release channels, existing tests, and incident history when available.
- Separate facts from assumptions, especially for supported OS versions, devices, store rules, and accessibility targets.
- Use real devices for risks that emulators or simulators cannot represent faithfully; use virtual devices for fast, repeatable breadth.
- Prioritize the device matrix from actual users and risk rather than market-share folklore.
- Verify living platform, store, security, and accessibility guidance through the official sources in `references/current-sources.md` when the answer depends on current rules.
- State untested configurations and residual risk.

## Workflow

### 1. Frame the mobile mission

Identify users, critical journeys, business impact, app type, platforms, minimum and target OS versions, device capabilities, distribution channels, regions, data sensitivity, release stage, and relevant architecture.

Clarify whether the task is strategy, test design, hands-on execution, automation, release assessment, or defect investigation. Do not claim execution without access to a runnable build or evidence.

### 2. Build a risk-based coverage matrix

Select representative dimensions:

- OS versions and vendor variations;
- screen size, density, orientation, foldable or tablet layout;
- memory, storage, CPU, battery, and thermal conditions;
- locale, language, time zone, font scale, and accessibility settings;
- network type, latency, loss, transitions, offline periods, VPN, and captive portals;
- hardware and services such as camera, biometrics, location, notifications, Bluetooth, and background execution.

Use production telemetry and target-user data when available. Read `references/mobile-heuristics.md` and use `references/output-template.md` for the final matrix.

### 3. Test core behavior and lifecycle

Cover critical journeys first, then examine:

- cold, warm, and background starts;
- foreground/background transitions and process death;
- rotation, resizing, multitasking, locking, and unlocking;
- calls, notifications, permission prompts, audio changes, and other interruptions;
- network loss, reconnection, switching transports, retry, duplicate submission, and synchronization;
- install, first launch, update, migration, rollback constraints, logout, account switching, clearing data, low storage, and uninstall/reinstall;
- external links, deep links, system apps, share sheets, and returning to the app.

Observe visible behavior, persisted state, server-side effects, logs, analytics, notifications, and data integrity.

### 4. Evaluate mobile quality attributes

Prioritize relevant attributes:

- accessibility and assistive technologies;
- responsiveness, startup, memory, network use, battery, and thermal behavior;
- privacy, secure storage, transport, authentication, authorization, screenshots, backups, logs, and sensitive notifications;
- reliability, recovery, conflict resolution, and data consistency;
- localization, content expansion, input methods, and bidirectional layout;
- compatibility with supported OS policies and form factors.

Use OWASP MASVS/MASTG as a security testing baseline and platform guidance for implementation-specific expectations. Do not present a baseline as proof that the app is secure.

### 5. Plan automation and environments

Automate stable, high-value checks at the lowest useful layer: unit/component, service/contract, platform integration, then a focused UI journey set. Keep device-cloud or real-device coverage for behaviors that require it. Design deterministic accounts, data reset, permissions, clocks, network controls, and diagnostic artifacts.

### 6. Assess release and rollout

Check current store and platform requirements from official sources. Assess signing/configuration, permissions and privacy declarations, release build behavior, upgrade paths, crash-free critical journeys, observability, staged rollout, rollback or kill-switch options, and post-release signals.

### 7. Deliver the strategy or report

Use `references/output-template.md`. Include:

1. scope, platform facts, and assumptions;
2. prioritized mobile risks;
3. device/OS/environment matrix with rationale;
4. critical functional and lifecycle scenarios;
5. quality-attribute coverage;
6. automation and manual/exploratory split;
7. release and production checks;
8. omissions, evidence limits, and residual risk.
