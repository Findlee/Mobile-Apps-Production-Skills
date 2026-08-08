# Mobile Sync Design

## Product promise

- Supported offline journeys:
- Explicitly online-only actions:
- User-visible pending, stale, conflict, and failure language:
- Freshness and durability expectations:

## Ownership and data

- Application source of truth:
- Server authority and invariants:
- Local entities and sync metadata:
- Sensitive data restrictions:
- Schema and operation versions:

## Read and write policies

| Journey | Read policy | Write policy | Immediate result | Confirmation/recovery |
|---|---|---|---|---|

## Protocol

- Trigger conditions:
- Push/pull order:
- Idempotency and deduplication:
- Incremental cursor:
- Retry and rate limiting:
- Deletions and dependencies:
- Authentication behavior:

## Conflicts

- Detection:
- Resolution per entity or operation:
- User involvement:
- Audit or preserved versions:

## Lifecycle and rollout

- Android/iOS execution assumptions:
- Migration and compatibility:
- Rollout switch and stages:
- Repair and rollback:

## Verification and observation

- Deterministic cases:
- Database and server-contract cases:
- Device lifecycle cases:
- Metrics, alerts, and sensitive-data rules:
