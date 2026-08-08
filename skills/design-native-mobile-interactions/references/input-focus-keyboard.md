# Touch, gesture, keyboard, and focus

## Gesture contract

For every gesture define:

| Gesture | Target | Discoverability | Threshold/conflict | Feedback | Cancel/undo | Accessible alternative |
|---|---|---|---|---|---|---|

- Do not require a hidden gesture for an essential action.
- Keep targets adequately large and separated according to current platform/accessibility guidance.
- Avoid conflicts with system navigation, accessibility gestures, scrolling, and nested gestures.
- Make direct manipulation reversible during the gesture where possible.
- Provide visible affordance or instruction when the gesture is not conventional.

## Text input

Specify semantic field purpose, keyboard type, return/IME action, capitalization, correction, secure entry, autofill, paste, one-time codes, format normalization, validation timing, next/done behavior, and persistence.

Do not disable paste or password managers without a genuine security requirement. Do not reject harmless formatting that can be normalized.

## Keyboard and insets

- Keep the active field and critical guidance visible when the software keyboard appears.
- Support interactive dismissal only when it does not discard input or trap the user.
- Recalculate layout using keyboard/system insets rather than fixed offsets.
- Test external keyboards, shortcuts, Tab traversal, Enter/Escape behavior, and focus indication where supported.

## Focus

Define initial focus only when beneficial, traversal order, movement within composites, restoration after sheets/dialogs, behavior on validation, and restoration after navigation/process recreation. Avoid moving focus merely because content updated.
