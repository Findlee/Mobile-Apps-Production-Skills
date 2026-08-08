# Specialist routing map

Inspect every lens. Deep-load the sibling skill only when evidence and risk justify it. Paths are relative to the `qa-review-project` directory and assume the full collection is installed together.

| Lens | Sibling skill | Deep-review triggers | Light screen or limitation |
|---|---|---|---|
| Requirements | [`$qa-clarify-requirements`](../../qa-clarify-requirements/SKILL.md) | Missing, conflicting, or implementation-bound requirements; unclear acceptance; domain ambiguity | If no product artifacts exist, infer only from code and label uncertainty |
| Risk strategy | [`$qa-plan-risk-based-testing`](../../qa-plan-risk-based-testing/SKILL.md) | Always for a complete project review; deepen for release, migration, constraints, regulated or high-impact flows | Keep lightweight for a tiny isolated change |
| Test design | [`$qa-design-tests`](../../qa-design-tests/SKILL.md) | Critical rules lack boundaries, state, sequence, property, error, or structural coverage | Source review cannot prove checks pass or detect regressions |
| Exploratory testing | [`$qa-run-exploratory-testing`](../../qa-run-exploratory-testing/SKILL.md) | Runnable unfamiliar product, risky interaction, weak predefined oracles, or missing exploration strategy | Without a runnable authorized target, produce charters and mark execution unverified |
| Mobile | [`$qa-test-mobile-app`](../../qa-test-mobile-app/SKILL.md) | iOS, Android, native, hybrid, cross-platform, PWA, mobile release, device/platform code | Without builds/devices/telemetry, review static risks and propose a device/evidence matrix |
| Web API | [`$qa-test-web-api`](../../qa-test-web-api/SKILL.md) | HTTP API, OpenAPI, backend-for-frontend, webhooks, service contracts, API consumers | Without a running environment, inspect design/contracts/code and mark behavior unverified |
| Testability | [`$qa-improve-testability`](../../qa-improve-testability/SKILL.md) | Hidden dependencies, broad setup, global state, time/random/network coupling, weak diagnostics, inaccessible failures | Sample critical seams; do not demand abstraction without a concrete testing or diagnosis need |
| Automation architecture | [`$qa-build-test-automation`](../../qa-build-test-automation/SKILL.md) | Automated suite, CI feedback, missing automation, flaky/slow stages, data/environment/double strategy | A repository may show configuration but not current stability or maintenance effort |
| Test code | [`$qa-write-maintainable-tests`](../../qa-write-maintainable-tests/SKILL.md) | Unit/component/integration/UI tests exist or AI-generated tests need review | Sample risk-heavy and representative files; disclose sampling |
| Defect investigation | [`$qa-investigate-defect`](../../qa-investigate-defect/SKILL.md) | Supplied failing output, crash, flaky test, known defect, incident, or reproducible observed failure | Do not infer a defect merely from suspicious code; report risk or hypothesis instead |
| Production readiness | [`$qa-assess-production-readiness`](../../qa-assess-production-readiness/SKILL.md) | Deployable service/app, release pipeline, migration, operational configuration, production exposure | Without operational evidence, assess design and list required load/recovery/observability proof |

## Recommended order

1. Establish product intent and risk.
2. Inspect coverage and platform-specific behavior.
3. Review testability, automation architecture, and representative test code.
4. Investigate only concrete failures.
5. Assess production readiness and release safeguards.
6. Consolidate findings across lenses.

Change the order when early evidence points to an urgent security, data-integrity, or release risk. Do not let a deep low-priority review delay a clear P0 finding.

## Missing sibling behavior

If a sibling package cannot be read:

- mark that lens as reduced or blocked;
- use only the trigger and output expectations in this map;
- do not claim the specialist workflow ran;
- recommend installing the full collection before relying on the review for a high-risk decision.
