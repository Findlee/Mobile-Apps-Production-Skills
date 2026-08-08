# Adaptive and accessible visual QA

Use this reference during the final visual pass.

## Viewport and content matrix

Test representative combinations rather than one canvas:

- narrow phone, typical phone, tablet or expanded window, and desktop when supported;
- portrait and landscape where allowed;
- short and long content;
- virtual keyboard open;
- system bars, cutouts, and safe areas;
- zoom and large text;
- light, dark, and increased-contrast appearance;
- empty, loading, failure, and populated states.

## Adaptive behavior

- Reflow content when width changes; avoid horizontal clipping and tiny scaled controls.
- Preserve important context and controls across presentation changes.
- Choose explicit behavior for columns, sidebars, navigation, panes, sheets, dialogs, tables, and charts.
- Avoid locking an experience to one orientation without a product constraint that justifies it.
- Use expanded space for useful parallel context, not arbitrary stretching.

## Text and localization

- Allow text containers and controls to grow.
- Check line wrapping, truncation, and overlap at large text sizes.
- Do not place essential text inside raster images.
- Support the scripts, glyphs, number formats, and directionality required by target locales.
- Avoid icon-text compositions that break when labels expand.

## Input and focus

- Keep targets large and separated according to current platform guidance.
- Provide visible focus and a logical focus order.
- Ensure hover is not the only way to reveal required actions.
- Make drag, swipe, gesture, sound, and motion interactions available through an alternative when required.
- Restore focus and context after dialogs, navigation, updates, and errors.

## Perception

- Verify current contrast requirements for text and non-text elements.
- Combine color with labels, icons, shape, position, patterns, or programmatic state.
- Preserve meaning when images fail, transparency is reduced, or high contrast is enabled.
- Pair audio feedback with visual or haptic equivalents when relevant.
- Avoid unnecessary motion and honor reduced-motion preferences.

## Implementation review

- Use semantic native elements or components whenever possible.
- Verify accessible names, roles, values, relationships, and live updates in the implementation.
- Do not infer accessibility conformance from visual inspection alone.
- Test with platform accessibility inspection tools and relevant assistive technologies when the task requires validation.
- Consult current official WCAG, Apple, Android, or target-platform guidance for normative requirements.
