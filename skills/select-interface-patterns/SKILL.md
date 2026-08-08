---
name: select-interface-patterns
description: Compare and select interface patterns for navigation, page structure, progressive disclosure, lists, collections, actions, forms, input, dashboards, and adaptive mobile or desktop layouts. Use when asked which UI pattern or component model to choose; whether to use tabs, bottom navigation, drawers, cards, lists, grids, wizards, pagination, infinite scroll, dialogs, sheets, filters, or form controls; or to compare alternative structures for a defined user task. Produce a context-specific recommendation with tradeoffs, states, and reconsideration conditions. Do not use for product problem framing, visual styling, general audits, or detailed failure-state engineering.
---

# Select Interface Patterns

Choose patterns from the user's task, content, context, and risks. Do not select a pattern because it is fashionable, visually attractive, or easy for the implementation stack.

## Core rules

- Start from the activity, task, objects, and information relationships.
- Prefer familiar platform and product-category conventions unless an alternative creates clear additional value.
- Compare at least two plausible candidates for consequential decisions.
- Treat every pattern as a tradeoff, not a universal best practice.
- Evaluate the complete pattern, including entry, use, empty state, loading, failure, completion, escape, and return.
- Distinguish content organization, navigation, layout, and visual styling; they are related but not interchangeable.
- Verify current platform guidance before prescribing platform-specific components or numeric specifications.
- Keep necessary complexity visible and manageable; do not hide it merely to make a screen look simple.

## Workflow

### 1. Define the decision

Record:

- the user goal and frequency of the task;
- objects, actions, data volume, hierarchy, and relationships;
- novice versus expert needs;
- target platforms, window sizes, input methods, and environment;
- constraints such as deep linking, offline use, collaboration, accessibility, and implementation maturity;
- consequence of wrong selection or accidental action;
- expected growth in destinations, data, and functionality.

If the product goal, actors, or flow is still undefined, use `plan-interface-experience` first.

### 2. Identify the pattern family

- Read [navigation-layout.md](references/navigation-layout.md) for application structure, navigation, wayfinding, page types, panels, progressive disclosure, and responsive layout.
- Read [lists-actions.md](references/lists-actions.md) for lists, collections, item details, commands, toolbars, direct manipulation, preview, history, cancel, and undo.
- Read [forms-input.md](references/forms-input.md) for data entry, choice controls, search, validation, defaults, settings, and multi-step flows.
- Read [data-adaptive.md](references/data-adaptive.md) for dashboards, complex data, filtering, charts, mobile constraints, and adaptive multi-pane behavior.

Load only the references relevant to the decision.

### 3. Generate candidates

Choose two or three plausible patterns. Include the familiar default unless it clearly cannot satisfy the task. Reject candidates that fail a hard constraint before detailed comparison.

Do not create superficial variants that differ only in decoration.

### 4. Compare candidates

Read [decision-framework.md](references/decision-framework.md) and compare:

- fit to the user goal and information model;
- discoverability and familiarity;
- interaction and cognitive cost;
- scalability and adaptive behavior;
- accessibility across input methods;
- state visibility, error likelihood, and recovery;
- support for deep links, back behavior, and preserved context;
- implementation complexity only after user-facing criteria.

Explain causal tradeoffs in plain language. Psychological principles may support the reasoning, but never use a named law as the entire argument.

### 5. Specify the recommended pattern

Define:

- information and interaction structure;
- primary, secondary, and contextual actions;
- selection, navigation, and return behavior;
- relevant states and transitions;
- behavior at compact and expanded sizes;
- keyboard, touch, pointer, and assistive-technology expectations;
- content limits or thresholds that would trigger a different pattern;
- current platform documentation that implementation should follow.

### 6. Record the decision

Use the pattern decision record in [decision-framework.md](references/decision-framework.md). State what evidence would invalidate the choice and how to validate uncertain assumptions.

## Boundaries with related skills

- Use `plan-interface-experience` to define the problem, activity, flow, and screen inventory before choosing detailed patterns.
- Use `craft-visual-ui` after the structural pattern is selected to define visual hierarchy and presentation.
- Use `design-resilient-interactions` for complete failure, waiting, cancellation, and recovery behavior.
- Use `audit-interface-usability` when the task is to diagnose an existing implementation rather than select a new pattern.

## Default output

Lead with the recommendation and why it fits. Then show the compared alternatives, tradeoff matrix, required states and adaptive behavior, implementation notes, and conditions for reconsideration. For a small local choice, keep the decision record compact.
