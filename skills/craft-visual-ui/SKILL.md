---
name: craft-visual-ui
description: Create or refine the visual design of digital interfaces using systematic hierarchy, layout, spacing, typography, color, components, and concise UI copy. Use when asked to polish a screen, improve an amateur-looking or AI-generated UI, establish visual direction or design tokens, convert a wireframe into a coherent interface, align inconsistent screens, or implement visual improvements in UI code. Preserve usability, accessibility, responsiveness, platform conventions, and existing behavior. Do not use as the primary skill for diagnostic UX audits, greenfield experience planning, or failure-state engineering.
---

# Craft Visual UI

Turn functional interface structure into a deliberate visual system. Use strong defaults as starting points, then adapt them to product purpose, platform, content, and brand.

## Core rules

- Make every visual decision serve hierarchy, comprehension, interaction, accessibility, or product character.
- Establish a system before polishing individual elements.
- Prefer a few semantic scales and roles over arbitrary one-off values.
- Simplify relationships before adding containers, borders, shadows, gradients, or decoration.
- Preserve familiar interaction patterns and visible interactive cues.
- Treat book-derived recommendations as defaults, not universal laws.
- Verify current accessibility and platform requirements before making exact normative claims.
- When editing code, preserve behavior unless the user also authorizes interaction changes.

## Workflow

### 1. Establish direction and constraints

Identify:

- product purpose, audience, and intended emotional quality;
- primary content and primary action;
- target platforms, viewport range, and input methods;
- existing brand, components, tokens, and code conventions;
- content density, localization, data variability, and accessibility needs;
- whether the request calls for conservative refinement or a new visual direction.

If a product already has a design system, extend it before introducing a parallel system.

### 2. Inspect the existing artifact

Use the strongest available evidence: original screenshots, rendered UI, design file, or running implementation. Inventory repeated colors, type sizes, spacing values, radii, borders, shadows, containers, and action styles. Identify accidental variation separately from meaningful variation.

### 3. Define the hierarchy

Write a one-sentence hierarchy before styling: what must be seen first, second, and third. Then use layout, grouping, typography, contrast, position, and action emphasis to express it.

Read [hierarchy-layout.md](references/hierarchy-layout.md) for grouping, spacing, grids, alignment, density, and responsive content structure.

### 4. Establish visual foundations

Define only the tokens needed for the current scope:

- semantic color roles and interactive/status states;
- type roles and a limited size/weight scale;
- spacing scale;
- shape, border, elevation, and motion rules where justified;
- content widths and adaptive layout behavior.

Read [color-typography.md](references/color-typography.md) before choosing palettes, contrast, typefaces, line height, or long-form text treatment.

### 5. Refine components and copy

Make component appearance communicate role, state, and priority. Ensure similar components behave and look related, and different roles remain distinguishable without color alone.

Read [components-copy.md](references/components-copy.md) for actions, controls, forms, component states, destructive actions, labels, and microcopy.

### 6. Stress-test the system

Test realistic variants rather than one ideal screenshot:

- shortest and longest copy;
- empty, loading, error, selected, focused, disabled, and success states;
- dynamic data, wrapping, truncation, and overflow;
- small and large viewports, landscape, split-screen, and safe areas;
- text resizing, zoom, keyboard navigation, touch use, high contrast, dark appearance, and reduced motion;
- localization and bidirectional content when relevant.

Read [adaptive-accessible.md](references/adaptive-accessible.md) for this pass.

### 7. Implement or specify

If editing code:

- reuse the project's components and tokens;
- avoid broad rewrites unrelated to the requested visual change;
- keep semantic structure and interaction states intact;
- render and inspect the result at representative sizes;
- verify that the improvement survives real content.

If producing guidance, provide token decisions, component rules, and concrete changes rather than mood adjectives alone.

## Decision order

Resolve conflicts in this order unless the product context demands otherwise:

1. task clarity and user control;
2. accessibility and legibility;
3. platform and product consistency;
4. content hierarchy and responsiveness;
5. brand expression and delight;
6. decorative novelty.

## Boundaries with related skills

- Use `audit-interface-usability` first when the user asks what is wrong or needs prioritized diagnosis.
- Use `design-resilient-interactions` when missing states, error behavior, asynchronous work, or recovery is the main problem.
- Visual refinement may reveal those issues; report them without silently redesigning product behavior.

## Default output

Lead with the visual direction and highest-impact changes. Then specify foundations or tokens, layout and component decisions, responsive/accessibility considerations, and implementation notes. Distinguish required usability fixes from optional aesthetic refinements.
