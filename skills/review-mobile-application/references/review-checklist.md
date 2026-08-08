# Mobile application review checklist

Use this as an evidence inventory, not as a requirement to manufacture a finding in every category.

## Repository and toolchain

- Framework, language, SDK and platform versions
- Dependency manifests, locks, overrides, and stale or abandoned critical packages
- Generated-code boundaries and reproducible generation
- Build variants, environments, feature flags, and secret handling
- Static analysis, formatting, tests, CI, and artifact provenance

## User journeys and UI

- Entry, authentication, onboarding, navigation, deep links, and back behavior
- Loading, empty, error, retry, cancellation, and destructive-action states
- State restoration, background/foreground transitions, and interrupted work
- Accessibility semantics, focus, text scaling, contrast, touch targets, and reduced motion
- Responsive layouts, localization, time zones, and right-to-left behavior when relevant

## State, data, and failures

- State owner, source of truth, mutation path, and stale-data policy
- Network timeouts, cancellation, retries, duplicate actions, and error translation
- Serialization validation, schema evolution, persistence migrations, and encryption needs
- Authentication expiry, authorization boundaries, PII retention, and log redaction
- Offline promise, queue durability, idempotency, conflicts, deletions, and process death

## Architecture and changeability

- Feature and module boundaries match actual change paths
- Dependencies point toward stable policy and public surfaces remain small
- UI, domain decisions, orchestration, and external details are appropriately separated
- Cross-feature shared code has a demonstrated reason to be shared
- Architectural rules are enforceable through tools or tests where the risk justifies it

## Framework implementation

- Flutter: widget build purity, state ownership, subscriptions, async context use, navigation, keys, and isolates
- React Native: render purity, effects, TypeScript boundary safety, list identity, navigation typing, and JS/native lifecycle
- Consistent dependency injection and error/state modeling without unnecessary abstraction
- Framework conventions are evaluated in the context of project versions

## Testing and observability

- Critical journeys, domain rules, integrations, migrations, and recovery paths are protected
- Test level matches risk; doubles do not encode internal implementation unnecessarily
- Failure output is diagnostic; test data and time/network behavior are controlled
- Crash reporting, structured diagnostics, privacy-safe telemetry, and release correlation exist

## Performance and resources

- User-visible performance requirements and representative device classes are known
- Release/profile measurements exist for reported symptoms
- Startup, frames, input, lists, images, memory, CPU, network, battery, and package size are considered where relevant
- A concern without measurements is framed as a measurement need, not a proven bottleneck

## Native and release boundaries

- Permissions are requested in context and denial/restriction recovery is clear
- Platform APIs, plugins, native modules, push, links, and background modes cover lifecycle failures
- Real-device and OS-version matrices reflect supported users
- Signing, store metadata, privacy declarations, min/target OS, upgrade tests, migrations, staged rollout, monitoring, halt criteria, and recovery are documented
