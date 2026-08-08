# Localization testing and handoff

## Pre-translation tests

- accented pseudolocale to reveal hard-coded strings and glyph issues;
- expansion and contraction stress at multiple text sizes;
- RTL pseudolocale and mixed-direction content;
- missing keys, fallback chains, and outdated resources;
- plural/select values including zero, one, few, many, fractions, and large counts;
- locale switching, persistence, and content refresh;
- locale-aware input, formatting, sorting, and search;
- images, PDFs, emails, notifications, and accessibility strings.

Pseudolocalization finds engineering problems; it cannot judge translation quality or cultural fit.

## Linguistic QA

Use qualified speakers with product context. Review meaning, terminology, grammar, tone, truncation, visual hierarchy, task completion, local formats, imagery, accessibility labels, and cross-surface consistency. Give reviewers a way to report the key, locale, state, screenshot, expected meaning, severity, and suggested correction.

## Handoff package

Include locale matrix, resource format, glossary, style guide, screenshots/context, variable definitions, character limitations, fallback policy, release schedule, review ownership, and known exceptions.

## Release gates

Block release for missing essential strings, broken plural logic, corrupted user data, unusable RTL navigation, unreadable text, wrong financial/date meaning, inaccessible localized labels, or a fallback that prevents task completion.

## Primary sources

- [W3C Internationalization quick tips](https://www.w3.org/International/quicktips/index)
- [Unicode Locale Data Markup Language / CLDR specification](https://unicode.org/reports/tr35/)
- [Apple localization](https://developer.apple.com/localization/)
- [Apple right-to-left guidance](https://developer.apple.com/design/human-interface-guidelines/right-to-left)
- [Android localization](https://developer.android.com/guide/topics/resources/localization)
