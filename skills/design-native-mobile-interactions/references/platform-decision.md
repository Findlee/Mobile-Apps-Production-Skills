# Platform decision framework

## Preserve or adapt

Use this table for every important pattern:

| Product intent | Shared rule | iOS expression | Android expression | Reason/evidence | Recheck date |
|---|---|---|---|---|---|

Usually preserve brand voice, domain objects, information priority, permissions rationale, safety guarantees, and cross-device account meaning. Usually examine platform-specific navigation, bars, back/dismiss behavior, selection, menus, sheets, search, authentication, sharing, typography, gestures, notifications, and settings entry.

## Decision order

1. Essential user task and consequence.
2. Current platform convention and native capability.
3. Accessibility and input-method behavior.
4. Product consistency across platforms.
5. Implementation and maintenance cost.

Depart from convention only when the product benefit is concrete, the new behavior is learnable, system behavior remains intact, accessibility is complete, and the team can maintain it.

## Context inventory

Record minimum OS/version, framework, phones/tablets/foldables, window sizes, portrait/landscape, touch/stylus/mouse/trackpad/hardware keyboard, screen reader, large text, reduced motion, offline behavior, deep links, notifications, widgets/live surfaces, and external authentication.

## Handoff rule

Do not write “same on iOS and Android” when the shared item is only an outcome. Name the common outcome and the platform-specific mechanism separately.
