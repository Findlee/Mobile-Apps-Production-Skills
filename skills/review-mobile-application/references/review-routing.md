# Review routing

Use this matrix to choose audit lenses. Load a specialist only when its condition applies, and consolidate its findings into the main report.

| Evidence or audit goal | Specialist skill | Review contribution | Do not use it to |
|---|---|---|---|
| Existing Flutter application | `implement-flutter-feature` | Widgets, state ownership, navigation, async lifecycle, data flow, and Flutter verification | Mandate a new state library |
| Existing React Native application | `implement-react-native-feature` | React purity, TypeScript boundaries, navigation, lists, effects, native lifecycle, and verification | Apply web-only assumptions or add global state by default |
| Dependency direction, public APIs, tangled feature code | `design-module-boundaries` | Change paths, information hiding, contracts, coupling, and enforcement | Split modules by size alone |
| Missing, brittle, slow, or misleading tests | `design-valuable-tests` | Risk-to-test mapping, test levels, doubles, database semantics, and maintainability | Optimize for coverage percentage |
| Signing, flavors, environments, CI, migrations, stores, rollout | `prepare-mobile-release` | Candidate provenance, compatibility, staged release, monitoring, and recovery | Treat a clean install as sufficient evidence |
| Major topology decision or architecture-fit question | `analyze-architecture-tradeoffs` | Quality scenarios, alternatives, operational cost, and risk | Apply a fashionable architecture universally |
| Offline reads, queued writes, replicas, conflicts, retries | `design-mobile-sync` | Offline promise, local source of truth, idempotency, conflict policy, and recovery | Design synchronization for local-only preferences |
| Reproduced slowness, jank, startup, memory, CPU, or battery symptom | `diagnose-mobile-performance` | Baseline, pipeline classification, hypothesis, experiment, and before/after validation | Declare bottlenecks from code appearance |
| Permissions, hardware, push, deep links, background work, native modules | `integrate-native-capability` | Typed boundary, lifecycle, permission recovery, privacy, and device matrix | Assume emulator coverage is sufficient |
| A justified structural change is recommended | `refactor-safely` | Behavior baseline, incremental transformations, checks, and stop criteria | Turn the audit into an unrequested rewrite |
| User journey or intended outcome is too unclear to assess | `map-product-scope` | Missing scenarios, actors, outcomes, recovery paths, and learning questions | Replace code evidence with product speculation |
| Accepted findings need an executable delivery plan | `plan-feature-change` | Vertical increments, dependencies, verification, rollout, and completion criteria | Fragment the audit into layer-based tasks |

## Minimum routing

For a general application review, apply these lenses at minimum:

1. The detected framework implementation skill.
2. `design-module-boundaries`.
3. `design-valuable-tests`.
4. `prepare-mobile-release`, at a depth appropriate to available release artifacts.

Add all other lenses only when their activation evidence exists. If a required skill is unavailable, name the missing lens in limitations and perform only the analysis supported by the current skill and repository evidence.

## Boundaries with dedicated reviewers

- If the primary question is threat exposure, exploitability, authentication or authorization security, secure storage, cryptography, or network security, route it to `review-mobile-security`. This review may record the technical evidence and consequence, but does not perform a competing security assessment.
- If the primary question is App Store or Google Play policy, privacy declarations, manifests, Data safety, metadata, or submission evidence, route it to `review-mobile-store-compliance`. `prepare-mobile-release` continues to own build provenance, signing, compatibility, rollout, monitoring, and recovery.
- Reuse current feature, E2E, UX, QA, security, and compliance reports. Repeat a check only to resolve a narrowly stated engineering hypothesis.

## Conflict resolution

When specialist recommendations conflict:

1. Prefer the recommendation tied to an observed user or operational risk.
2. Prefer a smaller reversible change over a speculative migration.
3. Preserve established project conventions unless they cause demonstrated harm.
4. Surface the trade-off and required decision instead of silently selecting a preference.
5. Keep one canonical finding and cite all contributing lenses.
