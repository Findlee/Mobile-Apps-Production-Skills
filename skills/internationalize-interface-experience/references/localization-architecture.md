# Localization architecture

## Separate dimensions

Model these independently unless product rules explicitly bind them:

- interface language and script;
- content language;
- region and regulatory market;
- time zone;
- currency and billing market;
- measurement system;
- writing direction;
- calendar and numbering system.

Do not infer all preferences from location, SIM, IP address, or one locale tag. Define precedence among explicit user choice, account setting, device/app preference, content availability, and fallback.

## Resource design

- Keep user-visible text in localization resources, including errors, notifications, accessibility labels, server messages, and generated documents.
- Use stable descriptive keys based on meaning, not English wording or screen position.
- Store full messages with named variables; do not assemble grammar from fragments.
- Support plural, select, gender or grammatical variants with locale-aware message tooling.
- Keep presentation out of translation values unless the platform resource system explicitly supports safe styling.
- Version shared terminology and give translators context for each key.

## Fallback

Define fallback by content type and make missing content observable. Avoid silently mixing languages within one task when a clear unavailable state would be more honest. Do not replace user-authored content through fallback.

## Dynamic and server content

Pass structured data and locale intent where possible, then format at the correct layer. If the server renders text, it needs the same localization resources, versioning, fallback, and QA discipline as the client.
