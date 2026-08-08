# Color and typography

Use this reference to build semantic, legible visual foundations.

## Color roles before swatches

Define roles such as:

- canvas and elevated surfaces;
- primary and secondary text;
- subtle and strong borders;
- primary action and interactive accent;
- focus and selection;
- success, warning, danger, and informational status.

Keep role names semantic so themes can change without rewriting component meaning. Avoid using the brand color everywhere; reserve strong chroma for identity, interaction, or intentional emphasis.

## Contrast and meaning

- Verify contrast with the current official standard and platform guidance; do not rely on visual judgment alone.
- Check text, icons, controls, boundaries, focus indicators, charts, and status information.
- Do not use color as the only signal for interaction, selection, validation, or status.
- Test light, dark, increased-contrast, and disabled appearances separately.
- Avoid pure black or weak gray by habit; choose values that support comfortable reading and sufficient contrast in context.
- Treat new or experimental contrast models as supplemental unless the relevant standard makes them normative.

## Palette discipline

- Start with neutrals and one intentional accent family; add colors only for a semantic or brand need.
- Define tonal steps with distinct jobs rather than many nearly identical swatches.
- Ensure status colors remain distinguishable and meaningful across color-vision differences.
- Match imagery and illustrations to the product palette without sacrificing recognizable content.
- Avoid gradients and glow as substitutes for hierarchy.

## Typeface choice

- Prefer a proven, legible typeface with the scripts, weights, numerals, symbols, and language coverage the product needs.
- A platform system face is a strong default, not a requirement.
- Add a second family only when it creates meaningful voice or hierarchy without harming performance and consistency.
- Evaluate lowercase readability, character differentiation, x-height, punctuation, and numeric clarity at actual UI sizes.

## Type system

- Define roles such as display, page title, section title, body, label, helper, and data.
- Use a limited scale with clear differences; avoid many sizes that look almost the same.
- Use regular and emphasized weights intentionally rather than adding weight to compensate for weak hierarchy.
- Decrease line height as type size grows, and give multi-line body text more leading.
- Keep long-form line length comfortable and allow text to resize without clipping.
- Adjust letter spacing cautiously; platform and typeface defaults are usually a safer starting point.

## Content hierarchy

- Let headings describe the section rather than decorate it.
- Use sentence case unless language or brand conventions require another treatment.
- Keep secondary text readable; hierarchy does not require low contrast.
- Align type roles across screens so users can recognize structure without relearning it.
- Test real dates, currencies, percentages, account numbers, and localized strings.
