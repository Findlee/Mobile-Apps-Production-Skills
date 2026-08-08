# Feedback, latency, and background work

Use this reference to communicate system activity without misleading or overwhelming the user.

## Immediate acknowledgement

- Acknowledge interaction promptly through state, motion, haptic, sound, or text appropriate to the platform.
- Make the selected target and resulting state clear.
- Prevent ambiguous repeated activation while preserving an understandable escape route.
- Do not use a spinner as the only evidence that an irreversible request was accepted.

## Match feedback to duration

- For effectively immediate work, show the result without unnecessary ceremony.
- For perceptible short work, show local pending feedback and keep the layout stable.
- For longer work, show meaningful progress, scope, and whether the user can leave.
- For indeterminate work, explain what is happening and provide timeout, cancellation, or fallback behavior when possible.
- Verify current research or platform guidance before hard-coding timing thresholds.

## Progress

- Prefer determinate progress when completion can be measured honestly.
- Do not reset or move progress backward without explanation.
- For multi-stage work, describe the current stage when that helps users estimate or diagnose.
- For batches, show completed, remaining, and failed items when useful.
- Avoid fake precision; a believable coarse status is better than an inaccurate percentage.

## Background work

Specify:

- whether work continues after navigation, locking, app suspension, or process termination;
- where status can be found later;
- how completion or failure is announced;
- whether the user can start another operation;
- how duplicates and conflicts are prevented;
- how long status remains available.

Do not promise background completion the platform or backend cannot guarantee.

## Feedback priority

- Keep routine acknowledgement subtle.
- Elevate blocking failures, irreversible consequences, and actions requiring a decision.
- Coordinate concurrent notices so important information is not lost in alert noise.
- Avoid repeated banners, toasts, dialogs, sounds, and badges for the same event.
- Preserve a durable status location when a transient message could be missed.

## Accessible status

- Announce meaningful asynchronous changes to assistive technologies without interrupting excessively.
- Move focus only when the user's next action genuinely requires it.
- Combine visual, textual, auditory, or haptic signals as context requires.
- Respect reduced motion and avoid animation that implies progress without information.
