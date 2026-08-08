# Test automation architecture heuristics

Load this reference when selecting candidates, scopes, dependencies, data, CI stages, or maintenance policy.

## Candidate decision

Ask of each candidate:

- Which risk and decision does it support?
- How often will useful repetition occur?
- Can the expected result be observed reliably and precisely?
- Is the behavior or interface stable enough for the expected lifetime?
- What setup, data, environment, runtime, and cleanup does it require?
- Can a failure identify the broken behavior without long investigation?
- Who will own repairs when product behavior changes?
- Does another test scope already provide equivalent evidence more cheaply?
- Would exploration or human evaluation provide more value?

Automate severe but rare risks when simulation makes otherwise unobtainable evidence economical. Do not automate stable trivial behavior merely because it is easy.

## Select test scope

- **Pure logic/unit:** deterministic rules, boundaries, properties, transformations.
- **Component/service:** behavior across internal collaborators with controlled external boundaries.
- **Contract:** consumer/provider assumptions across independently changing components.
- **Integration:** real protocol, storage, framework, platform, or third-party assumptions.
- **Workflow/end-to-end:** a small set of critical journeys and deployment wiring.
- **Production probe:** safe availability or business-flow signals that require the deployed system.

Choose the narrowest scope that can falsify the important claim. Retain broader checks for risks the narrow scope cannot represent. A pyramid, trophy, or honeycomb may help explain a context; none is a universal target shape.

## Dependency strategy

- Use a stub for controlled indirect input.
- Use a spy when later inspection of an interaction supplies evidence.
- Use a mock when a specific interaction is itself the contract and over-specification is controlled.
- Use a fake for a working but simplified dependency when behavior is stable enough to model.
- Use service virtualization for controllable protocols, rare failures, and unavailable dependencies.
- Use selected real integrations to detect drift, deployment, compatibility, and false-double assumptions.

Define who keeps doubles aligned with reality. Do not mock code you do not understand merely to make a test pass.

## Data and fixture design

- Prefer minimal data that exposes the behavior while remaining realistic.
- Give each parallel test unique identities or isolated storage.
- Make setup APIs explicit, validated, and observable.
- Separate immutable reference data from per-test mutable data.
- Clean up deterministically or create disposable environments.
- Test with historical and migrated shapes where production history matters.
- Protect personal and secret data; prefer synthetic or appropriately transformed datasets.

Avoid shared mutable fixtures, order dependence, manual preparation, and opaque snapshots that make failures hard to interpret.

## Determinism and waiting

Control clock, randomness, identifiers, network outcomes, background jobs, and scheduling at suitable seams. Wait for meaningful completion conditions, events, or bounded polling—not fixed sleeps. Do not use global retries to disguise product races, environment failures, or weak synchronization.

## Diagnostic evidence

On failure, preserve expected/actual values, relevant requests and responses, stable IDs, state transitions, logs, traces, screenshots where meaningful, environment and version, and timing. Keep secrets and personal data redacted. Prefer one clear reason for failure over many secondary assertions.

## CI staging

Place feedback according to value and duration:

- local or pre-commit for fast developer checks;
- pull request for high-signal change validation;
- build/package stage for integration and deployable-artifact checks;
- scheduled or dedicated environment for expensive compatibility, endurance, and broad workflows;
- deployment and production stages for safe probes and rollout signals.

Define resource limits, parallelism, artifact retention, cancellation, ownership, and response expectations.

## Flaky and maintenance policy

Classify failures before acting: product, test, environment, data, dependency, or unknown. Preserve evidence before rerunning. Track flaky rate and recurrence by test and cause.

Quarantine only with visible status, owner, reason, issue, expiry, and reduced but explicit confidence. Repair, redesign, relocate, or delete checks rather than normalizing noise. Review obsolete checks and maintenance debt regularly.

## Outcome measures

Prefer time to trustworthy signal, important regressions detected, false-positive/flaky rate, diagnostic time, runtime, maintenance effort, and escaped-risk learning. Use test count, line coverage, and automation percentage only as investigation signals.
