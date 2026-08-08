---
name: design-native-mobile-interactions
description: Design platform-appropriate mobile experiences for iOS and Android, including adaptive layouts, navigation, touch and gesture behavior, keyboard and focus handling, system permissions, and device capabilities. Use when asked to translate a feature into native mobile behavior, compare iOS and Android conventions, specify phone/tablet/foldable adaptation, or create mobile interaction acceptance criteria. Do not use for generic responsive web design, visual styling alone, or as a substitute for checking current official platform guidance.
---

# Design Native Mobile Interactions

Translate a product goal into behavior that feels coherent with each platform while preserving a shared product identity. Use current official guidance because platform conventions and APIs change.

## Core rules

- Start from the user task and platform context, not from a desktop screen shrunk to a phone.
- Share product meaning across platforms; adapt navigation, controls, gestures, terminology, and system surfaces where conventions differ.
- Prefer familiar platform and system components unless a custom interaction creates clear user value.
- Never make an essential action depend only on a hidden gesture.
- Treat keyboard, focus, back behavior, insets, rotation, multitasking, and interruptions as first-class states.
- Ask for permissions in context, only when needed, and provide a useful path after denial.
- Design across windows and posture classes, not a fixed list of device models.
- Verify decisions against current Apple and Android sources before implementation handoff.

## Workflow

### 1. Establish the platform contract

Record target platforms and versions, UI framework, device classes, orientations, input methods, accessibility target, online/offline assumptions, and required system capabilities. Read [platform-decision.md](references/platform-decision.md) to decide what stays shared and what adapts.

### 2. Map the task and navigation

Define destinations, hierarchy, modal tasks, deep links, restoration, and exit behavior. Specify iOS dismissal/navigation behavior and Android predictive Back/up behavior rather than using one ambiguous “back” rule.

Read [adaptive-navigation-layout.md](references/adaptive-navigation-layout.md) for compact, medium, and expanded layouts; panes; bars; rails; tabs; safe areas; system bars; and continuity across resizing.

### 3. Design touch and gesture behavior

For every gesture, define target, discoverability, threshold, feedback, conflict resolution, cancellation, and non-gesture alternative. Keep controls reachable and appropriately sized. Do not override system gestures without strong evidence and a safe alternative.

### 4. Specify text input, keyboard, and focus

Read [input-focus-keyboard.md](references/input-focus-keyboard.md). Define keyboard type, capitalization, autofill, validation timing, IME actions, keyboard avoidance, focus order, focus restoration, hardware-keyboard behavior, and screen-reader implications.

### 5. Integrate system capabilities and permissions

Read [permissions-system-surfaces.md](references/permissions-system-surfaces.md). Separate the educational pre-prompt, the real system prompt, limited or denied states, settings recovery, and capability fallbacks. Never simulate a system prompt or repeatedly pressure a refusal.

### 6. Model lifecycle and device change

Cover launch, suspend, resume, process loss, network change, rotation, resizing, posture change, external display, notification entry, interrupted authentication, and returning from Settings or another app. Preserve work and restore meaningful context.

### 7. Produce platform-specific acceptance criteria

Create a shared behavior table with explicit iOS and Android columns. Include device/window cases, input modalities, permission states, accessibility checks, lifecycle transitions, and platform versions. Mark current-source dependencies that must be rechecked near implementation.

## Boundaries with related skills

- Use `select-interface-patterns` for general pattern selection; use this skill for mobile platform adaptation.
- Use `design-resilient-interactions` for detailed failure and recovery models beyond mobile conventions.
- Use `design-inclusive-accessible-experiences` for the full accessibility and participation workflow.
- Use `design-trustworthy-consent-experiences` when data choice or consent is broader than an OS permission request.

## Default output

Provide platform assumptions, a shared-versus-adapted decision table, navigation and layout behavior by window class, input/gesture rules, permission and lifecycle states, and separate iOS/Android acceptance criteria.

## Sources

Read [source-map.md](references/source-map.md) and verify platform-sensitive decisions against its current official links.
