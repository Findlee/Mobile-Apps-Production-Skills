# Accessibility requirements

Use the current normative standard and platform guidance. This file organizes work; it is not a substitute for the source.

## Requirement matrix

| Requirement | Target/source | Component/state | Intended behavior | Test method | Environment | Evidence | Status |
|---|---|---|---|---|---|---|---|

## Perceivable

- Provide text alternatives for meaningful non-text content and ignore decoration semantically.
- Provide captions, transcripts, audio description, or an equivalent alternative according to the media and target.
- Preserve structure and relationships in semantics, not appearance alone.
- Do not use color, position, shape, or sound as the only cue.
- Support required contrast, text spacing, zoom, reflow, orientation, and responsive adaptation.

## Operable

- Make essential actions available without a precise pointer or path-based gesture alone.
- Provide logical keyboard navigation, visible focus, and focus that is not obscured.
- Avoid keyboard traps; define safe entry and exit for composite widgets.
- Provide adequate targets and spacing; prevent accidental activation where consequence is high.
- Give control over timing, motion, animation, auto-updating content, and interruptions.

## Understandable

- Use clear labels, instructions, and predictable placement and behavior.
- Identify errors, associate them with fields, preserve valid input, and suggest correction.
- Prevent or confirm high-consequence submissions and provide review or reversal where required.
- Use consistent help and authentication that does not depend on inaccessible cognitive tests.

### Accessible authentication and abuse prevention

- Do not make an essential outcome depend only on solving, transcribing, recalling, or manipulating information unless the current target criterion permits and the required alternative exists.
- Prefer risk-based or passive protection that does not add a human test; provide more than one accessible path when a challenge is necessary.
- Test CAPTCHA and recovery with relevant assistive technologies and cognitive needs, including timeout, failure, lockout, and fallback states.
- Review the solution jointly with security and privacy owners: an accessible fallback must still resist abuse, and an anti-bot control must not silently exclude people.
- Verify the current WCAG 2.2 accessible-authentication criteria and exceptions rather than relying on a remembered criterion number alone.

## Robust

- Expose correct name, role, value, state, and relationships.
- Use valid platform semantics and status announcements without stealing focus.
- Test custom controls with representative assistive technologies.

## Scope cautions

WCAG levels, exceptions, platform applicability, and legal obligations require source-level review. “WCAG AA” is incomplete without version, pages/features, environments, exceptions, and evidence date.
