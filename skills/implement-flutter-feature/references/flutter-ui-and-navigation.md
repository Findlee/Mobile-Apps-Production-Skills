# Flutter UI and Navigation

## Widget and element behavior

- Keep `build` deterministic for current inputs and state.
- Avoid side effects, subscriptions, network calls, and object creation with external lifetime inside `build`.
- Use keys when identity must survive reordering or replacement; do not add keys everywhere.
- Push rebuild scope down to the smallest meaningful observer, but do not fragment widgets solely to chase rebuild counts.
- Prefer lazy list and grid builders for large or unbounded collections.
- Use `const` where it is natural and valid, not as a substitute for profiling.

## Layout and responsiveness

Work with Flutter's constraint flow: parent constraints go down, child sizes go up, and parents position children.

- Base layout breakpoints on available space and content needs, not named device models.
- Check compact, expanded, landscape, keyboard-visible, large-text, and split-screen conditions when relevant.
- Avoid expensive intrinsic layout in repeated cells unless measured and justified.
- Keep scroll ownership unambiguous; avoid casually nesting unconstrained scroll views.

## Navigation

- Follow the router already established by the application.
- Treat routes and deep links as public input: parse, validate, authorize, and handle missing resources.
- Put only stable, reconstructable identifiers in route state. Do not depend on an in-memory object being present after process recreation.
- Test back behavior, cancellation, restoration, authentication redirects, and repeated deep-link delivery.
- Keep navigation decisions near presentation coordination; do not make repositories navigate.

## Accessible behavior

- Provide semantic labels or values when visible content is insufficient.
- Keep tap targets usable and traversal order meaningful.
- Do not encode state only through color, animation, or position.
- Support text scaling without clipping essential actions.
- Respect reduced-motion and platform accessibility settings when the feature animates.
- Make loading, errors, confirmations, and changed values perceivable to assistive technology.

## Lifecycle checks

Guard asynchronous completions that may outlive their widget or state owner. Dispose controllers, focus nodes, subscriptions, and animation controllers according to ownership. Reconcile foreground return, process recreation, and route restoration when the feature depends on external state.
