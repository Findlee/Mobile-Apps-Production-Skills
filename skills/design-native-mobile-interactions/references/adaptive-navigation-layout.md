# Adaptive navigation and layout

## Window-first design

Base adaptation on available space and posture rather than device names. Define compact, medium, and expanded behavior appropriate to the chosen framework, plus transitions between them.

For each class specify:

- primary navigation form and destination capacity;
- single-pane, list-detail, or supporting-pane composition;
- content width, columns, margins, gutters, and reading measure;
- placement of primary and contextual actions;
- transient surface behavior;
- safe areas, display cutouts, hinges, system bars, and keyboard insets;
- selection and scroll continuity during resize or rotation.

## Navigation model

Distinguish top-level destinations, hierarchy within a destination, modal tasks, lateral switches, external links, deep-link entry, and restoration. Keep destination meaning stable even if the control changes from bottom bar/tab bar to rail/sidebar.

## Back and dismissal

- On Android, define system Back/predictive Back separately from hierarchical up navigation.
- On iOS, preserve expected navigation-stack and modal-dismissal behavior, including interactive gestures where applicable.
- Never use back for an unlabeled destructive action.
- Preserve edits or warn honestly when dismissal loses work.

## Adaptation checks

Test live resizing, split view, rotation, fold/unfold, large text, long localized strings, keyboard visible/hidden, system bars, deep links, and returning after process loss. Avoid treating landscape as merely a wider portrait screen.
