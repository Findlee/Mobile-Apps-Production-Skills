# Data-rich and adaptive patterns

Use this reference for dashboards, complex data, charts, filtering, and cross-device adaptation.

## Start from the analytical question

Determine whether users need to:

- monitor current state;
- compare categories or time periods;
- find outliers or trends;
- locate a precise value;
- filter or segment;
- move from overview to detail;
- take action from the data.

Do not choose a chart or dashboard layout before defining the question.

## Dashboard

Use a dashboard for monitoring a coherent set of high-value signals and entry points. Prioritize actionable or diagnostic information, show freshness and scope, and avoid turning every available metric into a card. Let users move from summary to evidence and action.

## Data display patterns

- Use aligned tables when precise comparison across many fields is primary.
- Use charts for patterns, relationships, and magnitude; keep exact values available.
- Use small multiples for repeated comparisons with consistent scales.
- Use direct labels where possible and legends where mapping remains clear.
- Use highlighting or data spotlight to focus attention without hiding context.
- Use coordinated highlighting or brushing when relationships across views matter.
- Avoid multiple axes or visual encodings that make comparison ambiguous.

## Query and exploration

- Provide sorting for order-dependent questions.
- Provide search for known items and filters for meaningful facets.
- Use dynamic queries when immediate feedback helps exploration and performance permits it.
- Show active constraints, result counts when useful, clear-all behavior, and empty-result recovery.
- Preserve query state across detail navigation and sharing when the task requires it.

## Preattentive emphasis

Use position, length, size, orientation, shape, and color carefully to direct attention. Limit competing emphasis and never make color the only carrier of meaning. Keep scales, baselines, units, and time windows explicit.

## Mobile and adaptive constraints

- Prioritize the mobile activity rather than shrinking a desktop dashboard.
- Arrange the compact experience in a clear linear flow.
- Optimize frequent actions and use device capabilities only when they add understandable value.
- Use bottom navigation, bars, sheets, cards, or gestures according to current platform conventions, not historical examples alone.
- Reflow data tables into prioritized rows, cards, horizontal regions, or drill-down only when comparison needs remain supported.
- Use larger windows for multiple panes, persistent filters, comparison, and detail context.

## Adaptation methods

- **Reflow:** change column and row arrangement while preserving content.
- **Reveal:** show useful supporting context when space permits.
- **Replace presentation:** switch between drill-down and split view, menu and rail, or sheet and pane while preserving state.
- **Prioritize:** keep essential content and actions available; defer secondary material without deleting capability.

Define transition points from content needs and current platform size classes. Verify safe areas, orientation, text scaling, keyboard appearance, pointer versus touch, and window resizing.
