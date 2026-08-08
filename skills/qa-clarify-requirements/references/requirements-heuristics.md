# Requirements clarification heuristics

Load this reference when ambiguity is substantial or several models could apply. Select relevant prompts; do not ask every question.

## Evidence discipline

- **Conference:** Which stakeholder can decide the rule?
- **Inference:** What conclusion are we drawing that the source does not state?
- **Reference:** Which document, design, code path, policy, example, or observed behavior supports it?
- Record conflicts without averaging them into a new rule.
- Record the date or version for requirements that may change.

## Scope and value

- Who receives value, who operates the feature, and who may be harmed?
- What event starts the behavior? What observable result means it succeeded?
- What is explicitly out of scope?
- Which existing behavior must remain unchanged?
- Is the proposed solution being mistaken for the underlying need?

## Behavioral models

### Actors and permissions

List anonymous, authenticated, privileged, suspended, external, automated, and support actors when relevant. Distinguish ability to see, create, change, approve, delete, export, and recover data. Include ownership and tenant boundaries.

### Data and identity

Define required and optional fields, valid domains, canonical form, uniqueness, precision, units, encoding, ordering, retention, deletion, and source of truth. Distinguish missing, empty, null, zero, false, and unknown.

### State and lifecycle

Name states and legal transitions. Ask about repeated actions, invalid transitions, cancellation, expiry, retry, reversal, migration, restoration, and terminal states. Describe what persists across logout, reinstall, restart, and version changes when relevant.

### Time and concurrency

Clarify time zone, clock source, deadlines, grace periods, daylight-saving changes, ordering, simultaneous edits, optimistic locking, idempotency, and delayed work.

### Dependencies and failure

Identify upstream and downstream systems. Define timeout, partial success, retry, duplicate delivery, fallback, user messaging, reconciliation, and recovery ownership.

## Example quality

A strong example is precise, realistic, understandable to domain experts, and able to distinguish competing interpretations. Include actual values and expected outcomes. Avoid examples that merely repeat the prose or overfit the present UI.

Use Given/When/Then when it reveals preconditions and outcomes. Keep incidental interaction details out of acceptance criteria unless they carry business or accessibility meaning.

## Quality lenses

Consider only relevant lenses:

- functional suitability and correctness;
- performance efficiency and capacity;
- compatibility and interoperability;
- interaction capability, accessibility, and learnability;
- reliability, availability, fault tolerance, and recoverability;
- security, privacy, accountability, and non-repudiation;
- maintainability, testability, and observability;
- portability, installability, and adaptability;
- safety and avoidance of unacceptable harm.

The ISO/IEC 25010 quality model is a useful vocabulary, not a mandatory checklist: https://www.iso.org/standard/78176.html

## Prioritizing questions

Ask first when the answer changes money, permissions, privacy, irreversible data, legal or store compliance, core workflow, architecture, release scope, or acceptance. Defer cosmetic and easily reversible details unless they block progress.
