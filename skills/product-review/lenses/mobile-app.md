# Mobile App Review Lens

Reviewed: 2026-08-08

Use this lens when the reviewed product is a native or hybrid mobile app/game.

This is a product-quality lens, not a substitute for platform QA, security testing, legal review, or store certification.

## 1. Mobile value path

Map:

`Store/ad promise -> install/open -> first session -> first meaningful value -> repeat value -> monetization -> return/recovery`

Check whether mobile-specific friction blocks value:

- account creation before value;
- excessive permissions;
- large initial downloads;
- slow startup;
- orientation/layout issues;
- interruptions;
- network dependence;
- background/foreground transitions;
- store/payment lifecycle.

## 2. Platform consistency

Check that the app uses platform patterns unless deviation creates clear product value.

### Apple

Use current Human Interface Guidelines when platform-specific detail matters.

Current design-principle themes include:

- purpose;
- consistency/familiar patterns;
- flexibility/inclusion;
- simplicity;
- craft;
- delight.

Treat accessibility as a design priority from the start.

### Android

Use Android Core App Quality as the minimum quality baseline.

Current official guidance covers:

- consistent UX;
- standard navigation/back behavior;
- state preservation;
- adaptive display/orientation behavior;
- notifications;
- accessibility;
- performance and stability;
- privacy and security;
- Google Play readiness.

## 3. State and interruption resilience

For each critical flow, test/review:

- app -> background -> foreground;
- sleep -> wake;
- lock -> unlock;
- process death/relaunch where relevant;
- network lost/restored;
- phone call/system dialog/notification interruption;
- rotation/fold/resizing where supported;
- user leaves during purchase or onboarding;
- OS permission denied then later granted;
- deep link opens from cold/warm state.

The user should not lose critical progress or enter impossible states.

## 4. Permissions

Check:

- request only when the feature needs it;
- explain why the permission is useful;
- request the minimum privilege;
- provide graceful behavior after denial;
- do not block the entire app when permission is optional;
- handle later revocation;
- avoid repeated nagging without new context.

Permission acceptance itself is not a product outcome.

## 5. Payments/subscriptions/IAP

Where applicable, inspect:

- clear product/offer value;
- price, billing interval, trial and renewal clarity;
- purchase success/failure/pending states;
- duplicate tap/idempotency behavior;
- entitlement grant timing;
- reinstall/device change;
- restore purchases;
- cancellation/expiry/grace period;
- refund/revocation where relevant;
- offline state;
- account deletion vs entitlement lifecycle;
- analytics semantics.

A payment button that works on the happy path is not a complete subscription product.

## 6. Notifications

Check:

- relevance to the user's product job;
- timing/context;
- permission timing;
- channel/category quality;
- deep-link destination;
- stale-notification behavior;
- notification grouping;
- user controls;
- no dependence on notifications to rescue a weak core product.

## 7. Performance and stability

Product review should inspect available evidence for:

- startup time;
- screen responsiveness;
- jank/slow rendering;
- crash-free users/sessions;
- ANR on Android;
- memory/battery/network regressions;
- performance on key devices/OS versions;
- degraded backend/AI latency states.

Android vitals currently treats user-perceived crash rate and user-perceived ANR rate as core vitals affecting Play visibility. Verify current thresholds from the official source before using them as release criteria.

## 8. Accessibility

Check native platform accessibility plus the general accessibility lens:

- semantic labels for controls and meaningful images;
- screen reader navigation;
- larger text/dynamic text;
- sufficient contrast;
- non-color-only information;
- touch target size;
- reduce motion;
- focus/navigation with keyboard or alternative input where applicable;
- captions for essential media;
- accessible authentication;
- logical reading order.

Android Core App Quality currently references at least 48 dp touch targets and contrast baselines. Re-verify current official guidance before treating numeric values as release requirements.

Apple recommends supporting platform accessibility features such as VoiceOver and designing inclusively across different input methods and contexts.

## 9. Adaptive UI

Check relevant form factors:

- phone sizes;
- tablets;
- foldables/resizable windows on Android;
- iPad/multitasking if supported;
- portrait/landscape where supported;
- dynamic text;
- safe areas/system UI.

Do not assume "phone only" if the app is distributed to larger form factors unless product/platform policy intentionally limits them.

## 10. Analytics on mobile

Review:

- stable user/device/account identity model;
- install/first-open semantics;
- app version/build property;
- OS/device properties;
- deep link/campaign source where relevant;
- experiment assignment/exposure;
- purchase attempted/succeeded/failed;
- permission requested/granted/denied;
- critical-value completion;
- lifecycle/retention critical event;
- crash/performance signals.

Avoid using a device identifier as a conceptual substitute for a user without understanding multi-device/login behavior.

## 11. Mobile release checklist - product layer

Before release, ask:

- Can a new user reach core value on target devices?
- Can a returning user resume safely?
- Are payment/entitlement states coherent?
- Are permissions recoverable?
- Are analytics trustworthy?
- Are critical crashes/ANRs known?
- Do network interruptions fail safely?
- Does accessibility work for primary tasks?
- Are platform conventions respected where they matter?
- Are feature flags/rollback options ready for risky changes?

## Official sources

Apple Human Interface Guidelines
https://developer.apple.com/design/human-interface-guidelines

Apple Design Principles
https://developer.apple.com/design/human-interface-guidelines/design-principles

Apple VoiceOver
https://developer.apple.com/design/human-interface-guidelines/voiceover

Android Core App Quality
https://developer.android.com/docs/quality-guidelines/core-app-quality

Android Vitals
https://developer.android.com/topic/performance/vitals/

WCAG 2.2
https://www.w3.org/TR/WCAG22/
