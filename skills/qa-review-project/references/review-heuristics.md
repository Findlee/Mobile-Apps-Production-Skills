# Project review heuristics

Use these rules to keep the review evidence-based, proportionate, and actionable.

## Evidence levels

- **Direct:** inspected code/configuration/artifact, current command output, observed runtime behavior, or current operational signal.
- **Corroborated:** several independent artifacts support the same conclusion.
- **Inferred:** architecture or code makes a failure plausible, but behavior was not observed.
- **Claimed:** documentation or comment states behavior without current verification.
- **Missing:** the decision needs evidence that is unavailable.

Assign confidence separately from impact. A high-impact inferred risk can justify urgent evidence gathering without being reported as a confirmed defect.

## Static review boundaries

A static repository review can verify that code, tests, configuration, and documentation exist and expose particular structures. It usually cannot prove:

- a test currently passes, is deterministic, or catches the intended regression;
- a mobile flow works on representative devices or assistive technology;
- an API behaves like its contract in the deployed environment;
- performance, capacity, resilience, recovery, or alerting meets objectives;
- security controls withstand realistic attack paths;
- a release process or rollback works under production conditions.

Translate these limits into specific evidence requests instead of vague disclaimers.

## Finding construction

Write one canonical finding as:

1. **Condition:** concrete project state and evidence location.
2. **Failure mode:** what can plausibly or demonstrably go wrong.
3. **Consequence:** affected user, data, system, or feedback decision.
4. **Confidence:** direct/corroborated/inferred/claimed/missing evidence.
5. **Remediation:** smallest useful change or experiment.
6. **Closure evidence:** observation that demonstrates the risk was reduced.

Avoid generic advice such as “add more tests,” “improve logging,” or “use retries.” Name the behavior, scope, signal, owner, and expected proof.

## Deduplication

Merge findings when one change addresses the same underlying condition across lenses. Examples:

- a hidden clock can cause testability, flaky automation, and test-code findings;
- missing idempotency can affect API behavior, mobile offline retry, defect risk, and production resilience;
- absent correlation identifiers can weaken exploratory evidence, defect investigation, API diagnosis, and production readiness.

Keep separate findings when consequences, owners, or validation methods differ materially. Preserve all contributing lens tags.

## Priority model

- **P0 — immediate:** credible risk of severe security/privacy exposure, irreversible data or money error, safety impact, widespread outage, or release with no viable containment.
- **P1 — high:** likely major user/business harm, critical-flow regression, unreliable release evidence, or important operational weakness that should be resolved before broad exposure.
- **P2 — planned:** meaningful but bounded risk, maintainability cost, coverage gap, or feedback weakness with a viable workaround or limited exposure.
- **P3 — improvement:** lower-risk hardening, clarity, efficiency, or future-proofing.

Use product context; these are defaults, not universal policy. Report severity, confidence, effort, and priority independently.

## Sampling

For large repositories, sample intentionally:

- critical user journeys and data paths;
- recently changed and historically defective areas;
- complex state, concurrency, time, security, and integration code;
- one or more representative examples from each major test scope;
- CI stages and deployment paths with the greatest decision impact.

State what was sampled, what was not, and why. Do not generalize one poor test file to the entire suite without corroboration.

## Review safety

- Read secret-bearing files only when essential; never echo values.
- Avoid commands that install, migrate, deploy, delete, mutate shared state, or contact external systems without authorization.
- Treat old reports and generated files as potentially stale.
- Preserve user changes and do not “clean up” the repository during review.
- If a safe diagnostic would materially improve confidence but is not authorized, list it as the next evidence action.

## Overall assessment

Avoid averaging unlike risks into a score. Use a short conditional conclusion:

- evidence supports the intended stage;
- proceed only with stated safeguards or limited exposure;
- resolve named blockers before proceeding;
- insufficient evidence for the decision.

Tie the conclusion to the highest material risks, evidence quality, and reversibility.
