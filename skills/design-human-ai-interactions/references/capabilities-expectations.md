# Capability and expectation contract

## Task framing

| Item | Decision |
|---|---|
| User goal and context | |
| AI role | suggest / draft / rank / decide / act |
| Human role and responsibility | |
| Inputs and data provenance | |
| Intended output/use | |
| Affected people, including non-users | |
| Consequence and reversibility | |
| Known failure modes | |
| Unsupported/prohibited use | |
| Escalation and accountable owner | |

## AI appropriateness

Use AI when probabilistic assistance creates meaningful value and imperfection can be detected, corrected, bounded, or tolerated. Prefer deterministic rules or ordinary software when exact repeatability, complete coverage, or formal compliance is required.

## Expectation setting

Before or at first use, communicate the capability in task language, important limitations, user responsibility, relevant data use, and how to recover. Reveal detail progressively near the decision where it matters.

Avoid anthropomorphic claims, “magic,” “always,” “understands,” or labels such as “smart” that conceal behavior. Do not imply live knowledge, source access, privacy, learning, or human review unless true.

## Changes over time

Version the capability contract. For material model, tool, data, autonomy, or retention changes, determine whether users need notice, renewed choice, retraining, migrated settings, or new monitoring. A probabilistic service can drift even when the UI does not change.

## Unsupported state

Detect inputs, domains, languages, modalities, or requests outside validated capability where possible. Say what is unsupported, preserve the work, and offer a constrained retry, manual path, or accountable escalation.
