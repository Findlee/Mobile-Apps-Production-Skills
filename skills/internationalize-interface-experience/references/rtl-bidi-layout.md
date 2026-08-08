# RTL and bidirectional layout

## Direction model

Set base direction from the language/content container and use logical start/end properties. Isolate user-entered or external strings whose direction can differ. Do not guess direction from a single character without a defined fallback.

## Usually mirror

- navigation progression and spatial hierarchy;
- leading/trailing alignment and directional padding;
- chevrons that express interface movement;
- ordered horizontal controls whose meaning follows reading direction;
- dismiss or reveal directions tied to start/end.

## Usually preserve

- media playback direction and time axes when they retain a universal convention;
- clocks, maps, charts, musical notation, code, math, phone numbers, and product logos according to their own semantics;
- physical-world direction icons when they depict an actual direction rather than UI progression.

Decide by meaning, not by an automatic image flip.

## Mixed content

Test names, email addresses, URLs, file paths, codes, prices, percentages, dates, parentheses, punctuation, emoji, and LTR snippets embedded in RTL sentences. Use Unicode bidirectional isolation or platform equivalents rather than visible control characters in ordinary content.

## Components

Define start/end behavior for icons, labels, badges, menus, tables, carousels, steppers, charts, drag actions, and animation. Semantic reading/focus order must remain coherent; CSS visual reordering alone can create a mismatch.

## Acceptance checks

Verify full RTL pseudolocale, mixed-direction input/editing, selection and cursor movement, screen-reader order, mirrored navigation, unmirrored semantic exceptions, truncation, numeric alignment, and screenshots across relevant window sizes.
