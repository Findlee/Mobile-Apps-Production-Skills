# Test strategy

## Behavior and risk

| Behavior or invariant | Observer | Regression impact | Likelihood | Evidence needed |
|---|---|---|---|---|

## Test allocation

| Scenario | Level | Real dependencies | Doubles | Why this level |
|---|---|---|---|---|

## Named scenarios

### Normal behavior

-

### Boundaries and invalid input

-

### Failure, retry, and recovery

-

### Ordering, concurrency, and idempotency

-

## Dependency strategy

- In-process collaborators:
- Managed dependencies:
- Unmanaged dependencies:
- Time/network nondeterminism:

## Test data and isolation

- Data construction:
- Database/schema lifecycle:
- Parallel execution:
- Cleanup:

## Suite operation

- Fast feedback target:
- Broader pipeline checks:
- Flake policy:
- Diagnostics and ownership:

## Intentionally not tested

| Item | Reason | Alternative evidence |
|---|---|---|

## Health review

- Tests to remove or rewrite:
- Coverage gaps tied to risk:
- Maintenance risks:
