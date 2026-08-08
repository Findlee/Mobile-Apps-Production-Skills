# Android Product-Quality Reference

Reviewed: 2026-08-08
Source type: dynamic official guidance

Re-check current Android/Google Play documentation for release-critical requirements and numeric thresholds.

## Core App Quality structure

Android Core App Quality defines a minimum quality baseline across:

- user experience;
- functionality;
- performance and stability;
- privacy and security;
- Google Play readiness.

## UX/product checks

Review:

- consistent experience across supported use cases/form factors;
- app switching/background/foreground behavior;
- sleep/lock/resume;
- orientation/fold/resizing state preservation;
- standard back and gesture navigation;
- relevant notification behavior;
- readable visuals and text;
- light/dark theme support where applicable.

## Accessibility checks

Current guidance includes:

- touch target sizing;
- contrast;
- content descriptions/semantics.

Verify current numeric requirements in official docs before using as release criteria.

## Performance/stability checks

Review available evidence for:

- startup responsiveness;
- rendering/jank;
- crashes;
- ANRs;
- SDK/platform compatibility;
- production build quality;
- battery/background behavior.

Android vitals currently treats user-perceived crash rate and user-perceived ANR rate as core vitals affecting Play visibility. Thresholds can change and must be refreshed from the official page.

## Privacy/permissions checks

Review:

- minimum permissions;
- sensitive permission relevance;
- contextual runtime permission request;
- permission rationale;
- graceful degradation after denial/revocation;
- sensitive data storage/logging;
- secure networking;
- third-party SDK responsibility.

## Test behavior

For critical flows, include interruptions such as:

- another app/phone call/notification;
- network change;
- battery/system load changes;
- app switcher;
- sleep/lock;
- orientation/fold changes;
- IAP flows.

## Official sources

Core App Quality
https://developer.android.com/docs/quality-guidelines/core-app-quality

Android Vitals
https://developer.android.com/topic/performance/vitals/
