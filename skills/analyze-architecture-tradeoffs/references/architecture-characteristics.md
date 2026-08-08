# Architecture Characteristics

## Identify structural significance

A characteristic is architecturally significant when it influences boundaries, communication, data placement, deployment, or operational controls. Ordinary functional behavior belongs in the domain model unless it shapes structure.

## Common families

- **Change:** modifiability, extensibility, replaceability, configurability.
- **Delivery:** deployability, testability, recoverability, operability.
- **Runtime:** performance, scalability, elasticity, availability, reliability.
- **Data:** integrity, consistency, durability, privacy, auditability.
- **Protection:** security, safety, abuse resistance, compliance.
- **Experience:** responsiveness, accessibility, offline continuity, graceful degradation.
- **Organization:** team autonomy, ownership clarity, supportability.

Do not select from the catalog mechanically. Trace each candidate to a stakeholder concern or failure mode.

## Write a measurable scenario

Capture:

- **Source:** who or what creates the stimulus.
- **Stimulus:** load, failure, attack, change request, or user action.
- **Environment:** normal, peak, degraded, migration, or recovery conditions.
- **Artifact:** affected component, workflow, or data.
- **Response:** required behavior.
- **Measure:** latency, error budget, recovery time, change effort, data-loss bound, or another observable threshold.

Example: "During intermittent connectivity, when a user repeats a saved action after uncertain completion, the system prevents duplicate effects and reconciles state without data loss once connectivity returns."

## Prioritize

Rank by business impact, likelihood, and structural influence. Too many "top priorities" conceal trade-offs. Record desirable but non-driving characteristics separately.

## Distinguish constraint from characteristic

"Must use provider X" is a constraint. "Must restore service within five minutes" is a quality scenario. Challenge constraints when their rationale is unknown, but do not silently ignore them.

Conceptual lineage: modern architecture characteristics and scenario-based analysis.
