# React Native Platform Decisions

## Layout and screen behavior

- Design with Flexbox and available space rather than fixed device dimensions.
- Account for safe areas, keyboard visibility, text scaling, orientation, split-screen, and platform-specific controls.
- Keep accessibility roles, names, values, states, and touch targets meaningful.
- Do not communicate status only by color or animation.

## Lists and images

- Use virtualized lists for large or unbounded collections.
- Give items stable keys from domain identity, not array position when ordering can change.
- Keep row rendering cheap and avoid passing new large objects without reason.
- Size and cache images deliberately; avoid decoding full-resolution media for small views.
- Implement pagination, refresh, empty, partial, and retry states as distinct user behavior.

## Navigation and links

- Use the navigation library already installed.
- Treat deep-link and notification payloads as untrusted input: parse, validate, authorize, and handle missing destinations.
- Make important routes reconstructable after process death; do not rely solely on in-memory objects.
- Test back behavior, repeated delivery, nested routes, authentication redirects, and cancellation.

## Lifecycle

Model foreground, inactive, background, process death, and restoration where relevant. Clean up listeners and subscriptions. Do not assume a timer or JavaScript task continues indefinitely in the background; platform policies control execution.

## Gestures and animation

- Resolve gesture ownership and conflicts deliberately.
- Keep urgent interaction feedback independent from slow data work.
- Prefer native-capable animation mechanisms for high-frequency visual updates when the installed stack supports them.
- Respect reduced-motion preferences.
- Test on representative physical devices when timing or sensors matter.

## Platform differences

Use platform-specific files or narrow platform adapters when behavior genuinely differs. Avoid scattered platform conditionals across the feature. Keep common policy shared and platform mechanism local.
