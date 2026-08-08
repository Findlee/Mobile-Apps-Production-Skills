---
name: design-resilient-interactions
description: Design complete, error-tolerant interaction behavior for forms, destructive actions, asynchronous work, payments, uploads, synchronization, multi-step flows, permissions, unstable networks, and other stateful or high-consequence experiences. Use when asked to define loading, empty, success, error, offline, retry, cancel, undo, autosave, resume, validation, interruption, or recovery behavior; enumerate edge cases; create a state model; or turn a happy-path UI into an implementation-ready resilient flow. Do not use for visual polish alone, general UX critique, or backend reliability work without a user-interface consequence.
---

# Design Resilient Interactions

Design the complete behavior of an interaction, including what happens before, during, after, and when things go wrong. Keep the user informed, in control, and able to recover.

## Core rules

- Model the user's activity and consequences before enumerating screens.
- Treat errors as information about the system design, not evidence of careless users.
- Prevent likely harm, but do not block safe exploration.
- Accept reasonable human input variation and normalize it in the system when safe.
- Never fake success, progress, reversibility, or persistence.
- Preserve user work and context through errors and interruptions.
- Add friction according to consequence, not according to implementation convenience.
- Distinguish UI behavior from backend guarantees and state the required contract explicitly.
- Design inclusively across input methods, abilities, devices, and network conditions.

## Workflow

### 1. Define the activity and invariants

Record:

- user goal and success condition;
- objects being created, changed, transferred, or deleted;
- source of truth and ownership of state;
- irreversible or high-consequence points;
- privacy, safety, financial, and legal constraints;
- assumptions about network, permissions, storage, and authentication;
- invariants that must never be violated.

Do not proceed with a critical flow if an unknown ownership or confirmation rule would materially change the outcome; surface the missing decision.

### 2. Build the state model

Enumerate meaningful states and events before drawing individual error screens. Include relevant initial, editing, submitting, queued, processing, partial, succeeded, failed, cancelled, offline, stale, conflicting, expired, and resumed states.

Read [state-modeling.md](references/state-modeling.md) and produce a state-transition table for nontrivial flows.

### 3. Analyze failure modes

For each important event, distinguish:

- **slip:** the intended goal is correct but the action is wrong;
- **mistake:** the goal or plan is wrong because the model or information is wrong;
- **invalid or ambiguous input:** the system cannot safely interpret the value;
- **system failure:** the intended action cannot complete due to service, device, permission, or dependency;
- **interruption or concurrency:** time, navigation, another actor, or another device changes context.

Estimate consequence, likelihood, detectability, and recoverability. Read [error-prevention-recovery.md](references/error-prevention-recovery.md) for prevention and recovery patterns.

### 4. Design feedback over time

Specify what the user sees and can do:

- immediately after input;
- during perceptible waiting;
- during long or indeterminate work;
- on partial completion;
- on success, failure, cancellation, or timeout;
- after leaving and returning.

Read [feedback-latency.md](references/feedback-latency.md) for acknowledgement, progress, background work, duplicate prevention, and honest status communication.

### 5. Design input and critical actions

Read [forms-critical-actions.md](references/forms-critical-actions.md) when the flow includes forms, validation, permissions, confirmation, deletion, payment, publishing, sharing, or other high-consequence actions.

Prefer constraints, sensible defaults, previews, reversible execution, and clear consequences over repeated generic confirmation dialogs.

### 6. Define recovery contracts

For each failure, specify:

- what remains saved;
- what can be retried and whether retry is safe;
- what can be cancelled or undone and for how long;
- how duplicate submission is prevented;
- how the user resumes later or on another device;
- how conflicts or stale data are detected and resolved;
- what support or escalation path exists when self-recovery fails.

Make technical requirements explicit: idempotency, persistence, background execution, status polling or push, conflict versioning, transaction boundaries, and audit history when relevant.

### 7. Write state-specific copy and acceptance criteria

For every user-visible state, define:

- title or status;
- concise explanation;
- primary recovery or next action;
- secondary escape route;
- preserved context and data;
- accessible announcement or focus behavior when relevant.

Translate the model into implementation acceptance criteria and test scenarios. Include timing and failure injection cases without prescribing backend architecture beyond what the UX guarantee requires.

### 8. Review ethics and user agency

- Do not use friction, defaults, visual emphasis, or interruption to steer users against their stated interests.
- Make costs, permissions, subscriptions, destructive consequences, and data use clear before commitment.
- Make refusal, cancellation, and reversal reasonably available.
- Avoid variable rewards, urgency, or concealment that exploits attention without user benefit.

## Boundaries with related skills

- Use `audit-interface-usability` when the primary request is to find and rank problems in an existing interface.
- Use `craft-visual-ui` when the behavior is defined and the remaining task is visual hierarchy and polish.
- This skill may produce UI requirements and copy, but its primary artifact is the behavioral state and recovery model.

## Default output

Lead with the critical risks and behavioral guarantees. Then provide a state-transition table, failure-mode and recovery table, state copy, implementation contract, and acceptance tests. For a small interaction, collapse these into a concise state checklist rather than producing ceremony.
