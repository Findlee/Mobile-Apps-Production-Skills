# Navigation and layout patterns

Use this reference for application structure, wayfinding, page types, panels, and progressive disclosure.

## Start with the content model

- Separate information organization from its current visual presentation.
- Classify content by hierarchy, category, facet, time, location, sequence, or task as appropriate.
- Define common page roles: overview, collection, detail, creation, focused task, settings, and help.
- Keep frequent tools available while supporting novice discovery and expert efficiency.

## Navigation models

### Flat peer destinations

Use tabs, bottom navigation, navigation rail, or a persistent bar for a small stable set of top-level destinations of comparable importance. Avoid when the set is large, frequently changing, deeply hierarchical, or cannot be labeled clearly.

### Hierarchical drill-down

Use for parent-child information where each level narrows scope. Preserve path, back behavior, title, and deep linking. Avoid forcing unrelated tasks into a hierarchy.

### Hub and spoke

Use when distinct tasks begin from a central hub and do not need lateral movement. Provide a reliable return path. Avoid when users frequently switch between spokes or compare them.

### Sequential flow

Use when steps have true dependency, a risky commitment, or a meaningful order. Show progress, allow safe backtracking, save work, and avoid unnecessary steps.

### Fully connected or search-led access

Use when users know the destination or objects have many cross-links. Support search, recent items, deep links, and history. Do not remove browsable structure when users may not know the vocabulary.

### Pyramid or multiple entry routes

Use when the same content needs curated, browsable, and direct access. Keep the routes conceptually coherent and avoid duplicate pages with conflicting state.

## Wayfinding

- Provide clear entry points for the primary tasks.
- Distinguish global, local, utility, contextual, and related-content navigation.
- Show location through titles, selected states, breadcrumbs where hierarchy warrants them, and preserved context.
- Provide escape from modal, nested, and guided contexts.
- Design deep-link entry as a first-class state, not only navigation from the home screen.
- Use transitions to explain spatial or state change, not as decoration.

## Layout patterns

### Central stage

Give one work object or content region priority and place tools around it. Suitable for creation, media, maps, or focused inspection.

### Grid of equals

Use when items have comparable importance and benefit from visual scanning. Define responsive column and item behavior; avoid when comparison needs strict row alignment or content varies dramatically.

### Titled sections

Use for a modest number of visible content groups. Headings must describe the groups, and spacing should establish structure before boxes do.

### Tabs, accordion, and collapsible panels

Use tabs for a small number of peer views when switching is frequent and labels fit. Use accordion or collapsible panels for secondary sections when simultaneous comparison is not important. Do not hide required information or create nested disclosure mazes.

### Split or multi-pane layout

Use when selection and detail, source and destination, or parallel context benefit from remaining visible together. Collapse to drill-down or sheets at compact sizes while preserving selection and return context.

### Modal panel, dialog, sheet, or popover

Use for a bounded decision or contextual task that should temporarily interrupt the underlying context. Avoid for long, branching, or frequently referenced work. Provide a clear title, escape, focus handling, and consequence.

## Progressive disclosure

- Keep the primary path and current state visible.
- Reveal advanced, rare, or dependent choices when relevant.
- Do not hide information required to make the current decision.
- Preserve choices when sections collapse or the user navigates back.
- Use defaults to reduce work, not to conceal commitments.
