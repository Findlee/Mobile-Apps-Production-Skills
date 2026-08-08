---
name: internationalize-interface-experience
description: Prepare digital interfaces and content for localization across languages, scripts, locales, cultures, and right-to-left layouts. Use when asked to internationalize a feature, audit localization readiness, define locale-aware formats and pluralization, design for text expansion, specify bidirectional behavior, or create pseudolocalization and linguistic QA criteria. Do not use for literal translation without product context, legal localization sign-off, or generic responsive design.
---

# Internationalize Interface Experience

Make the product structurally ready for local expression before translation begins. Separate meaning from presentation, language from region, and writing direction from visual hierarchy.

## Core rules

- Do not concatenate translated fragments or encode grammar in UI layout.
- Treat locale as more than a language code; formats, calendars, numbering, names, addresses, and conventions can vary independently.
- Give translators context, variables, screenshots, character limits, and the intended user outcome.
- Allow expansion, contraction, different line breaks, complex scripts, and font fallback.
- Mirror directional relationships for RTL where appropriate, but do not mirror inherently directional content or universal media controls blindly.
- Use locale-aware libraries and CLDR-backed data instead of hand-built format tables.
- Keep user-entered content in its original form unless transformation is explicitly required.
- Test mixed-direction content, not only fully LTR or fully RTL screens.

## Workflow

### 1. Define scope and locale model

Record target languages, scripts, regions, writing directions, platforms, fallback policy, content ownership, regulatory variants, and launch constraints. Distinguish language preference, content language, region, time zone, currency, units, and account settings.

Read [localization-architecture.md](references/localization-architecture.md) before choosing resource keys or fallback behavior.

### 2. Inventory user-visible and generated content

Include interface strings, validation, notifications, emails, media, images containing text, accessibility labels, voice output, search synonyms, support content, AI prompts and responses, app-store text, and server-generated messages. Find hard-coded text and presentation assumptions.

### 3. Make language and content localizable

Use complete semantic messages, stable descriptive keys, named placeholders, plural/select rules, and contextual notes. Read [language-content.md](references/language-content.md) for tone, terminology, variables, truncation, and translator handoff.

### 4. Specify locale-aware data

Define display and input behavior for dates, times, time zones, numbers, currency, units, names, addresses, phone numbers, sorting, search, calendars, and collation. Read [locale-data.md](references/locale-data.md). Store canonical data separately from localized presentation.

### 5. Design flexible and bidirectional layout

Avoid fixed text boxes and directional spacing encoded as left/right where start/end is intended. Specify mirroring, alignment, icon direction, navigation order, charts, maps, codes, numbers, and embedded LTR content using [rtl-bidi-layout.md](references/rtl-bidi-layout.md).

### 6. Validate before and after translation

Run accented and RTL pseudolocales, expansion stress, missing-key and fallback tests, complex-script rendering, mixed-direction input, screen-reader checks, device-size checks, and linguistic review by qualified speakers. Use [testing-handoff.md](references/testing-handoff.md).

### 7. Produce implementation-ready decisions

Provide resource examples, locale state rules, content inventory, layout requirements, test cases, and unresolved cultural or regulatory questions. Mark decisions that require a local expert rather than guessing.

## Boundaries with related skills

- Use `craft-visual-ui` for general layout polish; this skill owns localization flexibility and directionality.
- Use `design-inclusive-accessible-experiences` for the broader accessibility workflow; combine them for language accessibility and assistive-technology testing.
- Use `design-native-mobile-interactions` for platform-specific resource and navigation behavior.

## Default output

Provide a localization-readiness audit, locale model, string/resource guidance, data-format rules, RTL and flexible-layout specifications, translator context, and pseudolocalization plus linguistic-QA plan.
