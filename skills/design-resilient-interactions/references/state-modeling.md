# State modeling

Use this reference to make hidden behavior explicit before implementation.

## Start from objects and events

Identify:

- the user-visible object or process;
- the system of record;
- actors that can change it;
- events initiated by the user, system, time, network, or another actor;
- states that change what the user can perceive or do.

Do not create a separate UI state for every internal implementation detail. Model distinctions only when they affect user meaning, available actions, risk, or feedback.

## Common state families

Choose only relevant states:

- not started, first use, or missing prerequisites;
- viewing clean data;
- editing with unsaved changes;
- locally saved, remotely unsynchronized, or queued;
- submitting, processing, or waiting on another actor;
- partially complete;
- complete or confirmed;
- empty by design versus empty due to filters or failure;
- validation blocked;
- recoverable failure;
- terminal failure;
- offline or degraded;
- permission denied, restricted, or unavailable capability;
- cancelled, expired, revoked, or rolled back;
- stale, conflicting, or externally modified;
- restored or resumed.

## Transition table

Use columns like:

```text
Current state | Event | Guard or prerequisite | Immediate feedback | Next state | Available recovery | Persisted data
```

For critical flows, also record actor, source of truth, idempotency expectation, timeout, and audit event.

## State questions

For every state, answer:

1. What does the user believe is happening?
2. What is actually guaranteed?
3. What actions are available now?
4. What information is needed to choose safely?
5. What happens if the user leaves, repeats, waits, or loses connectivity?
6. How is success or failure detected?
7. How can the user return to a known state?

## Partial and distributed state

- Distinguish local acceptance from remote completion.
- Do not label queued or pending work as complete.
- Show which items succeeded and failed in a batch; do not collapse partial failure into a generic error.
- Preserve successful work when retrying failed parts is safe.
- Detect stale views before overwriting newer data.
- Define how multiple devices, tabs, or collaborators reconcile changes.

## State visibility

- Make mode and status visible when they change the meaning of actions.
- Preserve spatial and task context through transitions.
- Use a coherent conceptual model: users should not have to understand internal services to know what happened.
- Keep feedback proportional; routine stable states need less prominence than blocking or dangerous states.
