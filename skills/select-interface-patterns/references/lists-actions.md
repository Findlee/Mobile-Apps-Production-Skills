# Lists, collections, and actions

Use this reference for item presentation, collection navigation, and command placement.

## Choose a collection representation

### Text or structured list

Use when users scan labels, metadata, status, order, or comparable values. Lists support density and predictable vertical movement. Define sorting, filtering, selection, and long-content behavior.

### Cards

Use when each item combines heterogeneous content and actions as a meaningful unit. Avoid cards when plain rows and spacing communicate the same structure more efficiently.

### Thumbnail grid

Use when visual recognition dominates and items are peers. Provide labels or alternative access when imagery is ambiguous. Adapt column count and selection behavior.

### Carousel or filmstrip

Use for a short secondary sequence or focused preview where partial next content signals continuation. Avoid for critical items, exhaustive browsing, or content users must compare.

### Feed or stream

Use for time-ordered or continuously updated content. Preserve position, read state, refresh behavior, and a path to older or filtered content.

## Selection and detail

- Use drill-down on compact screens for focused item detail.
- Use split view when persistent context and rapid item switching matter.
- Use inline expansion for short details that do not destabilize the list.
- Preserve scroll position, filters, sorting, and selection when returning.
- Make bulk selection mode visible and easy to exit.

## Long collections

### Pagination

Use when stable positions, bounded results, footer access, sharable pages, or deliberate progress matter. Keep filters and sort across pages.

### Infinite loading

Use when continuous exploration matters more than position or completion. Provide loading, failure, end, refresh, and return-position behavior. Avoid when users need the footer, compare distant items, or resume at a known boundary.

### Jump, index, search, and filters

Use alphabetic or numeric jumps for large ordered sets, search for known items, and filters for meaningful facets. Show active filters, result counts where helpful, clear-all behavior, and empty-filter recovery.

## Action placement

- Keep actions close to the object or selection they affect.
- Put frequent global actions in persistent bars or clearly labeled entry points.
- Use contextual menus for secondary actions, not the only route to essential or safety-critical actions.
- Expose expert shortcuts without making keyboard or gestures the sole access path.
- Avoid hiding required actions behind hover on touch-capable or accessibility-critical interfaces.

## Action hierarchy

- Give one action primary emphasis when the context has a clear next step.
- Group related peer actions; separate easily confused and destructive actions.
- Use a prominent completion action for bounded edit modes when platform conventions support it.
- Preview consequential changes when the result is difficult to predict.
- Use smart labels and enabled states that reflect context without moving actions unpredictably.

## Control and recovery

- Show acknowledgement and progress for asynchronous commands.
- Provide cancel when the operation can be stopped honestly.
- Prefer undo for reversible actions, including multiple levels or history when users may discover mistakes later.
- Preserve a command or activity history where accountability, automation, or recovery benefits from it.
- Design drag and direct manipulation with visible targets, feedback, cancellation, and an accessible alternative.
