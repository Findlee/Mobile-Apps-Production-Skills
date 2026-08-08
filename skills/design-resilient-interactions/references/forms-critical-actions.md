# Forms and critical actions

Use this reference for input, validation, permissions, payments, publishing, sharing, deletion, and other consequential commitments.

## Flexible, bounded input

- Accept common formatting variation and normalize it when meaning is unambiguous.
- Use the appropriate keyboard, input mode, autocomplete, and native picker for the platform.
- Constrain impossible values without rejecting harmless variation.
- Match the control to the choice: expose short comparable options, search long sets, and allow direct entry when more efficient.
- Use sensible defaults and prefills only when they are safe, transparent, and easy to change.
- Never use a default that silently commits the user to an unwanted cost, disclosure, or subscription.

## Validation timing

- Validate early when feedback can prevent wasted work and the result is stable.
- Avoid interrupting while the user is still composing an incomplete value.
- Validate the whole submission for cross-field or server-dependent rules.
- On failure, focus or link to the problem, preserve all valid data, and summarize multiple errors when helpful.
- Explain the requirement in plain language; do not make users reverse-engineer a format.

No single timing rule fits every field. Choose timing from error cost, input complexity, dependency, and interruption risk.

## Multi-step flows

- Show meaningful progress and step names when sequence matters.
- Allow back navigation without data loss.
- Defer optional or context-dependent choices until needed.
- Save checkpoints for long or high-value work.
- Review important details before irreversible commitment.
- Do not trap users in onboarding or setup when they can safely continue later.

## Destructive actions

Scale protection to consequence:

- low consequence and reversible: perform with undo;
- meaningful but recoverable: explain scope and provide undo or recovery location;
- irreversible or high harm: show exact consequences and require an intentional confirmation;
- exceptional critical actions: require stronger verification when justified.

Do not make destructive actions visually dominant in normal use. Avoid generic “Are you sure?” copy; name the object, consequence, and recovery status.

## Payments, publishing, and sharing

- Show the exact item, audience, amount, recurrence, destination, and effective time before commitment.
- Prevent duplicate submission and make pending versus complete unmistakable.
- Provide a durable receipt or resulting object.
- Clarify partial success, authorization holds, delayed processing, and cancellation rules.
- For sharing or permissions, show who will gain access and what they can do.

## Permissions and sensitive data

- Ask in context, at the moment the capability provides understandable value.
- Explain why access is needed and what changes if the user declines.
- Support denial, restricted access, and later changes in system settings.
- Collect only necessary data and make use, retention, and visibility clear.
- Avoid blocking unrelated product value when a permission is optional.

## Acceptance checks

Test double activation, back navigation, refresh, timeout, offline transition, session expiry, expired credentials, server rejection, partial batch failure, app termination, another-device changes, and assistive-technology navigation where relevant.
