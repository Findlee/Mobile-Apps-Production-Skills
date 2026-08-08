# Canonical Evidence Model

Skills may use domain-specific labels, but the active orchestrator should normalize material claims into this shared model.

- `FACT` - verified product/system/context information supplied or directly observable.
- `OBSERVATION` - something actually observed in behavior, data, an artifact, experiment, or research session.
- `EVIDENCE` - source-backed information that changes confidence in a claim.
- `INFERENCE` - reasoned interpretation of facts/observations/evidence.
- `ASSUMPTION` - claim currently relied on without enough support for the current decision.
- `HYPOTHESIS` - testable prediction about behavior, causality, or expected outcome.
- `CONSTRAINT` - non-negotiable or externally imposed boundary.
- `UNKNOWN` / `OPEN QUESTION` - missing information that could materially change the decision.
- `DECISION` - current choice made from evidence, risk, constraints, and trade-offs.
- `RECOMMENDATION` - proposed action, not yet necessarily approved.

Domain-specific subtypes remain useful:

- customer research: `CUSTOMER STORY`, `QUOTE`, `SELF-REPORT`, `PREDICTION`, `PATTERN`, `CONTRADICTION`;
- experiments: `TEST`, `CONFOUNDER`, `LIMITATION`;
- review: `OBSERVED` can be treated as `FACT` or `OBSERVATION` depending on whether it describes static product state or observed behavior.

## Normalization rule

A child skill must never upgrade epistemic status during handoff.

Examples:

- `SELF-REPORT` cannot become `OBSERVATION`.
- `INFERENCE` cannot become `FACT`.
- `correlation` cannot become `causal evidence`.
- `supportive experiment evidence` cannot become `proven universally`.
- `heuristic UX finding` cannot become `customer-research evidence`.
- `AI-generated scenario` cannot become `real user evidence`.

The parent may downgrade confidence when combining sources, but should upgrade confidence only when additional independent evidence justifies it.
