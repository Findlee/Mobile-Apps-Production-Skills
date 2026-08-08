# Rollout and Migration

## Decide whether special handling is needed

Plan a compatibility or rollout strategy when changing persisted data, public APIs, event schemas, authentication, payments, SDKs, remote services, or behavior used by multiple deployed versions.

## Prefer expand-migrate-contract

1. **Expand:** add a backward-compatible representation or path.
2. **Migrate:** move traffic/data/clients while observing correctness.
3. **Contract:** remove the old path only after the compatibility window closes.

Avoid destructive one-step conversions unless the system is truly single-version and recoverable.

## Choose controls deliberately

- Feature flag: separate deployment from exposure; define owner and removal date.
- Staged rollout: limit blast radius by cohort, platform, geography, or percentage.
- Shadow/dual read: compare behavior before switching authority.
- Dual write: use only with explicit reconciliation and idempotency; it adds failure modes.
- Adapter: isolate old/new SDK or protocol differences behind a stable boundary.
- Backfill: make resumable, observable, rate-limited, and safe to rerun.

## Define evidence and rollback

Specify:

- leading and lagging success signals;
- data invariants and reconciliation checks;
- alert thresholds;
- who can stop the rollout;
- how to disable behavior;
- whether rollback is safe after new data is written;
- how temporary compatibility code will be removed.

## Mobile compatibility window

Assume multiple client versions remain active. Design servers and shared data for version skew, stale cached data, interrupted upgrades, and users who never install the latest release promptly.

Conceptual lineage: keeping options open, branch by abstraction, architecture fitness checks, and incremental delivery.
