---
name: mvp-scope
description: Define the smallest coherent product, feature, or release scope that can achieve a specific outcome or produce decision-useful learning without destroying viability. Use for MVP/V1 definition, story mapping, vertical slicing, feature cutting, fixed-date rescoping, release sequencing, outcome-based prioritization, Cost of Delay, scope creep triage, and implementation-agent guardrails. Do not use this skill to discover whether the problem or solution is worth pursuing when that uncertainty is still material; route to discovery or experimentation first.
---

# MVP Scope

## Mission

Build less while preserving the smallest coherent path to the intended result.

The objective is not to minimize feature count. The objective is to minimize investment while preserving enough customer value, business value, product quality, and learning power for the current release purpose.

The core loop is:

`Outcome -> End-to-end story -> Candidate scope -> Cut -> Coherence check -> Release -> Measure -> Learn`

A useful minimum is always minimum relative to something:

- a target user;
- a specific problem/opportunity;
- a desired outcome or learning goal;
- a defined time horizon;
- real constraints;
- an acceptable quality and risk bar.

Without those anchors, "MVP" degenerates into opinion, stakeholder politics, or arbitrary backlog trimming.

Optimize for:

- outcome before feature count;
- coherent end-to-end value;
- the smallest useful user and use-case surface;
- explicit trade-offs;
- small batches and fast feedback;
- scope reduction before quality reduction;
- direct visibility of what is now, next, later, and not planned;
- explicit measurement and post-release learning;
- implementation agents staying inside approved product scope.

Do not optimize for:

- filling available team capacity;
- pleasing every stakeholder in V1;
- matching a competitor feature-for-feature;
- speculative future-proofing;
- maximum flexibility/configurability;
- the shortest possible feature list regardless of user outcome;
- calling a broken fragment an MVP;
- shipping quickly at the cost of trust, safety, reliability, or core usability.

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

## First question: what kind of minimum are we defining?

Do not start cutting until the release purpose is explicit.

### Mode A - Learning slice

Use when the goal is to reduce a specific uncertainty rather than deliver a durable customer solution.

Examples:

- test whether users will complete a behavior;
- expose a risky assumption;
- validate feasibility;
- learn whether a workflow creates value.

In this mode, the correct minimum may be:

- a prototype;
- a manual workflow;
- a technical spike;
- a disposable implementation;
- a limited production slice.

If the main task is experiment design, route to `product-experiment`.

### Mode B - Product / V1 release

Use when the release must stand on its own for a target user and create meaningful value.

The release must be a coherent solution, not merely the smallest set of tickets that engineering can complete.

### Mode C - Feature / capability release

Use when improving an existing product.

Define the smallest complete change that can move the intended product outcome without requiring the user to tolerate an obviously broken or fragmented experience.

### Mode D - Fixed-date / market-window release

Use when timing is a real constraint, such as:

- launch event;
- contractual deadline;
- platform deadline;
- seasonal opportunity;
- regulatory date;
- partner dependency.

Here, scope is the primary variable, but do not silently cut below viability. If the date and viable scope conflict, explicitly renegotiate one of:

- target segment;
- use case;
- outcome;
- breadth;
- release channel;
- date;
- quality/risk expectations where safe and acceptable.

### Mode E - Mid-build rescope

Use when implementation is underway and:

- estimates changed;
- a dependency appeared;
- research changed the product understanding;
- a hard date is threatened;
- the current release is no longer coherent.

Do not cut random tickets late in the cycle. Re-slice against the intended outcome and end-to-end user story.

## Entry conditions

Before detailed scoping, try to establish:

1. Target user / actor.
2. Problem or opportunity.
3. Desired outcome or learning goal.
4. Selected solution direction, if this is a delivery scope.
5. Current evidence and unresolved assumptions.
6. Hard constraints.
7. Relevant quality, safety, legal, privacy, security, accessibility, and reliability bars.
8. Time/capacity constraints if real.
9. How success will be observed.

If the problem is unclear, route to `customer-research` or `product-discovery`.

If the solution is still materially risky, route to `product-experiment` before pretending a release scope is settled.

If product behavior is sufficiently settled and the task is detailed implementation specification, route to `product-spec` after scoping.

## Core principles

### 1. Minimum is relative to an outcome

Never ask only:

`What is the minimum set of features?`

Ask:

`What is the smallest coherent solution that can plausibly achieve this outcome for this target user under these constraints?`

A release that contains fewer features but cannot create the intended user behavior is not smaller in any useful product sense. It is incomplete.

### 2. Scope from the outside in

Start from:

- who needs to succeed;
- what they need to accomplish;
- what must change after release;

then decide what the system must contain.

Do not start from:

- existing backlog priority;
- internal component boundaries;
- architecture layers;
- stakeholder feature lists;
- engineering ownership boundaries.

### 3. Preserve a coherent whole

A release should let the intended user complete a meaningful end-to-end path.

Avoid this type of "MVP":

- backend complete, no usable front end;
- onboarding complete, no meaningful value after onboarding;
- creation flow complete, no way to view/use the result;
- core action available, but required error/recovery state makes normal use unsafe or impossible.

Exceptions are valid when the release purpose is explicitly learning or technical feasibility rather than customer value.

### 4. Reduce breadth before destroying the core path

Prefer narrowing:

- target segment;
- use case;
- scenario;
- platform;
- geography;
- content breadth;
- integration count;
- workflow variants;
- automation;
- customization;
- permissions/roles;
- reporting depth;
- advanced edge cases;
- scale expectations;

before breaking the coherent value path for the chosen target.

### 5. Small scope does not mean low quality

Do not confuse:

`minimum breadth`

with:

`minimum quality`.

A narrow V1 may still need to be:

- functional;
- reliable enough for the target context;
- understandable and usable;
- safe;
- secure/privacy-compliant where required;
- accessible to the required audience;
- credible enough not to destroy trust.

When quality is expensive, narrow who or what the release serves before making the core experience unacceptable.

### 6. Prioritize outcomes, not feature popularity

A feature is included because it contributes to:

- the release outcome;
- end-to-end viability;
- a hard constraint;
- critical risk reduction;
- required learning/measurement.

Not because:

- a stakeholder likes it;
- a competitor has it;
- it is cheap;
- it is common in the category;
- it has been in the backlog for a long time.

### 7. All "must-haves" must survive a removal test

For each alleged must-have, ask:

`If we remove this from V1, what specifically breaks?`

A strong answer is one of:

- target user cannot reach intended value;
- desired outcome becomes implausible;
- release cannot generate required learning;
- legal/security/safety/reliability constraint is violated;
- another truly required item cannot function;
- market timing/value is materially damaged.

Weak answers:

- "users expect it";
- "it would be nice";
- "everyone has it";
- "we will need it eventually";
- "engineering says we should future-proof it".

### 8. Treat V1 as a hypothesis

A scope decision is not proof that the chosen slice is viable.

After release, measure the intended outcome and update the product.

`Shipped != done`

If the release does not move the intended outcome, diagnose and iterate rather than declaring success because the tickets closed.

## Workflow

### Step 1 - Write the release intent

State in one compact block:

- **Target user:** who this release is for.
- **Current problem/opportunity:** what matters now.
- **Desired outcome:** what should change.
- **Release purpose:** learning, first value, market entry, improvement, mandated work, etc.
- **Time horizon:** when the outcome matters.
- **Hard constraints:** legal, safety, platform, date, partner, budget, policy, etc.
- **Evidence state:** what is known vs assumed.

If you cannot state this cleanly, do not start feature ranking.

### Step 2 - Define the viability hypothesis

For delivery work, write:

`We believe [target user] can achieve [meaningful result] through [selected solution path] with this release, and that this can move [desired outcome].`

This statement is a hypothesis, not a fact.

For a learning slice, write:

`This slice is sufficient to learn whether [specific assumption] is supported strongly enough to make [decision].`

### Step 3 - Map the whole relevant user story

Create a story map before cutting.

Map the experience as users/actors encounter it, not as engineering components.

Recommended structure:

```text
Actor / user

Activity 1 -> Activity 2 -> Activity 3 -> Activity 4
   |            |            |            |
 details      details      details      details
 variants     variants     variants     variants
 edges        edges        edges        edges
```

Use:

- horizontal axis for narrative/time flow;
- vertical depth for alternatives, details, variants, edge cases, advanced capability, and polish.

For multi-actor systems, include relevant actors and handoffs.

Examples:

- buyer -> system -> seller;
- player -> matchmaking -> opponent;
- customer -> AI assistant -> external service;
- admin -> end user;
- creator -> consumer.

The map should expose:

- entry point;
- setup/preconditions;
- core action;
- value moment;
- completion/confirmation;
- critical recovery states;
- required handoffs;
- dependencies;
- repeated loops if central to value.

### Step 4 - Build the backbone

Distill the map into the few major activities necessary for the intended outcome.

Example:

```text
Discover -> Start -> Configure minimum -> Perform core action -> Receive result -> Continue / recover
```

A backbone is not a list of screens or services. It is the high-level story of how value happens.

### Step 5 - Classify scope items

Classify candidate items to make hidden priorities explicit.

#### A. Critical-path value

Without it, the target user cannot reach the intended value.

#### B. Enabling dependency

Required for a critical-path item to work.

Verify that the dependency is real, not merely an architectural preference.

#### C. Outcome amplifier

Improves the probability or magnitude of the desired outcome but is not necessary for the basic coherent path.

#### D. Quality / trust guardrail

Required to keep the release sufficiently reliable, safe, secure, comprehensible, or credible.

#### E. Learning / measurement

Instrumentation, logging, qualitative capture, or controlled exposure needed to know whether the release worked.

#### F. Optional depth

Useful but not required for this release purpose.

#### G. Future scalability / flexibility

Useful later if evidence justifies scale, more segments, more volume, or more configurations.

Do not automatically include category G in V1.

### Step 6 - Slice the thinnest coherent path

Create a horizontal slice through the map that reaches value end to end.

The slice should:

- include every critical backbone activity necessary for this outcome;
- use the simplest viable version of each activity;
- leave deeper variants below the line;
- preserve required quality and guardrails;
- include measurement;
- be understandable as one product story.

Prefer:

```text
small end-to-end slice
```

over:

```text
complete layer 1
complete layer 2
complete layer 3
```

For example, prefer one usable login method + one core workflow + one result path over building every authentication method before any user can reach value.

### Step 7 - Run the removal test item by item

For every item above the V1 line, ask:

1. What outcome contribution does it make?
2. What breaks if it is removed?
3. Can we narrow it?
4. Can we replace automation with a temporary manual process?
5. Can we support only one segment/path/platform first?
6. Can we postpone scale/flexibility until demand proves it matters?
7. Can an existing service or standard pattern cover it?
8. Is it required now, or merely likely to be useful later?

If the answer to #2 is vague, move the item below the line until better evidence says otherwise.

### Step 8 - Cut using scope-reduction levers

Use these levers before removing core value.

#### Segment

Serve one high-priority segment before all segments.

#### Job / use case

Solve one important job completely before many jobs partially.

#### Platform

Launch on the platform that gives the best learning/value first when multi-platform support is not itself essential.

#### Geography / language

Start where the opportunity and operational complexity make sense.

#### Workflow branch

Support the dominant successful path first; defer lower-value alternatives where safe.

#### Integrations

Support the most important integration(s), not the theoretical ecosystem.

#### Automation

Use manual or semi-manual operations when safe, affordable, and appropriate for the stage.

#### Customization

Use strong defaults before flexible configuration unless configuration is core to value.

#### Roles / permissions

Support the minimum actor set required for the chosen scenario.

#### Content / catalog breadth

Use enough content to produce the target value without requiring the full future catalog.

#### Reporting

Measure what is needed for the current outcome and decisions before building a complete analytics suite.

#### Scalability

Build for credible near-term load plus a safe margin, not imagined future scale, unless scale itself is a launch constraint.

#### Polish

Reduce decorative or optional polish before reducing clarity, trust, usability, accessibility, or brand-critical quality.

### Step 9 - Evaluate value, urgency, effort, and dependencies

Do not rely on one universal scoring formula.

Use the lightest prioritization method that helps the decision.

#### Value / effort

When comparing optional chunks, consider expected customer or business value relative to effort.

Prefer the smaller item when two items provide similar expected value because it delivers feedback and value sooner.

Do not invent precise values if the evidence is weak. Relative `high / medium / low` comparisons are acceptable when clearly labeled as estimates.

#### Cost of Delay

When time matters, assess both:

- value if delivered;
- urgency of delivering now rather than later.

Ask:

- What is lost each week/month this waits?
- Is there a market window?
- Are customers actively churning or losing money because this is missing?
- Does this item unlock learning or value for other work?
- Is the extra scope delaying a much more valuable release?

High value does not automatically mean high urgency.

#### Dependencies

Dependencies can override simple value/effort ranking, but verify them.

Ask:

- Is this a true user/product dependency?
- Is it a technical dependency created by the current architecture?
- Can the dependency be narrowed or bypassed?
- Is there a temporary manual or third-party alternative?

Do not let "dependency" become a blanket excuse for platform rebuilding.

### Step 10 - Set a quality floor

For the chosen target scenario, explicitly define what cannot be cut.

Consider:

- data integrity;
- security/privacy;
- legal/regulatory requirements;
- safety/harm;
- core reliability;
- accessibility obligations;
- error prevention/recovery for likely or severe failures;
- performance where it determines usability/value;
- trust-critical messaging;
- required support/operations.

The goal is not perfection. The goal is sufficient quality for the actual risk and customer context.

### Step 11 - Handle edge cases by severity and probability

Do not use either extreme:

`handle every theoretical edge case before launch`

or:

`ignore all edge cases because it is an MVP`.

For each edge case, consider:

- likelihood;
- severity if it occurs;
- detectability;
- reversibility/recovery;
- legal/safety implications;
- whether it blocks the core path.

Include high-severity or common core-path failures even if they add scope.

Rare, low-impact, recoverable cases can often be deferred with an explicit fallback.

### Step 12 - Create release slices by outcomes

Do not create a roadmap that is only:

```text
V1: feature A, B, C
V1.1: feature D, E
V2: feature F, G
```

Prefer:

```text
Release 1 outcome:
Target users can complete X and achieve Y.

Release 2 outcome:
More of the target segment can complete Y without manual support.

Release 3 outcome:
Expand Y to segment/platform Z if evidence supports it.
```

Then place feature chunks under each outcome slice.

Do not plan many releases ahead with false certainty. Future slices are hypotheses and should change as evidence arrives.

### Step 13 - Keep explicit non-goals

Every material V1 should contain an `Out of scope` section.

Examples:

- no social layer;
- no multi-language support yet;
- no advanced admin permissions;
- no custom themes;
- no web client;
- no automated workflow for an operation currently handled manually;
- no support for segment B.

This protects the release from implementation agents, stakeholders, and future conversations gradually expanding the solution.

### Step 14 - Define the change-control rule

New information will appear during delivery.

Do not label every newly discovered item "scope creep". Sometimes understanding simply improved.

When a new item appears, classify it:

#### Newly discovered required work

The release cannot remain coherent/safe/viable without it.

-> Bring it into scope and explicitly rebalance something else if needed.

#### New optional opportunity

Useful, but not required for the current outcome.

-> Move to next/later.

#### Changed evidence

Research or implementation evidence invalidated a scope assumption.

-> Revisit the slice, and if necessary route back to discovery/experiment.

#### Stakeholder expansion

New request with no current outcome dependency.

-> Do not add silently. Record as later/out of scope.

### Step 15 - Define success before handoff

Before moving to `product-spec`, establish:

- primary outcome / learning target;
- key observable behaviors;
- baseline if available;
- instrumentation needed;
- guardrails;
- qualitative follow-up if useful;
- decision after release if results are supportive, mixed, or weak.

Do not scope a release that cannot tell you whether it worked.

## Scope decision heuristics

### The coherence test

Ask:

`Can the intended user reach meaningful value from beginning to end without a missing essential step?`

If no, the release is not a viable delivery slice.

### The outcome test

Ask:

`If every included item works technically, is there still a plausible path to the desired outcome?`

If no, the scope is output-driven rather than outcome-driven.

### The subtraction test

Ask for each item:

`Can we remove or narrow this and still preserve the purpose?`

If yes, remove or narrow it.

### The segment test

Ask:

`Can we deliver a much smaller coherent solution by serving fewer users well?`

Often this is better than serving everyone poorly.

### The manual-before-automation test

Ask:

`Can a safe, manageable manual process temporarily replace this automation?`

If yes, consider deferring automation until repeated usage proves it is worth building.

### The standard-pattern test

Ask:

`Is this a solved, non-differentiating problem with a standard platform/component/service solution?`

If yes, prefer the established solution instead of custom scope.

### The future-proofing test

Ask:

`What current evidence makes this flexibility/scalability necessary now?`

If the answer is only "we might need it later," defer it.

### The date test

Ask:

`What is more important: this specific date, this specific audience, this specific scope, or this specific quality/risk bar?`

If all are declared fixed, surface the contradiction instead of pretending the plan is feasible.

## Fixed-date rescoping protocol

When a date is non-negotiable:

1. Restate the outcome that matters by the date.
2. Identify the target users who create most of that value.
3. Map only their critical end-to-end scenario.
4. Remove secondary segments and use cases.
5. Remove optional depth.
6. Replace automation with safe manual operations when sensible.
7. Remove speculative scalability/flexibility.
8. Preserve safety, legality, trust, and core usability.
9. Verify the reduced slice still reaches the target outcome.
10. If it does not, explicitly say the date/outcome combination is not feasible with current constraints.

Never hide a date conflict by shipping an incoherent fragment and calling it MVP.

## Existing-product feature scoping

For an existing product, start from the target behavior change.

Example:

```text
Outcome:
Increase users who successfully complete first export.

Not:
Build advanced export center.
```

Map the existing flow and identify the smallest change that could remove the specific obstacle.

Avoid expanding the scope into neighboring improvements merely because the area is being touched.

Ask:

- Which current obstacle are we removing?
- What behavior should change?
- What is the smallest coherent intervention?
- What should stay exactly as it is?
- What instrumentation is required?

## New-product scoping

New products have the highest temptation to over-scope because almost everything appears necessary.

Default to narrowing:

- target segment;
- primary job;
- acquisition/entry path;
- core value loop;
- monetization model if multiple exist;
- platforms;
- operational model.

Do not build the future organization of the product before one narrow value proposition works.

A new-product V1 should be opinionated about who it is for and what it does not do.

## Multi-sided / multi-actor products

For marketplaces, social products, collaboration products, creator ecosystems, B2B buyer/user splits, or similar systems:

- map all actors required for the first value exchange;
- identify minimum liquidity/content/supply conditions;
- scope both sides of the critical loop;
- do not optimize one actor while making the other unable to participate;
- separate buyer, user, admin, payer, supplier, and partner roles where relevant.

The minimum scope may require more than one interface because value depends on the system, not one screen.

## AI / ML product scoping

AI features are especially prone to hidden scope expansion.

Separate:

- customer-facing value;
- prompt/model behavior;
- data/context requirements;
- evaluation/quality controls;
- latency/cost;
- fallback/recovery;
- human operations;
- safety/trust requirements;
- personalization/memory;
- model/provider abstraction;
- future agent/tool capability.

Do not automatically include:

- multi-model routing;
- long-term memory;
- autonomous agents;
- complex tool orchestration;
- custom model training;
- full evaluation infrastructure;
- enterprise-grade provider abstraction;

unless the current release requires them.

For early V1, a narrower AI interaction with strong quality controls can be better than a broad "AI assistant" surface.

If manual/human-generated output can safely produce the intended learning or value temporarily, consider it before automating the entire pipeline.

## Implementation-agent guardrails

When handing scoped work to Claude Code, Codex, or another coding agent, provide an explicit scope boundary.

The implementation agent must not silently add product behavior because it seems useful or standard.

Require the handoff to contain:

### In scope

Exact customer-visible and operational behavior approved for this release.

### Out of scope

Explicitly deferred behavior.

### Non-negotiable constraints

Security, privacy, legal, platform, safety, compatibility, analytics, performance, or other hard requirements.

### Scope-change rule

If implementation discovers a product decision not covered by the scope/spec:

`surface the question -> propose options -> do not silently choose a major new product behavior`

### Architecture rule

Prefer the simplest maintainable architecture that supports approved scope and credible near-term constraints.

Do not build speculative infrastructure for hypothetical future features.

### Learning rule

Include instrumentation required to assess the release outcome.

Do not omit analytics merely to make the implementation technically smaller if measurement is part of the release purpose.

## Anti-patterns

### Flat backlog MVP

`Take the top 10 tickets and call them V1.`

Why it fails:

The tickets may not form one coherent user story.

### Every stakeholder gets one feature

Why it fails:

Creates breadth without focus and makes the release larger while weakening the value proposition.

### Cheapest features first

Why it fails:

Low effort does not imply meaningful outcome contribution.

### "All P1s are must-have"

Why it fails:

Priority labels often hide unresolved negotiation. A true minimum should already have made the trade-offs.

### Backend-first product slice

Why it fails:

May complete substantial engineering output while creating zero user value or learning.

Exception: explicit technical learning/spike.

### Low-quality MVP

Why it fails:

Users cannot distinguish "temporary MVP quality" from the product experience they receive. Poor reliability/usability can invalidate the learning and damage trust.

### Build for every segment

Why it fails:

Creates complexity before proving value for any segment.

### Premature scalability

Why it fails:

Optimizes a future constraint before current value is established.

### Cheap-item creep

`This only takes two hours, add it.`

Why it fails:

Many cheap items aggregate into delayed feedback, more testing/support surface, and a less focused product.

### Edge-case absolutism

Either handling every possible edge case or ignoring all of them.

Use risk-based triage instead.

### Competitor checklist

`Competitor has 30 features, so our V1 needs parity.`

Why it fails:

Table stakes must be tied to the chosen market and value proposition, not copied mechanically.

### Roadmap certainty

Planning V1, V1.1, V1.2, V2 in detailed feature order before V1 evidence exists.

Why it fails:

Learning should change later scope.

### Scope by architecture ownership

`Team A builds service A, Team B builds service B, then eventually users get value.`

Why it fails:

Optimizes internal structure over end-to-end value.

### Cutting measurement

`Analytics can come later.`

Why it fails:

The team ships but cannot know whether the release succeeded.

### Shipped = done

Why it fails:

Delivery completion is an output. Product work continues until the outcome is understood and the team decides what to do next.

## Decision states

End the scoping workflow with one of these states.

### READY FOR PRODUCT SPEC

Use when:

- target user is clear;
- outcome is clear;
- selected solution is sufficiently understood;
- V1 is coherent end to end;
- hard constraints are addressed;
- measurement is defined;
- major scope questions are resolved.

Next -> `product-spec`.

### NEED PRODUCT ESTIMATE / FEASIBILITY INPUT

Use when the scope trade-off depends on engineering effort, technical feasibility, operations, data, partner, or platform constraints that are not yet known.

Request the minimum information needed to make the cut.

### RETURN TO PRODUCT EXPERIMENT

Use when an item is expensive because of an unresolved assumption and a cheaper learning step could materially change scope.

### RETURN TO DISCOVERY / RESEARCH

Use when the team cannot define a coherent minimum because the target problem, user, or desired outcome is still unclear.

### RESCOPE REQUIRED

Use when current date/capacity constraints conflict with the existing release.

Provide a smaller coherent slice, not random feature cuts.

### DO NOT SHIP THIS SLICE

Use when the proposed release would be:

- incoherent;
- unsafe;
- legally noncompliant;
- misleading;
- too unreliable for the context;
- incapable of producing the intended value or learning.

## Output contract

Use the smallest output that supports the decision. For material scopes, use this structure.

### 1. Release intent

- Target user
- Problem / opportunity
- Desired outcome / learning goal
- Release mode
- Hard constraints
- Evidence state

### 2. Viability hypothesis

One sentence describing why this slice should be enough.

### 3. Story map

```text
Backbone:
Activity 1 -> Activity 2 -> Activity 3 -> Activity 4

Depth:
Activity 1
- basic
- optional
- later
...
```

Include actors/handoffs where relevant.

### 4. Scope decision

#### NOW / V1

For each item include:

- item;
- why required;
- type: critical path / dependency / guardrail / measurement / amplifier;
- evidence or constraint supporting inclusion.

#### NEXT

For each item include the evidence, condition, or outcome that would promote it.

#### LATER

Keep brief. Do not over-plan.

#### EXPLICITLY OUT OF SCOPE

List the boundaries that implementation must not silently expand.

### 5. Cuts and trade-offs

- What value is preserved
- What value is deferred
- Which users/use cases are intentionally not served yet
- Risks accepted
- Risks not acceptable
- Manual workarounds if any

### 6. Quality floor

- Reliability
- Security/privacy
- Safety/legal
- Critical failure/recovery
- Accessibility/performance where relevant

### 7. Measurement / learning

- Primary outcome
- Supporting behavior
- Guardrails
- Instrumentation
- Qualitative follow-up
- Decision after supportive / mixed / weak results

### 8. Open scope questions

Only questions that can materially change the release.

### 9. Handoff status

One of:

- READY FOR PRODUCT SPEC
- NEED PRODUCT ESTIMATE / FEASIBILITY INPUT
- RETURN TO PRODUCT EXPERIMENT
- RETURN TO DISCOVERY / RESEARCH
- RESCOPE REQUIRED
- DO NOT SHIP THIS SLICE

## Boundary with `map-product-scope`

Use `map-product-scope` when the work needs a story map, shared journey model, backlog restructuring, or candidate horizontal slices. Treat that map as an input to the release decision.

`mvp-scope` owns the final release boundary: what is now, next, later, or explicitly out; the quality floor; removal decisions; and why the chosen slice is the smallest coherent scope for the intended outcome. A map must not silently decide the release boundary when this skill is active.

## Final self-check

Before finalizing a scope, ask:

1. What outcome is this release trying to create?
2. Who exactly needs to succeed?
3. Can that user reach value end to end?
4. What have we deliberately left out?
5. Did we reduce breadth before core quality?
6. Did we challenge every alleged must-have?
7. Are dependencies real or assumed?
8. Did cheap features sneak in without outcome value?
9. Are future scale/flexibility requirements supported by current evidence?
10. Are severe/common failure states covered?
11. Can we observe whether the release worked?
12. If the release misses the outcome, do we know what decision comes next?
13. Will the implementation agent know exactly what it must not add?
14. Is there any item we can still remove or narrow without breaking the purpose?

If #14 is yes, reduce the scope again.
