---
name: design-mobile-sync
description: Design, review, or evolve offline-first behavior and synchronization for mobile applications, including local sources of truth, read and write policies, operation queues, retries, idempotency, incremental sync, deletions, conflicts, schema evolution, lifecycle limits, observability, and recovery. Use when a Flutter, React Native, or native mobile feature must work with unreliable connectivity, cached data, background synchronization, optimistic writes, multiple devices, or eventual consistency.
---

# Design Mobile Sync

Define the offline product promise before choosing storage or background-task libraries. A cache is not automatically an offline-first design, and connectivity is not proof that a request can succeed.

## Define the offline contract

1. List the user journeys that must read, create, edit, delete, or submit while disconnected.
2. For each journey, define what the user sees immediately, what is durable locally, what requires server acceptance, and how pending or failed work is communicated.
3. Identify authoritative owners, invariants, security boundaries, and data that must never be stored on device.
4. Define freshness expectations and acceptable staleness.
5. State background-execution assumptions separately for Android and iOS.

Read [offline-contract.md](references/offline-contract.md) before choosing read and write policies.

## Design data and operation ownership

1. Choose a single application-facing source of truth, usually a repository over durable local storage.
2. Separate domain data from synchronization metadata.
3. Use stable client-generated identifiers when objects may be created offline.
4. Represent pending writes, deletions, acknowledgments, remote versions, and retry state durably enough to survive process death.
5. Define schema and operation-version migration before shipping queued work across app upgrades.

## Design the protocol

Specify push and pull order, batching, incremental cursors, transaction boundaries, idempotency keys, duplicate handling, retry classification, backoff and jitter, authentication refresh, tombstones, pagination, partial failure, and cancellation.

Read [sync-protocol.md](references/sync-protocol.md) for the protocol checklist.

## Resolve conflict and recovery

Prefer preventing conflicts through ownership and operation design. When concurrent edits remain possible, detect them with explicit versions or server contracts and choose resolution per domain meaning. Do not use device wall-clock time as an unquestioned conflict oracle.

Read [conflicts-and-testing.md](references/conflicts-and-testing.md) for conflict options, failure scenarios, and verification.

## Plan rollout and observation

1. Introduce local schema, compatibility, and observation before enabling broad offline writes.
2. Roll out behind a controllable switch when protocol risk is high.
3. Monitor queue depth and age, sync lag, retries by reason, conflicts, rejected operations, cursor resets, and migration failures without logging sensitive payloads.
4. Define repair actions for a stuck queue, corrupted local data, invalid cursor, rejected old client, and server rollback.
5. Use [mobile-sync-design.md](assets/mobile-sync-design.md) for the final design.

Coordinate with `analyze-architecture-tradeoffs` for system-wide topology, `design-valuable-tests` for a full test portfolio, and `plan-feature-change` for delivery slicing.

Do not promise invisible background sync that the operating system cannot guarantee. Do not retry permanent validation failures. Do not clear pending work on logout or migration without an explicit product and security decision. Do not let transport models become the only representation of domain truth.
