# Sync Protocol Checklist

## Local record and operation metadata

Use only fields justified by the protocol. Common needs include:

- stable entity ID and account or tenant scope;
- local revision and last known remote version or ETag;
- dirty, pending, rejected, or tombstone state;
- durable operation ID and idempotency key;
- operation type, payload version, dependency, and creation order;
- attempt count, last failure class, and next eligible retry;
- server cursor or checkpoint for incremental pull.

Keep secrets and unnecessary server payloads out of the queue.

## Processing

1. Acquire a single logical sync lease so workers do not race.
2. Verify account, schema, credentials, and prerequisite state.
3. Select eligible operations in a deterministic order.
4. Push with idempotency and bounded batching.
5. Classify each response as acknowledged, retryable, conflicted, permanently rejected, or authentication-blocked.
6. Persist acknowledgments and server versions transactionally with queue changes.
7. Pull incremental remote changes using a durable cursor.
8. Apply remote changes and cursor advancement atomically when possible.
9. Publish updated local state.
10. Schedule the next attempt according to remaining work and platform limits.

Push-then-pull, pull-then-push, and interleaved protocols each have consequences. Choose based on server conflict semantics and whether local operations depend on the newest remote base.

## Retry discipline

- Treat connectivity signals as hints; the request result is authoritative.
- Retry timeouts, transient server failures, and rate limits with bounded exponential backoff and jitter.
- Honor server retry guidance when trustworthy.
- Do not automatically retry validation, authorization, unsupported-version, or irreconcilable conflict failures.
- Bound concurrency and payload size to protect battery, memory, and radio use.
- Make every retried operation idempotent or safely deduplicated server-side.

## Deletions and ordering

Use tombstones or an equivalent server-visible deletion history when a deleted item could otherwise reappear from another replica. Define retention and compaction. Preserve dependencies for operations such as create-before-edit and create-before-child-create; reject or coalesce meaningless sequences deliberately.

## Evolution

Version queued operations and local schemas. Define which old operations can be transformed, replayed unchanged, rejected with recovery, or discarded only with user consent. Keep server compatibility for clients that cannot update immediately.
