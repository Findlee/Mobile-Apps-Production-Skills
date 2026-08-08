# Change Risk Checklist

Use only the dimensions relevant to the change. Rank risks by impact and likelihood; do not inflate the list.

## Behavior and scope

- Is the intended user-visible result explicit?
- Are failure, cancellation, retry, and recovery observable behaviors defined?
- Does the slice work end to end, or only complete a technical layer?
- Are non-goals explicit enough to prevent opportunistic expansion?

## Data

- Who owns each changed datum?
- Does persisted data require migration, backfill, versioning, or deletion?
- Can old and new application versions read/write the same data safely?
- Are ordering, duplication, conflict resolution, and idempotency relevant?
- Is sensitive data minimized, encrypted, retained, and deleted correctly?

## Boundaries and dependencies

- Which public contracts, events, schemas, deep links, or SDK interfaces change?
- Are timeouts, partial failure, rate limits, and unavailable dependencies handled?
- Does a new abstraction hide a real decision or merely mirror one implementation?
- Are cycles or bypasses introduced between modules?

## Mobile and intermittent clients

- What happens with no network, slow network, process death, or background suspension?
- Can a user repeat an action after uncertain completion?
- How do multiple devices or stale clients reconcile state?
- Are battery, bandwidth, storage, and startup costs material?

## Operations and delivery

- Can the change be observed in production through meaningful signals?
- Can it be disabled or rolled back without corrupting state?
- Are feature flags, staged rollout, or compatibility windows needed?
- Does support need new diagnostics or recovery tooling?

## Testing

- Which regression would cause the most harm?
- What is the lowest test level that provides realistic confidence?
- Which external interaction is part of the system's observable contract?
- Which checks are fast enough to run during each increment?

## Decision rule

Convert each material risk into one of: avoid by design, reduce with an implementation constraint, detect with a test or production signal, transfer through a service contract, or explicitly accept with rationale.

Conceptual lineage: user-story slicing, architecture risk analysis, information hiding, behavior-oriented testing, and incremental refactoring.
