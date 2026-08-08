# Test design heuristics

Select techniques from the behavior and risk. Do not use technique names as decoration; show how each model changes the selected tests.

## Inputs and domains

### Equivalence partitions

Partition values only when members are expected to behave alike. Include valid and invalid classes. Revisit a partition when format, source, permission, state, or representation changes expected behavior.

### Boundaries

Test the exact boundary and values immediately on both sides. Consider numeric size, length, count, time, capacity, precision, rate, and lifecycle boundaries. For discrete sets, test first, last, absent, and unknown members.

### Special representations

Consider missing versus null versus empty, zero versus negative, whitespace, case, normalization, Unicode, large values, duplicates, ordering, NaN/infinity if the type permits, malformed encodings, and locale-dependent formats.

## Rules and interactions

Use a decision table when several conditions determine different actions. Remove impossible combinations, but document why they are impossible. Preserve combinations tied to severe or historically common failures even if a pairwise set would omit them.

Use pairwise or higher-strength combinatorial selection when many factors are plausibly independent. It reduces combinations; it does not replace explicit risk cases, sequences, or domain rules.

## State and sequence

Model named states, valid transitions, invalid transitions, entry/exit actions, persistence, and recovery. Test repeated operations, reordering, skipping steps, cancellation, retry, interruption, concurrent actors, stale state, and restart.

## Properties and metamorphic relations

Use properties when many examples share an invariant. Examples:

- round-trip encode/decode preserves meaning;
- sorting is ordered and preserves the multiset;
- retrying an idempotent operation does not duplicate its effect;
- increasing a limit cannot reduce previously valid results;
- a transformation followed by its inverse restores the original within defined tolerance.

Define generators, shrink strategy, invalid domains, and a trusted oracle. Do not create properties that merely restate the implementation.

## Oracles

An oracle may be an explicit requirement, domain calculation, invariant, independent implementation, historical behavior, contract, comparable system, user expectation, standard, or observable absence of harmful side effects. Record oracle uncertainty.

## Structural coverage

After the behavioral pass, inspect branches, compound conditions, exception handlers, loops, conversions, integrations, and concurrency paths. Use branch and condition coverage to locate omissions. Reserve MC/DC for complex decisions where risk or regulation justifies it.

Coverage percentage cannot prove correctness. Mutation testing can reveal checks that execute code without detecting changes. Investigate equivalent and irrelevant mutations before adding tests.

## Test selection

Favor a test when it distinguishes behavior, covers a severe risk, exercises a new or fragile path, provides a strong failure signal, or protects an important contract. Remove it when another test supplies the same evidence more cheaply and no independent risk remains.
