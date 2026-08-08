# Product Management Skills - Orchestration Contract

This file defines runtime behavior across the skill system. It is the source of truth when two skill-local routing rules appear to conflict.

## 1. One active orchestrator

Only one skill owns orchestration, prioritization, and final synthesis at a time.

- Ordinary product work: `product-manager` is the default orchestrator.
- Broad/focused/pre-release/post-launch audit intent: `product-review` is the orchestrator.
- Direct specialist request: the named specialist can run top-level without an orchestrator unless its entry conditions are materially unmet.

When `product-manager` routes an audit to `product-review`, ownership transfers to `product-review`. The manager does not continue a parallel workflow.

The wider library also contains domain review coordinators:

- `review-product-experience` for UX/UI and experience quality;
- `review-behavioral-design` for behavioral mechanisms, ethics, and intervention evidence;
- `review-mobile-application` for Flutter/React Native engineering health and release readiness.

Choose the orchestrator from the user's primary decision. A full product/business audit belongs to `product-review`; a directly requested UX, behavioral, or mobile-engineering audit belongs to the matching domain reviewer.

When an active orchestrator requests a bounded pass from another review coordinator, that child operates as a **bounded suite pass**, not as a second active orchestrator. It returns scoped findings and handoff recommendations to the parent and does not own global priority or the final user-facing backlog.

## 2. No recursive re-entry

An active orchestrator must never be called from one of its child specialist calls.

Examples:

- `product-review -> product-metrics -> product-review` is forbidden.
- `product-manager -> product-discovery -> product-manager` is forbidden.
- `product-review -> product-discovery -> product-experiment -> product-review` is forbidden.

A specialist may recommend another skill, but the recommendation returns to the active orchestrator. The orchestrator decides whether to make another bounded call.

## 3. Bounded specialist calls

A parent passes only the question that specialist expertise is needed to answer.

Recommended call contract:

```text
ACTIVE ORCHESTRATOR:
product-review

BOUNDED QUESTION:
Is the D7 retention definition meaningful for this product and is the current instrumentation sufficient to measure it?

SCOPE:
New-user retention only. Do not audit pricing or strategy.

KNOWN PRODUCT CONTEXT:
...

EVIDENCE AVAILABLE:
...

DECISIONS ALREADY MADE:
...

CONSTRAINTS:
...

RETURN:
- findings
- supporting evidence
- confidence / limitations
- recommended action
- handoff recommendations, if any
```

A specialist should not rebuild the entire product model or repeat questions already answered in this context.

## 4. Specialist response contract

When running under a parent, return:

```text
SPECIALIST FINDINGS
1. ...

EVIDENCE / BASIS
- ...

CONFIDENCE / LIMITATIONS
- ...

RECOMMENDED ACTION
- ...

HANDOFF RECOMMENDATIONS
- ... or NONE
```

The specialist does not own global priority or the final user-facing backlog.

## 5. Runtime loading policy

Do not preload every skill.

Default loading pattern:

```text
ordinary task
-> product-manager
-> one relevant specialist
-> optional second specialist only if materially needed

full audit
-> product-review
-> relevant lens/reference
-> bounded specialist calls one at a time
-> synthesize
```

Reasons:

- lower context cost;
- fewer contradictory instructions;
- less duplicate analysis;
- clearer ownership;
- easier evidence provenance.

Reference layers and lenses should also be loaded lazily only when relevant.

For cross-suite review, load the suite coordinator rather than all of its companion skills. For example, `product-review` may request one bounded experience-quality pass from `review-product-experience`; the latter selects only the UX specialists needed for that bounded question.

## 5.1 Evidence normalization

Use `EVIDENCE-MODEL.md` when merging specialist outputs. Domain-specific labels are allowed, but epistemic status must not be upgraded during handoff without additional evidence.

## 6. Shared working context

The active orchestrator maintains one compact working state.

```text
PRODUCT FRAME
- target user
- problem / opportunity
- value proposition
- product/business outcomes

CURRENT PRODUCT MODEL
- core journey
- key states/rules
- current scope

EVIDENCE MAP
- source
- what it supports
- quality/limitations

DECISIONS
- made
- provisional
- blocked

FINDING REGISTRY
- finding
- evidence
- confidence
- owner
- dependency

OPEN QUESTIONS
- ...
```

Do not create parallel competing versions unless a contradiction itself is being investigated.

## 7. Ownership boundaries

### `product-manager`
Owns routing and product-state triage. It should not perform a full specialist workflow when a dedicated skill is available and material depth is needed.

### `product-review`
Owns audit diagnosis, synthesis, deduplication, causal chains, priority, and final improvement backlog. Read-only by default.

### `product-strategy`
Owns target/customer-market focus, value proposition, strategic outcomes, trade-offs, principles, initiatives, non-goals.

### `product-discovery`
Owns opportunity/solution exploration and the decision about which direction deserves more commitment.

### `customer-research`
Owns qualitative customer-evidence design, collection, moderation, traceability, and synthesis.

### `product-experiment`
Owns assumption-based learning design and choice of the smallest credible test.

### `mvp-scope`
Owns release boundary: now/next/later/out-of-scope and the smallest coherent slice.

### `product-spec`
Owns implementation-ready product behavior for the approved scope: journeys, states, rules, failures, acceptance, product semantics.

### `product-metrics`
Owns metric definitions, instrumentation semantics, activation/retention/funnels, scorecards, controlled-experiment measurement/statistics, and post-launch quantitative interpretation.

### `design-ai-product-system`
Owns the integrated AI capability, human-autonomy contract, architecture, evaluation, data/feedback, guardrails, observability, incidents, cost/latency, versioning, and staged-release design. It does not own the parent product's global priority.

### `operate-product-team`
Owns evidence-based assessment and design of team charter, competence/decision rights, goal/idea/step/task cadence, stakeholder collaboration, commitments, and bounded operating-model pilots. It does not authorize organization or personnel changes.

### Existing library specialists and suite reviewers

- `review-product-experience` owns a bounded UX/UI experience-quality review; it does not own product strategy, portfolio, business viability, or the final cross-product backlog when called by `product-review`.
- `review-behavioral-design` owns a bounded behavioral-design review; it does not replace product discovery or product-level prioritization.
- `review-mobile-application` owns a bounded mobile-engineering review; it does not decide product strategy or release scope.
- `define-product-metrics-experiments` is the narrow existing workflow for controlled-experiment metric/design work. `product-metrics` owns the broader measurement system and consumes its output when invoked as parent.
- `map-product-scope` supplies story maps, journey slices, and backlog structure. `mvp-scope` owns the final release boundary.
- `design-behavior-experiments` owns behavioral causal-test depth. `product-experiment` owns which product assumption to test and whether a behavioral experiment is the smallest credible method.
- `plan-feature-change` owns the engineering delivery plan after product behavior and scope are sufficiently resolved by `product-spec` and `mvp-scope`.
- `design-human-ai-interactions` owns interaction-level AI transparency, uncertainty, control, and recovery. `design-ai-product-system` owns the broader AI product/evaluation/operations system.

## 8. Key overlap resolutions

### Discovery vs research

- Discovery decides what product uncertainty/opportunity needs evidence.
- Research decides how to obtain and synthesize customer evidence.

### Discovery vs experiment

- Discovery surfaces and prioritizes assumptions.
- Experiment designs the smallest credible test for a selected assumption.

### Experiment vs metrics

For randomized controlled experiments:

- Experiment owns product hypothesis, treatment, product eligibility/context, learning decision.
- Metrics owns exact scorecard, guardrails, randomization/analysis implications, MDE/power, SRM/A-A/trust checks, stopping/statistics, readout.

### Scope vs spec

- Scope owns what is included.
- Spec owns how included behavior works.
- Spec may flag a scope contradiction but must not silently reopen scope.

### Strategy vs metrics

- Strategy owns intended outcomes.
- Metrics operationalizes them.
- A convenient proxy must not silently replace a strategic outcome.

### Review vs every specialist

- Specialist identifies domain findings.
- Review merges duplicates, builds causal chains, sets priority, and returns the single action plan.

## 9. Routing precedence

When more than one skill could apply, use the highest unresolved dependency:

```text
strategy/direction unclear
-> product-strategy

customer problem/context unclear
-> customer-research and/or product-discovery

opportunity/solution choice unclear
-> product-discovery

specific risky assumption blocks commitment
-> product-experiment

selected direction but release boundary unclear
-> mvp-scope

approved scope but behavior unclear
-> product-spec

measurement/retention/experiment readout unclear
-> product-metrics

broad diagnosis across several dimensions
-> product-review
```

Do not move downstream while a material upstream uncertainty makes downstream detail likely to be wasted.

## 10. Stop rule

Stop orchestration when the current user decision can be made responsibly.

Do not call another skill only to increase documentation completeness.

A handoff is warranted only if it can materially change:

- whether to act;
- what to act on;
- how much to invest;
- what to build now;
- how the product must behave;
- how success will be measured;
- whether a conclusion can be trusted.

## 11. Implementation boundary

Product review and analysis are read-only unless the user also requests implementation.

Before coding, material product behavior should be sufficiently resolved through scope/specification. Implementation agents retain technical freedom but must surface unresolved product semantics rather than inventing them.
