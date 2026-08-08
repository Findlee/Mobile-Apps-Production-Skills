# Offline Contract

## Capability matrix

For every important journey, classify:

| Operation | Offline behavior | Immediate UI | Durable locally | Server confirmation |
|---|---|---|---|---|
| Read | unavailable, stale, or local-first | data/freshness indicator | cached or primary copy | optional refresh |
| Create | blocked or queued | pending item | entity and operation | accepted/rejected later |
| Edit | blocked, optimistic, or queued | changed/pending | change and base version | accepted/conflicted later |
| Delete | blocked or tombstoned | hidden/pending undo | tombstone or operation | acknowledged later |
| Irreversible action | usually online-only | explicit wait | intent only if safe | required before success |

Adapt the rows to the domain. A payment, legal submission, or scarce inventory reservation often requires online confirmation even when ordinary editing does not.

## Read policies

- **Remote-only:** use when stale data is unsafe and offline value is negligible.
- **Local fallback:** try remote, fall back to durable local data.
- **Local-first with refresh:** show local state immediately, then reconcile remote changes.
- **Local source of truth:** UI observes local state while synchronization updates it.

Define whether stale data is labeled, how long it remains useful, and what happens after authorization changes.

## Write policies

- **Online-only:** success means the server accepted the operation.
- **Optimistic online:** update UI before response but retain rollback or reconciliation behavior.
- **Offline queued:** commit locally and durably enqueue server work.
- **Local-only:** never synchronize; make backup and device-loss expectations clear.

Use precise user language: `saved on this device`, `waiting to sync`, `synced`, `needs attention`, or domain-appropriate alternatives.

## Product questions

- Can the same account edit on multiple devices?
- Can another actor modify the same record?
- Which actions are reversible?
- Is stale authorization dangerous?
- What is the maximum acceptable offline interval?
- Must users inspect, retry, cancel, or discard pending work?
- What happens on logout, account switch, device clock change, or app reinstall?
