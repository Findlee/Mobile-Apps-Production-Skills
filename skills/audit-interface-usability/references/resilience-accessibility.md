# Resilience and accessibility audit

Use this reference for states, errors, forms, asynchronous behavior, input diversity, and inclusive use.

## State coverage

Check relevant states rather than reviewing only the populated happy path:

- initial and first-use;
- loading or processing;
- partial or progressive data;
- populated and empty;
- validation failure;
- recoverable system error;
- offline or degraded connection;
- permission denied or unavailable capability;
- success and confirmation;
- cancellation, undo, retry, and resumed work;
- stale, conflicting, or externally changed data.

Flag missing states that can strand the user, lose work, duplicate actions, or create false confidence.

## Error prevention and recovery

- Distinguish slips, incorrect plans, invalid input, and system failures; they need different remedies.
- Prevent likely errors through constraints, separation, clear modes, sensible defaults, and previews.
- Accept reasonable input variation and normalize it in the system when safe.
- Make errors specific, local to the problem, respectful, and actionable.
- Preserve valid input after a failure.
- Provide undo, cancel, retry, resume, or autosave according to consequence and technical reality.
- Add confirmation or stronger friction in proportion to irreversibility and harm.
- Never present success before the system can support that claim.

## Feedback and waiting

- Acknowledge input promptly and prevent ambiguous repeated submission.
- Communicate progress when work is perceptible, and explain long or indeterminate waits.
- Preserve user control during background work when cancellation is technically possible.
- Prioritize feedback; avoid simultaneous alarms, repeated notices, and decorative motion that obscures important state.
- Pair status color, sound, or motion with text, shape, iconography, haptics, or programmatic semantics as appropriate.
- Respect reduced-motion and interruption contexts.

## Inclusive interaction

Review risks across:

- keyboard, touch, pointer, switch, voice, and assistive technology use;
- focus order, visibility, and restoration;
- text resizing, zoom, orientation, and viewport changes;
- contrast, non-color cues, and legibility;
- accessible names, roles, states, and error associations;
- target size and spacing;
- captions, alternatives, and equivalent non-visual feedback;
- cognitive load, time limits, authentication, and redundant entry;
- localization, long labels, bidirectional text, and numeric/date formats.

Do not certify accessibility from appearance alone. When exact conformance matters, verify the current official standard and platform guidance, inspect implementation semantics, and test with relevant assistive technologies.

## Context and platform

- Use the platform's current native patterns unless the product has a justified alternative.
- Account for safe areas, system navigation, virtual keyboards, permissions, deep links, and back behavior.
- Test compact, expanded, landscape, split-screen, and dynamic-type conditions that the product supports.
- Treat old book examples and fixed numeric recommendations as historical guidance; current normative values belong to current official documentation.
