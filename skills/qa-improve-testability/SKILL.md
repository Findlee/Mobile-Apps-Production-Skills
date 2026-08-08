---
name: qa-improve-testability
description: Review or change production code, architecture, interfaces, and operational instrumentation to improve controllability, observability, isolation, and diagnostic power. Use when tests require excessive mocks, slow end-to-end setup, arbitrary waits, global state, hidden clocks or randomness, real networks or filesystems, unsafe data preparation, inaccessible failure states, weak logs or metrics, or when asynchronous and time-dependent behavior is hard to verify. Produces prioritized design findings and safe implementation changes without adding insecure production backdoors.
---

# Improve Testability

Make important behavior easy to place in a known state, stimulate, and observe with trustworthy evidence. Improve the system design rather than compensating indefinitely with fragile test code.

## Operating rules

- Match the user's language and architectural context.
- Inspect production code, tests, failure evidence, interfaces, and runtime signals before recommending changes.
- Treat testability as a product and operational quality: changes must also preserve security, integrity, performance, and maintainability.
- Prefer the smallest seam or design improvement that enables valuable tests and diagnostics.
- Do not introduce test-only branches into domain behavior when an explicit dependency boundary or public contract is safer.
- Do not expose privileged reset, bypass, impersonation, or data-manipulation capabilities without production-grade authorization, auditing, and environment controls.
- Separate verified barriers from inferred ones. Explain trade-offs and residual limitations.

## Workflow

### 1. Frame the testability mission

Identify the critical behavior, risks, desired test scopes, current pain, failure cost, and operational diagnosis needs. Gather examples of slow, flaky, overly broad, or impossible tests. Clarify whether the goal is a review, refactoring proposal, or implementation.

### 2. Map control and observation

For each important behavior, map:

- state and data required before the action;
- trigger or stimulus;
- dependencies and nondeterministic inputs;
- result, side effects, events, and persisted changes;
- available observation channels and stable correlation;
- cleanup, rollback, or reset.

Read `references/testability-heuristics.md` for detailed prompts. Identify where the test cannot set state safely, trigger a condition deterministically, or distinguish causes from symptoms.

### 3. Locate design barriers

Look for hidden clocks, randomness, generated identities, environment access, network calls, filesystem operations, process state, globals, static singletons, shared databases, queues, threads, caches, and external SDKs. Check for tightly coupled domain and infrastructure logic, overly broad interfaces, implicit contracts, inaccessible error paths, nondeterministic scheduling, and missing diagnostics.

Do not label every dependency as a problem. Prioritize barriers that force broader scopes, slow feedback, weak oracles, flaky execution, unsafe data, or expensive incident diagnosis.

### 4. Design safer seams

Choose context-appropriate changes:

- separate deterministic domain logic from framework and device code;
- introduce narrow ports, adapters, wrappers, or dependency injection;
- make clock, randomness, identity, scheduling, and configuration explicit;
- define stable contracts and observable state transitions;
- add deterministic builders, seed paths, reset/cleanup mechanisms, or test harnesses;
- expose meaningful events, error categories, correlation identifiers, logs, metrics, and traces;
- use a Humble Object around difficult UI, process, hardware, or concurrency boundaries;
- add failure simulation at controlled dependency boundaries.

Prefer designs useful for production resilience and diagnosis as well as testing. Avoid abstractions whose only effect is making mocks easier.

### 5. Address asynchronous, time, and failure behavior

Provide completion signals instead of sleeps. Make deadlines, retry policies, backoff, queue state, idempotency, and cancellation observable. Allow safe substitution or simulation of dependency outcomes. Preserve realistic tests for scheduling, integration, and recovery assumptions that a deterministic seam cannot prove.

### 6. Evaluate safety and architectural cost

For every proposed hook or interface, assess access control, auditability, data privacy, production availability, misuse, compatibility, and maintenance ownership. Prefer existing authenticated administrative capabilities when they satisfy the need. If a capability must be environment-restricted, define how configuration is enforced and verified.

### 7. Implement and demonstrate evidence

When implementation is authorized, make a narrow change and add or update a representative test that was previously difficult, slow, or unreliable. Verify that production behavior remains unchanged and that failure diagnostics improve. Avoid broad refactoring unrelated to the identified barrier.

When only reviewing, show a before/after testing path and name the evidence the proposed change unlocks.

### 8. Deliver findings

Use `references/output-template.md`. Prioritize findings by risk reduction, feedback improvement, diagnostic value, implementation cost, and architectural side effects. Include verified evidence, concrete change, enabled tests, safety considerations, and residual limitations.

Use `$qa-build-test-automation` after the necessary seams exist to design the suite and CI model. Use `$qa-design-tests` to derive the behavior-level coverage that the seams must support.
