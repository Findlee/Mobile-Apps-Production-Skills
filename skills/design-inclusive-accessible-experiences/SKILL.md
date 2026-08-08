---
name: design-inclusive-accessible-experiences
description: Design and evaluate inclusive, accessible digital experiences across diverse abilities, contexts, languages, devices, and input methods. Use when asked to turn accessibility requirements into product behavior, prevent exclusion, plan participatory design, define keyboard or assistive-technology behavior, review an experience against WCAG and platform guidance, or write accessible acceptance criteria. Do not use as a claim of legal compliance, for a generic usability audit with no accessibility focus, or as a substitute for testing with people who experience exclusion.
---

# Design Inclusive Accessible Experiences

Treat exclusion as a mismatch between a person and an experience, not as a defect in the person. Combine inclusive discovery, concrete accessibility requirements, implementation guidance, and validation with affected people.

## Core rules

- Recognize exclusion, learn from human diversity, and solve a specific mismatch in a way that can extend to many people.
- Design with people who experience exclusion; do not rely on imagined empathy or disability simulations.
- Consider permanent, temporary, and situational constraints without flattening them into one persona.
- Support multiple ways to perceive, understand, navigate, input, and recover where the task allows it.
- Prefer semantic structure and native controls before adding custom accessibility behavior.
- Treat automated checks as coverage aids, never as proof of accessibility.
- Preserve dignity, privacy, agency, and equivalent outcomes—not merely technical operability.
- State the standard, platform, scope, and testing limits behind every conformance claim.

## Workflow

### 1. Frame the experience and its exclusions

Identify the user goal, essential outcome, context, devices, modalities, and consequences of failure. Map who may be excluded, at which interaction, and by what mismatch. Read [inclusive-process.md](references/inclusive-process.md).

Separate evidence from assumptions. If affected people have not participated, name that research gap rather than inventing their needs.

### 2. Set the accessibility target

Choose the applicable current standard and platform guidance. Unless the project specifies otherwise, use WCAG 2.2 AA as a practical web baseline, while noting that platform rules and local law can differ. Build a requirement matrix using [accessibility-requirements.md](references/accessibility-requirements.md).

### 3. Design structure, perception, and interaction

Specify:

- semantic hierarchy and accessible names;
- text, contrast, color independence, zoom and reflow;
- keyboard, switch, screen-reader, voice, and touch behavior;
- focus order, visible focus, announcements, and error association;
- alternatives for images, audio, video, motion, drag, gesture, and time limits;
- target size, spacing, orientation, and device adaptation;
- plain, respectful content and predictable controls.

Read [interaction-content.md](references/interaction-content.md) before defining custom components.

### 4. Define states and equivalent paths

Check initial, loading, empty, error, offline, success, permission-denied, timeout, and recovery states. Ensure every essential pointer or visual action has an equivalent operable path. Preserve entered data and context when errors occur.

### 5. Add implementation contracts

For every relevant component, state its semantic role, name, value, state, relationships, focus behavior, keyboard commands, announcements, error behavior, text-resize behavior, and platform differences. Prefer a testable contract over vague instructions such as “make accessible.”

### 6. Validate in layers

Use the test strategy in [testing-participation.md](references/testing-participation.md): static analysis, keyboard and zoom checks, representative screen readers and platforms, device and context checks, then task-based sessions with people who experience the relevant mismatches.

Do not mark a requirement passed unless the evidence matches the stated target and environment.

### 7. Report and prioritize

For each issue, provide the affected task and people, evidence, requirement, user consequence, recommended change, acceptance criteria, and validation method. Prioritize blocked essential outcomes and irreversible harm ahead of cosmetic conformance gaps.

## Boundaries with related skills

- Use `audit-interface-usability` for broad usability findings; invoke this skill when exclusion or accessibility is central.
- Use `craft-visual-ui` for visual hierarchy after inclusive requirements are established.
- Use `design-native-mobile-interactions` for platform-specific mobile behavior, then apply this skill to verify equivalent access.
- This skill supports accessibility work but does not certify legal compliance.

## Default output

Lead with the highest-risk exclusions. Provide an exclusion map, requirements matrix, component and state behavior, implementation acceptance criteria, and layered validation plan. For a small feature, compress these into one checklist.

## Sources

Read [source-map.md](references/source-map.md) when standards, scope, or provenance matter.
