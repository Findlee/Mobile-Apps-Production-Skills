# Testability heuristics

Load this reference when reviewing barriers or choosing design changes. Testability has two central questions: can important conditions be controlled, and can meaningful outcomes be observed?

## Controllability

Check whether a test or operator can safely and deterministically:

- create valid, invalid, historical, and boundary data;
- select identity, role, tenant, permissions, and ownership;
- set clock, time zone, deadline, randomness, and generated identifiers;
- trigger retries, timeouts, cancellation, duplicates, ordering, and concurrency;
- simulate dependency success, failure, slowness, malformed output, and recovery;
- start from relevant lifecycle, cache, queue, migration, and configuration states;
- isolate execution, reset state, and clean up without manual intervention.

A capability is not useful if invoking it corrupts shared environments or bypasses the same invariant the test should verify.

## Observability

Check whether evidence can distinguish success, rejection, partial failure, retry, and recovery through:

- returned values, errors, UI state, and stable machine-readable status;
- persisted state and side effects;
- domain events, queue state, and external calls;
- structured logs with stable correlation;
- metrics, traces, audit records, and health signals;
- deterministic completion or progress indicators.

Avoid diagnostics that expose secrets or personal data. Logging more is not automatically better; log decision-relevant state with ownership and retention.

## Common barriers

- domain rules embedded in UI, framework callbacks, database code, or network adapters;
- global mutable state, singletons, static access, hidden environment reads;
- direct wall-clock, random, filesystem, process, device, or network access;
- large interfaces and constructors with unrelated dependencies;
- shared databases and fixtures with order dependence;
- background work with sleeps instead of completion signals;
- implicit retries, silent fallback, swallowed errors, and ambiguous results;
- unstable selectors, generated identities with no correlation, and opaque third-party SDKs;
- hooks that exist only in debug builds and therefore bypass release behavior;
- missing logs, metrics, traces, state inspection, or failure artifacts.

## Design responses

### Separate policy from mechanism

Move deterministic decisions and domain rules behind small interfaces away from framework, UI, hardware, process, and I/O mechanisms. A Humble Object can keep the difficult boundary thin while the meaningful behavior remains directly testable.

### Make nondeterminism explicit

Inject or wrap clocks, randomness, identifier generation, schedulers, and external services at owned boundaries. Prefer narrow domain-oriented interfaces over mirroring a large vendor API.

### Define contracts and seams

Use ports/adapters, dependency injection, explicit messages, or stable public interfaces where independent behavior must be substituted or observed. Avoid adding an abstraction without a concrete risk, test, or replacement need.

### Improve state management

Provide validated builders, idempotent setup APIs, disposable namespaces, seed data, migrations, reset/cleanup, or ephemeral environments. Preserve invariants and audit privileged operations.

### Improve completion and failure signals

Expose job IDs, state transitions, domain events, bounded polling endpoints, retry metadata, deadlines, and error categories. Make partial success and compensation visible.

### Improve operational diagnostics

Add stable correlation, structured events, metrics around important outcomes, traces across dependencies, and actionable health/admin views. Design them for incident investigation as well as test assertions.

## Safety review for hooks

For each test or administrative capability, evaluate authentication, authorization, tenant isolation, audit, rate limits, environment restriction, secrets, privacy, data integrity, denial-of-service potential, compatibility, and ownership. Prefer production-grade administrative interfaces when the operational need is real.

Never add a hidden bypass that can alter money, permissions, identity, security decisions, or irreversible data without the same or stronger controls as production behavior.

## Prove the improvement

Demonstrate a representative test or diagnostic task before and after the change. Compare scope, setup complexity, determinism, runtime, failure signal, and safety. Keep a selected broader or real-integration check for assumptions the new seam cannot validate.
