---
name: product-spec
description: Convert a selected product direction and approved release scope into an implementation-ready behavioral specification without silently inventing product decisions or over-prescribing technical implementation. Use for PRDs, feature specs, delta specs, user-flow definitions, business rules, state models, acceptance criteria, analytics contracts, QA handoff, and Claude Code/Codex implementation briefs. Route back to discovery, experimentation, or MVP scoping when material uncertainty remains unresolved.
---

# Product Spec

## Mission

Create the clearest possible shared representation of what the product must do, for whom, under which rules and constraints, and how the team will know it works.

The specification is a behavioral contract, not a substitute for product discovery and not a technical architecture document.

The core transformation is:

`Validated/selected direction -> Approved scope -> Behavioral model -> States/rules -> Quality/measurement -> Acceptance -> Implementation handoff`

Optimize for:

- one coherent source of truth;
- observable product behavior;
- explicit scope and non-goals;
- shared understanding across product, design, engineering, QA, analytics, support, operations, and implementation agents;
- complete end-to-end user journeys rather than disconnected requirements;
- precise business rules and state transitions;
- early exposure of unresolved product decisions;
- testability;
- enough design fidelity to remove material UX ambiguity;
- enough implementation freedom for engineering to choose the best technical solution;
- explicit analytics and post-launch validation for material changes;
- minimal documentation necessary to make the product unambiguous.

Do not optimize for:

- document length;
- ticket count;
- exhaustively describing implementation internals;
- pretending an unvalidated solution is certain because it has a PRD;
- replacing conversations with prose;
- writing every conceivable edge case;
- duplicating the same rule in multiple places;
- forcing visual details before they are product decisions;
- allowing a coding agent to fill product gaps silently.

## A spec is not proof

The existence of a detailed document does not increase the truth of the underlying product assumptions.

Keep these categories distinct:

- `FACT` - directly established current-state information;
- `EVIDENCE` - observations/data supporting a conclusion;
- `ASSUMPTION` - something believed but not established;
- `HYPOTHESIS` - a testable expectation;
- `DECISION` - a choice the product team has made;
- `CONSTRAINT` - a boundary imposed by platform, law, business, technology, contract, timing, or policy;
- `OPEN QUESTION` - a decision or unknown not yet resolved.

Never convert an assumption into a requirement merely because implementation needs an answer.

If a material unknown blocks safe or coherent implementation, expose it.

## Orchestration safety

This skill can run either as a top-level workflow or as a bounded specialist inside an active orchestrator.

When `product-manager` or `product-review` invokes this skill as a specialist:

- answer only the bounded question and scope passed by the parent;
- reuse the parent's evidence map, product model, decisions, and constraints instead of rebuilding them from scratch;
- do not re-enter or invoke the active parent orchestrator;
- do not broaden the review or restart strategy/discovery unless the bounded question cannot be answered without it;
- return unresolved dependencies as `HANDOFF RECOMMENDATIONS` to the parent rather than recursively chaining skills;
- do not ask the user to repeat information already present in the shared context;
- distinguish new findings from facts already established by the parent;
- stop when the bounded uncertainty is resolved enough for the parent's next decision.

Only one orchestrator owns final prioritization and user-facing synthesis at a time.

## First determine the specification mode

Use the narrowest mode that matches the work.

### Mode A - New product / V1 specification

Use when defining a coherent first customer-facing release after strategy/discovery/scope work.

The spec should preserve:

- target user;
- intended outcome;
- complete core value path;
- V1 boundaries;
- critical quality/trust bar;
- measurement.

### Mode B - Feature / capability specification

Use for a material new capability inside an existing product.

Start from the current product context and specify the smallest complete change.

### Mode C - Delta / behavior-change specification

Use when modifying an existing flow or rule.

Prefer a delta spec over rewriting the entire product.

Explicitly state:

- current behavior;
- target behavior;
- unchanged behavior that is important for compatibility;
- migration/transition implications;
- rollout implications.

### Mode D - Multi-actor / workflow specification

Use when value depends on multiple roles, organizations, systems, or marketplace sides.

Include:

- actor definitions;
- actor-specific permissions;
- handoffs;
- shared objects/states;
- ownership;
- notifications where necessary;
- failure/recovery across actor boundaries.

### Mode E - Mandated / compliance specification

Use when a platform, legal, security, contractual, accessibility, or policy requirement determines that the capability must exist.

Do not waste time rediscovering whether the requirement should exist.

Clarify instead:

- exact obligation;
- affected users/data/actions;
- minimum compliant behavior;
- product experience;
- evidence/source of the constraint;
- exceptions;
- verification.

### Mode F - Experiment / limited-rollout specification

Use when the implementation itself is a learning mechanism.

The spec must distinguish:

- experiment behavior;
- intentionally fake/manual/disposable behavior;
- eligible population;
- exposure/assignment;
- instrumentation;
- success/guardrail criteria;
- rollback/cleanup;
- what must not become permanent architecture by accident.

If experiment design is the core problem, route to `product-experiment` first.

### Mode G - AI/ML capability specification

Use when probabilistic or model-generated behavior materially affects the experience.

In addition to standard product behavior, specify product-level expectations for:

- user input/context;
- expected output/job;
- unacceptable output classes;
- user-visible uncertainty where relevant;
- failure/fallback behavior;
- retry/regeneration behavior;
- latency expectation when known;
- cost/usage constraints when product-relevant;
- permissions/data usage;
- human escalation/review if relevant;
- model/provider change behavior when it can affect user promises;
- evaluation/measurement hooks.

Do not turn the product spec into a prompt-engineering or model-architecture document unless explicitly requested.

## Entry conditions

Before producing an implementation-ready specification, establish enough of the following:

1. Target user / actor.
2. Problem or opportunity.
3. Desired product outcome or mandated result.
4. Selected solution direction.
5. Approved V1/release scope.
6. Explicit out-of-scope items.
7. Important evidence and unresolved assumptions.
8. Critical business rules.
9. Known platform/legal/security/privacy/accessibility constraints.
10. Enough UX definition to understand the intended interaction.
11. Feasibility input for material technical risks.
12. Success/measurement intent.

Do not demand every item for trivial changes.

Use proportional rigor.

### Route backward when necessary

If the user asks for a detailed spec but the major uncertainty is:

- `Who/what problem?` -> `product-strategy`, `customer-research`, or `product-discovery`.
- `Which solution?` -> `product-discovery`.
- `Will this work / risky assumption?` -> `product-experiment`.
- `What belongs in V1?` -> `mvp-scope`.
- `What metric should define success?` -> `product-metrics` when that skill is available/appropriate.

Do not hide these gaps inside requirements.

## Inspect existing product context before writing a delta spec

When repository, current product, screenshots, design files, prior specs, event schemas, support documentation, or existing code are available, inspect the relevant existing behavior before defining a change.

Look for:

- existing user flow;
- terminology and copy conventions;
- domain/business rules;
- permission/access model;
- lifecycle states;
- analytics/event conventions;
- feature flags/rollout conventions;
- subscription/entitlement behavior;
- error/recovery patterns;
- platform-specific differences;
- backward compatibility constraints.

Do not spec a parallel behavior accidentally because you failed to inspect the current one.

If sources conflict, do not silently choose one. Identify the conflict and the authoritative source needed.

## Core principles

### 1. Specify behavior, not implementation

A product requirement should normally describe what an actor can observe or what the system must guarantee.

Good:

`When a saved payment method fails, the order is not created. The user remains in checkout, sees a recoverable failure state, and can retry or select another payment method.`

Weak:

`Implement robust payment error handling.`

Over-prescribed unless truly constrained:

`Create PaymentRetryManager using Redis and a three-state enum.`

Technical constraints belong in the spec only when they are real product/system constraints or the user explicitly requests technical design.

### 2. Requirements and UX are intertwined

Do not pretend the product can be fully specified through a feature list independent of interaction design.

For interaction-heavy work, the product specification may be a package consisting of:

- prototype/flow;
- annotated screens;
- behavior/state tables;
- business rules;
- acceptance criteria;
- supplemental text.

The written document should reference the authoritative design artifact/version when one exists.

### 3. Use one master representation

Avoid:

- one PRD saying A;
- a Figma prototype implying B;
- tickets implementing C;
- Slack containing the actual decision D.

Define the source of truth.

When multiple artifacts are necessary, specify their authority:

- interaction/design source;
- behavior/rule source;
- technical design source;
- analytics source.

Record material decisions/changes in the master spec or decision log.

### 4. Be precise at the right abstraction level

The spec must be concrete enough that engineering and QA do not need to guess product behavior.

It must remain abstract enough that engineering/design can solve implementation details that are not product decisions.

Use selective precision.

Be highly specific around:

- value-critical flows;
- permissions;
- money;
- entitlements;
- destructive actions;
- data ownership;
- irreversible operations;
- compliance;
- error recovery;
- high-risk states;
- experiment semantics;
- analytics semantics;
- AI failure/safety behavior.

Leave latitude around details that do not alter intended behavior unless design is already approved.

### 5. Preserve the coherent scope

`product-spec` must not casually re-expand or re-cut the scope established by `mvp-scope`.

If a new requirement appears during specification, classify it:

- newly discovered critical-path requirement;
- quality/trust requirement;
- hidden dependency;
- regulatory/security requirement;
- optional improvement;
- future capability.

Then update scope explicitly.

Do not smuggle scope growth into "edge cases" or "technical necessities."

### 6. A spec is a shared-understanding artifact, not a conversation replacement

Use the artifact to support and preserve understanding.

For material ambiguity, surface the question and options rather than writing more prose around it.

Acceptance criteria should confirm the shared decision, not substitute for product/design discussion.

### 7. Testability matters

Every important requirement should be verifiable through one or more of:

- observable user behavior;
- system-visible state;
- deterministic rule;
- instrumented event/data;
- explicit quality threshold;
- acceptance scenario.

Avoid adjectives with no operational meaning:

- fast;
- seamless;
- intuitive;
- secure;
- scalable;
- user-friendly;
- personalized;
- smart;
- robust.

If the quality matters, define what it means in context or label it as unresolved.

### 8. No-go boundaries are first-class requirements

Explicitly document what the release must not include when it would otherwise be easy for the team/agent to expand into it.

Examples:

- no custom domains in V1;
- no collaborative editing;
- no Android support in this release;
- no long-term AI memory;
- no auto-renewal change;
- no admin override;
- no background autonomous action.

This is especially important for autonomous coding agents.

### 9. Resolve rabbit holes before they surprise delivery

A rabbit hole is a small-looking area with disproportionate uncertainty/cost/risk.

Examples:

- timezone rules;
- partial refunds;
- entitlement restoration;
- account merge;
- recursive permissions;
- offline conflict resolution;
- third-party identity linking;
- AI tool actions with irreversible effects;
- migration of legacy records.

For each known rabbit hole:

- resolve behavior;
- narrow the scope;
- run a spike/experiment;
- or mark it as a build blocker.

Do not hand a known product rabbit hole to engineering as "figure it out."

## Boundary with `mvp-scope`

`mvp-scope` owns what is in the release, what is out, and why that slice is the smallest coherent scope for the intended outcome.

`product-spec` owns the behavioral definition of that approved scope. Do not reopen scope merely to make the specification easier. If the approved scope is internally incoherent, materially too large, or missing a required value-path element, flag the contradiction and return a scope-change request rather than silently adding/removing capabilities.

## Boundary with `plan-feature-change`

`product-spec` owns approved product behavior: actors, journeys, states, rules, failure/recovery, quality semantics, analytics contract, and acceptance intent. `plan-feature-change` owns the subsequent engineering delivery plan: repository impact, technical increments, migrations, rollout, rollback, and verification sequence.

If product semantics remain unresolved, complete or return to `product-spec` before technical planning. Once behavior is sufficiently resolved, hand the approved specification to `plan-feature-change`; the engineering planner must not invent or silently change product behavior.

## Specification workflow

### Step 1 - Write the release intent

Start with a short decision-oriented context.

Capture:

- target user/actor;
- problem/opportunity;
- current behavior if changing an existing product;
- desired outcome;
- business context when relevant;
- evidence status;
- why this solution was selected;
- release mode;
- appetite/time constraint if real;
- hard constraints.

Keep this concise. The implementation team does not need the entire discovery history.

### Step 2 - Freeze the scope boundary

Document:

#### In scope

Only behavior needed for the current release.

#### Explicitly out of scope / no-gos

Items that must not be added implicitly.

#### Later / possible follow-up

Only when useful. Do not create a pseudo-roadmap of speculative features.

#### Accepted limitations

Known limitations users/team will tolerate for this release.

A limitation must not violate a critical quality, trust, safety, legal, security, privacy, or outcome requirement.

### Step 3 - Define actors and access

List actors only when materially different.

For each actor, clarify:

- who they are;
- what they are trying to achieve;
- what they can see;
- what they can do;
- what they cannot do;
- ownership boundary;
- entitlement/permission dependency.

For complex role systems, use an actor-permission matrix.

Example:

| Capability | Viewer | Editor | Owner |
|---|---|---|---|
| View item | Yes | Yes | Yes |
| Edit content | No | Yes | Yes |
| Delete workspace | No | No | Yes |

Do not create roles the product does not need.

### Step 4 - Model the end-to-end user journey

Describe the successful story before individual requirements.

Typical structure:

`Trigger -> Entry -> Preconditions -> Core action -> System response -> Value/result -> Next action`

For multi-actor products:

`Actor A action -> system state -> Actor B action -> system state -> completion`

Include alternate paths only when material.

Use a flow diagram, story map, sequence, or state diagram when clearer than prose.

### Step 5 - Define the behavior by capability

Break the approved scope into coherent behavioral capabilities, not engineering components.

For each capability, define where relevant:

- trigger;
- preconditions;
- user action;
- system response;
- resulting state;
- visible feedback;
- allowed next actions;
- relevant business rule;
- relevant analytics;
- failure/recovery.

Prefer requirements that can be observed.

### Step 6 - Build the state model

State mistakes are a major source of product bugs and silent implementation invention.

Identify material states for the object, user, account, transaction, workflow, or feature.

Examples:

- uninitialized;
- draft;
- active;
- processing;
- completed;
- failed;
- canceled;
- expired;
- archived;
- suspended;
- trial;
- paid;
- grace period;
- revoked.

For each state, define:

- how it is entered;
- what the actor can do;
- what the system shows;
- valid transitions;
- invalid transitions;
- terminal/reversible status;
- side effects if product-relevant.

Use a transition table when useful:

| From | Trigger | To | User-visible result | Notes |
|---|---|---|---|---|
| Draft | Publish succeeds | Published | Item becomes visible | Requires permission |
| Draft | Publish fails | Draft | Error + retry | No partial publish |

Do not invent lifecycle states merely for architectural neatness.

### Step 7 - Define business rules separately from flows

Keep reusable deterministic rules in one place.

Common rule classes:

- eligibility;
- entitlement/access;
- pricing/billing;
- quotas/limits;
- ordering/ranking;
- timing/timezone;
- expiration;
- ownership;
- moderation;
- approval;
- cancellation/refund;
- notification;
- data retention;
- synchronization;
- conflict resolution;
- content visibility;
- localization;
- platform differences.

Use a rule table when many flows depend on the same logic.

For each rule, include the source/decision if contentious.

### Step 8 - Define content and copy semantics where they affect behavior

Exact copy belongs in the product spec when wording is itself a requirement, for example:

- legal disclosure;
- irreversible action confirmation;
- billing/price communication;
- permission rationale;
- compliance text;
- critical error/recovery instruction;
- experiment treatment wording;
- validated messaging.

Otherwise define content intent and let the responsible design/content workflow produce final copy.

Do not let placeholder copy accidentally become product policy.

### Step 9 - Define failure, recovery, and degraded behavior

Do not stop at the happy path.

Prioritize failures by:

`Likelihood x Severity x Recoverability x Trust/Safety impact`

Consider relevant conditions such as:

- validation error;
- network interruption;
- timeout;
- third-party failure;
- stale data;
- duplicate action;
- concurrent edit;
- partial completion;
- permission denied;
- unavailable entitlement;
- expired session;
- insufficient balance;
- payment failure;
- content removed;
- unsupported version;
- rate/usage limit;
- AI generation failure;
- unsafe/low-confidence AI result;
- background interruption;
- app restart during process.

For each material failure, define:

- what remains true;
- what is rolled back/preserved;
- what the user sees;
- recovery options;
- whether retry is safe;
- whether support/escalation is needed.

Never use "show an error" as the complete requirement for a material failure.

### Step 10 - Define empty, loading, first-use, returning, and boundary states

Only include states relevant to the capability.

Commonly overlooked:

- no data yet;
- no search result;
- first use;
- returning user with prior state;
- loading/processing;
- background refresh;
- stale/offline data;
- permission denied;
- feature unavailable;
- plan/entitlement changed;
- content deleted elsewhere;
- limit reached;
- partial result.

Define what the user can do next, not only what screen appears.

### Step 11 - Define non-functional product requirements

Only include requirements that matter to the current release and express them at product/system behavior level.

Possible categories:

- performance/latency;
- availability/reliability;
- data integrity;
- privacy;
- security behavior;
- accessibility;
- localization;
- supported OS/device/browser;
- offline/degraded behavior;
- data freshness;
- auditability;
- retention/deletion;
- compatibility;
- scale/capacity when credible and necessary.

Do not invent numeric targets.

If a threshold matters but is unknown, mark it as an open requirement and route to the correct owner/source.

### Step 12 - Define analytics as a behavioral contract

For material product changes, specify what must be observable after release.

At minimum, clarify:

- primary outcome or learning question;
- key funnel/state transitions;
- guardrails where relevant;
- exposure/assignment for experiments;
- event semantics needed to answer the question;
- important properties/dimensions;
- success review point.

If an existing analytics naming/schema convention exists, use it.

If not, describe semantic events first rather than inventing a sprawling event taxonomy.

Example:

| Semantic event | Fires when | Key properties | Why needed |
|---|---|---|---|
| `checkout_started` | User enters checkout with a valid cart | cart value, currency | Funnel entry |
| `payment_attempted` | Payment request is submitted | method type | Diagnose payment step |
| `purchase_completed` | Order is successfully created | order value | Product/business outcome |

Never fire "completed" at button tap if completion is asynchronous and may fail.

Separate:

- action attempted;
- action succeeded;
- action failed;

when those states matter.

For rigorous metric/experiment design, route to `product-metrics` / `product-experiment` rather than improvising statistics.

### Step 13 - Define privacy, safety, and destructive-action semantics

For sensitive actions/data, explicitly specify behavior around:

- consent;
- data collection/use;
- visibility;
- sharing;
- deletion;
- retention;
- recovery window;
- irreversible consequences;
- confirmation;
- authorization;
- audit trail if product-relevant;
- abuse/misuse;
- user recourse.

Do not assume technical security controls alone define product behavior.

### Step 14 - Define AI-specific behavior when relevant

For an AI feature, create a product contract around probabilistic behavior.

Clarify:

#### Input contract

- what user/context data can be used;
- required vs optional context;
- user permissions;
- unsupported inputs;
- sensitive-data boundaries.

#### Output contract

- what job the output should perform;
- expected structure/type;
- user-visible provenance/citations when required;
- acceptable uncertainty;
- prohibited or unacceptable output classes;
- whether output is advisory or authoritative.

#### Failure/fallback contract

- no response;
- timeout;
- malformed output;
- low confidence;
- unsafe output;
- unavailable model/provider;
- quota/cost limit;
- tool failure;
- partial result.

Define whether the product should:

- retry;
- regenerate;
- switch to deterministic/manual fallback;
- ask user for more context;
- block action;
- escalate to human review;
- disclose limitation.

#### Action boundary

If AI can act, distinguish:

- suggest;
- draft;
- preview;
- execute with confirmation;
- execute autonomously.

Irreversible/high-impact actions should never gain autonomy because the coding agent assumed it.

#### Evaluation hooks

Specify what examples/logs/feedback/events are needed to evaluate product-level AI quality after launch.

Do not invent an AI quality metric without a decision purpose.

### Step 15 - Identify dependencies, constraints, and rabbit holes

Separate:

#### Product dependency

Another capability/state must exist for the user behavior to work.

#### External dependency

Platform/provider/legal/partner dependency.

#### Technical dependency

Known implementation constraint validated by engineering.

#### Speculative dependency

A claimed future requirement or architecture preference not yet demonstrated.

Do not automatically elevate speculative dependencies into product scope.

For each material dependency/rabbit hole, state:

- why it matters;
- owner/source;
- status;
- consequence if unresolved;
- whether it blocks implementation.

### Step 16 - Write acceptance criteria as confirmation, not duplicate prose

Acceptance criteria should prove the important behavior/rules are implemented.

Use the smallest set that covers:

- core happy path;
- critical state transition;
- high-severity failure/recovery;
- critical permission/entitlement;
- critical business rule;
- required analytics correctness;
- material platform/compliance behavior.

Use Given/When/Then when it improves precision, especially for rules/state transitions.

Example:

`Given the subscription is in grace period, when the user opens premium content, then access remains available until the grace period ends and the account screen shows the billing-recovery state.`

Do not create one acceptance criterion for every sentence in the spec.

Do not use internal implementation assertions unless the requirement is genuinely technical.

### Step 17 - Create the open-question/blocker table

Never bury unresolved decisions in prose.

Use:

| Question | Type | Why it matters | Owner/source | Blocks build? |
|---|---|---|---|---|
| Is deletion immediate or recoverable for 30 days? | Product/legal | Changes lifecycle and copy | Product + legal | Yes |

Question types can include:

- product;
- UX;
- legal;
- security;
- analytics;
- feasibility;
- policy;
- operations;
- content.

A coding agent must not answer blocker questions silently.

### Step 18 - Define rollout and post-launch validation

Where relevant, state:

- rollout scope;
- feature flag / eligibility concept;
- migration requirement;
- backward compatibility;
- rollback condition;
- support/operations preparation;
- success review date/window;
- product outcome to inspect;
- known follow-up decision.

Do not mark the feature "done" simply because it shipped.

## Readiness levels

Not every useful product artifact should be called implementation-ready.

### `DRAFT - NEEDS PRODUCT DECISIONS`

Use when material product/business rules or scope remain unresolved.

### `READY FOR UX / DESIGN RESOLUTION`

Use when the product intent and scope are clear but interaction behavior is not defined enough to implement safely.

### `READY FOR VALIDATION`

Use when behavior/UX is concrete enough to test but evidence is still required before expensive implementation.

### `READY FOR IMPLEMENTATION`

Use only when:

- target behavior is clear;
- scope/no-gos are clear;
- critical rules/states are clear;
- material UX behavior is resolved;
- critical quality/constraint requirements are known;
- blockers are resolved or explicitly accepted;
- analytics/measurement needs are known for material work;
- feasibility has been checked to the degree required by risk.

### `IMPLEMENTATION BLOCKED`

Use when a known unresolved decision would force engineering to invent high-impact product behavior.

## Product-spec output formats

Choose the smallest format appropriate to complexity.

### Format 1 - Micro spec

For a small behavior change:

```text
Intent
Current behavior
Target behavior
Rules
Critical states/errors
Analytics change
Acceptance criteria
Out of scope
Open questions
```

### Format 2 - Standard feature spec

Use the full template below.

### Format 3 - State/rule-heavy spec

Lead with:

- object/state model;
- transition table;
- role/permission matrix;
- rule table;
- then flows.

Useful for subscriptions, transactions, approvals, permissions, marketplaces, account lifecycle.

### Format 4 - Interaction-heavy spec

Lead with authoritative design/prototype/flow plus annotations.

Use written material for behavior not obvious from the artifact.

### Format 5 - Coding-agent implementation brief

Generate a compact contract that a coding agent can consume directly after the complete spec is approved.

## Standard output template

# [Product / Feature / Change]

## 0. Specification status

- Status: DRAFT / READY FOR UX / READY FOR VALIDATION / READY FOR IMPLEMENTATION / BLOCKED
- Spec owner/source
- Last decision/update
- Authoritative design artifact, if any
- Related scope/experiment/metric artifacts

## 1. Release intent

### Problem / opportunity

### Target user / actors

### Current behavior

### Desired product outcome

### Evidence / assumptions

### Why this solution

### Hard constraints / appetite

## 2. Scope boundary

### In scope

### Explicit no-gos / out of scope

### Accepted limitations

### Later, only if useful

## 3. Actor and permission model

## 4. End-to-end journey

## 5. Functional behavior

### Capability A

### Capability B

## 6. State model and transitions

## 7. Business rules

## 8. Failure / recovery / degraded behavior

## 9. Empty / loading / first-use / boundary states

## 10. Product quality requirements

### Performance

### Reliability/data integrity

### Privacy/security behavior

### Accessibility

### Platform/support constraints

## 11. Content / copy requirements

## 12. Analytics and measurement contract

## 13. Dependencies and rabbit holes

## 14. Acceptance criteria

## 15. Open questions / blockers

## 16. Rollout / migration / rollback

## 17. Post-launch validation

## 18. Coding-agent handoff

## Coding-agent handoff contract

When the user intends to implement through Claude Code, Codex, or another autonomous coding agent, append a concise implementation contract.

### Approved product behavior

Summarize the immutable product decisions for this implementation.

### In scope

List only approved capabilities.

### Explicitly forbidden scope

List important no-gos.

### Product invariants

Rules that must remain true, for example:

- transaction cannot be charged twice;
- owner cannot accidentally lose the only ownership role;
- expired entitlement cannot unlock premium content;
- deletion does not imply immediate data erasure if a documented recovery window exists;
- AI draft cannot execute an external action without required confirmation.

### Existing behavior to preserve

For delta work, list important compatibility constraints.

### Required instrumentation

List semantic events/state measurements required.

### Required acceptance checks

List critical user-visible checks.

### Open blocker questions

If any blocker remains, instruct the agent to stop before product behavior must be invented.

### Implementation freedom

Explicitly state:

`Choose the simplest maintainable technical implementation consistent with the existing codebase and approved product behavior. Do not add new product capabilities, roles, settings, screens, business rules, platforms, analytics semantics, or speculative infrastructure without surfacing the change.`

## Behavior discovered during implementation

Implementation often exposes hidden product decisions.

When this happens, classify the discovery.

### Type 1 - Pure engineering decision

Example:

- internal class decomposition;
- library choice consistent with existing architecture;
- cache implementation with no user-visible semantic change.

Engineering/coding agent can decide.

### Type 2 - Product-semantic decision

Example:

- whether deletion is immediate;
- what happens to shared data after account removal;
- whether payment retry can duplicate an order;
- whether a user keeps access during grace period;
- whether an AI action requires confirmation.

Do not decide silently. Surface it.

### Type 3 - Scope discovery

A requirement/dependency was missed.

Run the removal/coherence test:

- required for intended outcome/coherence/quality/constraint -> update spec explicitly;
- optional -> defer/out of scope;
- uncertain/risky -> route to discovery/experiment.

### Type 4 - Technical constraint changes product options

Engineering discovers that approved behavior is infeasible or disproportionately expensive.

Return to product/design/engineering trade-off rather than implementing a different user behavior without approval.

## Spec change management

A spec may change. The objective is not immutability; it is controlled shared understanding.

For material changes after implementation begins:

1. State what changed.
2. State why.
3. Identify affected behavior/states/rules/analytics/tests.
4. Identify scope/timeline implications.
5. Update the authoritative spec.
6. Notify/align affected implementers.

Do not rely on an isolated chat message as the permanent source of truth.

## Quality review before declaring implementation-ready

Run these checks.

### Product intent check

- Is the problem/outcome clear enough to judge fit?
- Is the target user/actor clear?
- Is the solution direction actually selected?

### Scope check

- Are in-scope and no-go boundaries explicit?
- Did specification accidentally expand scope?
- Are accepted limitations explicit?

### Journey check

- Can the target user complete the end-to-end job?
- Are cross-actor handoffs coherent?

### Behavior check

- Are triggers, system responses, and resulting states clear?
- Would two competent engineers build materially different product behavior because the spec is ambiguous?

### State/rule check

- Are critical lifecycle states explicit?
- Are pricing/permission/entitlement/destructive rules explicit?
- Are invalid transitions handled?

### Failure/recovery check

- Are high-severity failure modes defined?
- Is retry/recovery behavior safe?
- Is partial completion/data integrity addressed where relevant?

### UX check

- Is interaction behavior resolved enough for implementation?
- Is there an authoritative design/prototype where visual/interaction detail matters?
- Is the design artifact consistent with written rules?

### Quality/constraint check

- Are critical privacy/security/accessibility/platform/performance requirements represented?
- Are unknown thresholds labeled rather than invented?

### Measurement check

- Can we observe whether the released behavior happened and whether it moved the intended outcome?
- Are event semantics correct, especially attempted vs successful actions?

### Testability check

- Can QA/engineering determine whether implementation is correct?
- Do acceptance criteria cover material behavior rather than every line of prose?

### AI-agent check

- Are important no-gos explicit?
- Are product decisions separated from implementation freedom?
- Does the agent know when it must stop and ask instead of inventing behavior?

## Common anti-patterns

### 1. PRD as evidence

Bad:

`The PRD is approved, therefore customers want it.`

A document records decisions; it does not validate them.

### 2. Feature inventory instead of product behavior

Bad:

- Login
- Notifications
- Profile
- AI chat

This does not explain how the product works.

### 3. Screen-by-screen spec with no journey

A list of screens can omit the user's actual goal, transitions, failure paths, and rules.

### 4. Engineering architecture disguised as product requirements

Bad:

`Must use microservices because this may scale later.`

Unless scale is a real constraint, this is not a product requirement.

### 5. Vague quality adjectives

Bad:

`The experience should be fast and intuitive.`

Define context/target or leave it as an unresolved quality goal.

### 6. Acceptance-criteria explosion

Hundreds of duplicated Given/When/Then statements do not create clarity if the underlying product model is incoherent.

### 7. Happy-path-only specification

A payment, deletion, entitlement, upload, AI, or collaborative workflow without failure/recovery behavior is incomplete.

### 8. Edge-case encyclopedia

Do not enumerate theoretical cases with negligible consequence while missing the core journey.

### 9. Multiple sources of truth

Do not allow Figma, PRD, tickets, and chat to define conflicting behavior without authority/version rules.

### 10. Silent product decisions by engineering/AI

Examples that require explicit resolution:

- prices;
- entitlement semantics;
- data retention;
- permission hierarchy;
- destructive-action lifecycle;
- user-visible fallback;
- experiment exposure;
- major navigation/UX changes;
- success criteria.

### 11. Scope hidden in "technical requirements"

Do not let optional admin panels, dashboards, migration systems, scalability layers, settings, or configurability enter V1 as supposedly mandatory infrastructure without evidence.

### 12. Design artifact treated as complete behavior

A prototype may not show:

- business rules;
- error states;
- data ownership;
- performance;
- permissions;
- concurrency;
- lifecycle;
- analytics;
- platform requirements.

Supplement it.

### 13. Text spec treated as complete UX

For interaction-heavy features, prose may still leave major experience ambiguity. Use flows/prototypes/annotated visuals where needed.

### 14. Over-specifying pixels too early

If visual design is not a settled product decision, define interaction intent/constraints without forcing arbitrary layout details.

### 15. Generic analytics events

Bad:

`button_clicked`

without semantic meaning or decision use.

### 16. Attempt equals success

Do not record transaction completion, account deletion, upload completion, or AI action completion at the moment the user merely requests it.

### 17. Future roadmap smuggled into V1 spec

"We'll need it eventually" is not a V1 requirement.

### 18. Implementation begins with blocking questions unresolved

If the unresolved answer changes money, access, ownership, privacy, irreversible actions, critical UX, or analytics semantics, stop and resolve it.

## Final response behavior

When using this skill, do not automatically dump the full standard template.

First infer the complexity and use the smallest adequate artifact.

For a small change, return a micro spec.

For a material feature, return a standard or specialized spec.

For an implementation-agent request, finish with a compact coding-agent contract.

Always make unresolved high-impact decisions visible.
