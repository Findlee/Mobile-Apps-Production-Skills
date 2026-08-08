# Permissions and system surfaces

## Permission decision

Before requesting, confirm:

- the capability is needed for a user-initiated benefit now;
- the least-privileged or scoped option is sufficient;
- the OS status is known before presenting education;
- a denial or limited-access path exists;
- sensitive data handling and retention are defined.

## State model

Cover not determined, educational context, system prompt, granted, limited/scoped, denied, restricted by policy/parental control, capability unavailable, revoked later, settings changed, and expired or one-time access where applicable.

The product pre-prompt must not imitate the system dialog or imply that access is already granted. Do not show an educational screen when the app cannot actually trigger the system prompt next.

## Denial and recovery

- Explain which feature is unavailable and what still works.
- Offer a non-permission alternative when feasible.
- Link to Settings only after the system no longer permits an in-app request and only in response to relevant intent.
- Do not loop, shame, or block unrelated use for an optional permission.
- Re-evaluate capability after returning from Settings.

## Other system surfaces

For share sheets, pickers, authentication, payments, notifications, background tasks, files, photos, maps, and external apps, define entry, cancellation, callback, interrupted state, duplicate prevention, and return context. Never claim success before the system outcome is confirmed.

## Camera and capture flows

- Define preview, manual capture, accessible alternative/import, auto-capture cue, retake, crop, multi-page order, torch, interruption, and background/resume behavior.
- Separate permission to capture now from broad access to an existing photo library; prefer system pickers and scoped access.
- State whether images and extracted text remain on device, upload, enter backups, or are deleted after completion; align visible status with actual retention.
- Make auto-capture optional when users cannot position or hold the device reliably, and expose an operable manual fallback.
