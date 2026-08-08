# Defect investigation heuristics

Load this reference when reproduction is unclear, several layers may be at fault, or the failure is intermittent.

## Preserve first evidence

Before rerun or cleanup, capture:

- exact error and full relevant output, not only the last line;
- timestamps with time zone and clock source;
- build, commit, package, configuration, feature flags, and schema version;
- device/host/container, OS/runtime, resources, region, and network;
- account, role, tenant, record IDs, request/correlation/trace IDs, job and worker IDs;
- input, prior state, sequence, concurrency, random seed, and test order;
- logs, traces, metrics, crash dumps, screenshots/video, network evidence, and persisted state;
- recent deploys, data migrations, dependency changes, and environment incidents.

Redact secrets and personal data. Preserve artifact hashes or immutable links when chain of evidence matters.

## Classify the failure surface

- **Product:** behavior violates a credible oracle in the system under test.
- **Test:** setup, assertion, synchronization, cleanup, double, or runner is incorrect.
- **Environment:** host, device, network, configuration, capacity, or shared service invalidates the run.
- **Data:** corrupt, stale, migrated, duplicate, or unexpected history causes the result.
- **Dependency:** upstream/downstream behavior, compatibility, or availability differs.
- **Oracle/observability:** expected result is ambiguous or available evidence cannot distinguish outcomes.
- **Unknown:** evidence does not yet separate categories.

Classification can change. Record the evidence that justifies it.

## Minimize reproduction

Reduce one dimension at a time:

- actions and sequence;
- input size and data history;
- user, permission, tenant, and ownership;
- process, worker, thread, concurrency, and order;
- clock, time zone, deadline, seed, and retry;
- network, dependency response, cache, and queue;
- device, OS/runtime, resource pressure, and locale;
- build, commit, configuration, flag, schema, and deployment topology.

Use binary search across commits, configuration, data, or sequence only when the comparison is reliable. A smaller reproducer is valuable when it preserves the same mechanism, not merely the same final message.

## Hypothesis discipline

Maintain a table with mechanism, supporting evidence, contradictory evidence, discriminating experiment, result, and confidence. Prefer experiments whose possible results separate at least two hypotheses.

Do not infer cause solely because:

- a log appears near the failure;
- a component changed recently;
- rerunning passed;
- clearing data removed the symptom;
- adding a delay changed timing;
- a code path looks suspicious;
- two metrics correlate.

These are leads. Seek a causal mechanism and counter-evidence.

## Intermittent failures

- Estimate frequency over a stated sample instead of saying “random.”
- Compare passing and failing runs using seed, order, worker, host, timing, load, data, and dependency signals.
- Preserve the first failure before retries change state.
- Use bounded repetition to gather evidence; avoid unlimited loops.
- Check races, shared state, leaked resources, unawaited work, eventual consistency, time boundaries, rate limits, retries, and environment contention.
- If reproduction remains weak, improve capture and monitoring rather than closing the issue as unproven.

## Impact and advocacy

Describe the strongest credible consequence without exaggeration. Include frequency, affected population, data/security implications, recoverability, workaround, and visibility to users. Separate:

- **severity:** technical or user consequence;
- **priority:** business urgency considering exposure, timing, alternatives, cost, and dependencies.

## Fix confirmation

Use the same triggering conditions and oracle. Confirm the fix build/version, then check adjacent boundaries, alternate states, repeated execution, data history, and related integrations. A passing test on a different environment or unreproduced baseline is weaker evidence; state that limitation.
