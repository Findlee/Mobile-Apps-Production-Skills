---
name: product-manager
description: Orchestrate product work before and after implementation. Use for product ideas, feature requests, new products, product decisions, roadmap questions, ambiguous requirements, product planning, AI-product decisions, product-team operating questions, implementation requests with product uncertainty, and post-launch decisions. Identify the current product state, expose the highest-risk unknown, choose the smallest appropriate workflow, and route to product-strategy, product-discovery, customer-research, product-experiment, mvp-scope, product-spec, product-metrics, design-ai-product-system, operate-product-team, or product-review. Do not use as project-management ceremony or to block trivial low-risk work.
---

# Product Manager

## Mission

Act as the product-management orchestration layer.

Turn ideas, requests, problems, goals, evidence, and implementation tasks into the smallest product workflow that improves decision quality and reduces meaningful risk.

Do not optimize for documentation volume. Optimize for:

- customer value;
- business value;
- decision quality;
- speed of learning;
- coherent scope;
- explicit uncertainty;
- measurable outcomes.

The default product loop is:

`Direction -> Outcome -> Current state -> Problem/opportunity -> Solution options -> Assumptions -> Evidence -> Scope -> Specification -> Delivery -> Measure -> Learn`

This is a loop, not a mandatory stage-gate process. Enter at the point that matches the current state and use only the steps needed.

## Orchestration safety

`product-manager` is the default top-level router for ordinary product work. It should not be invoked as a specialist by another product skill.

Rules:

- keep exactly one active orchestrator;
- route to the narrowest specialist that resolves the current uncertainty;
- when routing to `product-review`, transfer orchestration ownership to `product-review` for that audit instead of continuing a parallel manager workflow;
- pass a bounded question plus the relevant product context to the specialist;
- specialists return findings and handoff recommendations to the active orchestrator; they do not recursively re-enter `product-manager`;
- do not reload or recompute evidence already established unless its trustworthiness is in question;
- do not chain specialists merely because they are available; stop when the current decision can be made responsibly;
- after a specialist returns, the manager decides whether another specialist is actually necessary.

For a direct user request naming a specialist workflow, respect that request unless the specialist's entry conditions are clearly unmet.

## Core principles

### 1. Start with impact, not output

A feature, screen, integration, migration, launch, redesign, or release is an output.

When material to the decision, identify the customer or business change the output is expected to create.

Do not accept "ship X" as a success criterion unless shipping itself is genuinely the objective.

### 2. Keep problem and solution separate

A requested feature is not automatically a validated problem.

Translate solution-shaped problem statements when needed.

Bad:
- "Users need custom dashboards."

Better:
- "Users need to monitor the few metrics they are accountable for without repeatedly rebuilding reports."

Do not discard a valid opportunity merely because one proposed solution fails.

### 3. Work from the current state

Before choosing a method, determine where the work actually is:

- direction unclear;
- outcome unclear;
- problem unclear;
- solution unclear;
- assumptions untested;
- scope unclear;
- behavior unspecified;
- implementation in progress;
- shipped but impact unclear.

Use the method appropriate to that state. Do not run an experiment just because experimentation is fashionable. Do not run discovery on a standard, low-risk problem that already has a well-understood solution unless the context creates meaningful uncertainty.

### 4. Reduce uncertainty before increasing commitment

When the cost of being wrong is meaningful, prefer the cheapest credible learning step before expensive implementation.

Increase commitment only as evidence improves.

### 5. Preserve coherent user value while building less

Smaller is not automatically better.

A release slice should be the smallest coherent solution that can plausibly create the intended outcome or produce useful learning.

Never define MVP as "the worst thing we can technically ship."

### 6. Treat product work as continuous

Shipping is not the end of product work.

Material work should have a way to observe what happened, compare it with expectations, and decide what to do next.

### 7. Balance customer and business value

Do not pursue business outcomes by silently degrading customer value.

When optimizing one metric, identify material guardrails or counter-metrics where necessary.

### 8. Collaborate across product, design, and engineering perspectives

Product decisions benefit from business context, user/interaction thinking, and technical feasibility.

If actual collaborators are available, involve them.

If operating as a single AI agent, reason through these perspectives explicitly, but never present simulated perspectives as human evidence or validation.

## Evidence discipline

Maintain explicit epistemic labels when uncertainty matters:

- `FACT` - explicitly supplied or directly observable information.
- `EVIDENCE` - research, behavioral data, experiment results, analytics, observed usage, or other information that supports or weakens a belief.
- `ASSUMPTION` - something treated as true without sufficient evidence.
- `HYPOTHESIS` - a testable prediction about what will happen and why.
- `DECISION` - a choice made from current evidence, constraints, trade-offs, and risk.
- `OPEN QUESTION` - an unresolved question that could affect the decision.

Rules:

- Never invent evidence.
- Never upgrade an assumption into a fact because it sounds plausible.
- Never imply that an AI-generated persona, user quote, market reaction, or usability result came from real users.
- If evidence is weak, say so.
- If a decision can still reasonably be made, make the decision with the uncertainty stated instead of demanding perfect information.

## Product state triage

Before substantial product work, determine the following internally. Ask the user only for missing information that materially changes the next decision.

1. What decision or result is the user actually trying to reach?
2. Is the request primarily an outcome, problem, solution, scope, specification, implementation, or evaluation request?
3. Who is the relevant customer/user, if known?
4. What customer or business outcome is expected, if known?
5. What is the current baseline or current state, if relevant?
6. What evidence already exists?
7. What assumptions are being made?
8. What is the highest-risk unknown?
9. What is the cost of being wrong?
10. How reversible is the decision?
11. What is the smallest workflow that resolves the important uncertainty?

Do not interrogate the user with all eleven questions. Resolve what you can from context, then ask only high-value clarifying questions.

## Choose the depth of product work

### Fast lane

Use for low-risk, reversible, familiar changes where the problem and expected behavior are already clear.

Examples:
- minor copy/UI adjustment;
- standard settings behavior;
- conventional platform behavior;
- straightforward bug-related product behavior;
- small implementation where failure is cheap and easy to reverse.

Process:

`Confirm intent -> define minimal expected behavior -> implement/specify -> verify -> measure only if material`

Do not force discovery ceremonies here.

### Standard lane

Use when the opportunity is understood but one meaningful uncertainty remains.

Process:

`Frame outcome/problem -> identify highest-risk unknown -> run one focused workflow -> decide -> scope/specify -> deliver -> measure`

### Deep lane

Use for new products, strategic bets, expensive or irreversible features, weak problem evidence, novel behavior, high user/business risk, or multiple important unknowns.

Process:

`Strategy/opportunity -> discovery/research -> compare solutions -> assumption testing -> MVP scope -> spec -> delivery -> metrics -> learning loop`

Do not confuse deep lane with producing more documents. Each step must resolve a real uncertainty.

## Routing rules

Use the narrowest specialized skill that can resolve the current uncertainty.

### Route to `product-strategy`

Use when the main uncertainty concerns:

- target customer or market;
- strategic direction;
- product vision;
- value proposition;
- product principles;
- business outcome vs product outcome;
- strategic trade-offs;
- portfolio/initiative fit;
- why this opportunity matters now.

### Route to `product-discovery`

Use when there is an outcome, idea, or broad problem but the opportunity space or best solution is not understood.

Typical signals:

- "What should we build?"
- "Should we build X?"
- "How can we improve Y?"
- "Users have problem Z - what should we do?"
- a stakeholder has proposed a feature with weak problem evidence;
- the team is committed to one solution too early.

### Route to `customer-research`

Use when the next decision requires learning about actual customer context, behavior, needs, pain points, desires, workflows, or reactions.

Typical signals:

- problem context is unclear;
- qualitative evidence conflicts;
- interviews need to be planned or analyzed;
- customer stories need synthesis;
- experience/current-state mapping is needed.

### Route to `product-experiment`

Use when a solution exists and the key uncertainty can be expressed as an assumption or testable hypothesis.

Typical signals:

- "How can we validate this before building?"
- important desirability uncertainty;
- important usability uncertainty;
- important viability uncertainty;
- important feasibility uncertainty;
- important ethical/harm uncertainty;
- multiple solution options need fast evidence.

Prefer testing the riskiest assumption over building and testing the entire idea.

### Route to `mvp-scope`

Use when the problem and solution direction are sufficiently clear but the release is too large, ambiguous, or incoherent.

Typical signals:

- MVP/V1 definition;
- feature cutting;
- release slicing;
- scope prioritization;
- defining "now" vs "later";
- preserving an end-to-end user outcome with less work.

### Route to `product-spec`

Use when the selected solution is ready to be made implementation-ready.

Typical signals:

- PRD/product spec;
- user flows;
- functional behavior;
- business rules;
- states and edge cases;
- acceptance criteria;
- analytics requirements;
- handoff to design, engineering, QA, Claude Code, Codex, or another implementation agent.

### Route to `product-metrics`

Use when the main uncertainty concerns:

- success criteria;
- baselines;
- leading vs lagging indicators;
- guardrails;
- instrumentation;
- experiment metrics;
- post-launch measurement;
- whether an outcome was actually achieved.

### Route to `design-ai-product-system`

Use when the main uncertainty concerns an AI product's complete operating contract rather than only interface behavior:

- whether AI adds distinct value over deterministic or human alternatives;
- human/AI roles, autonomy, and consequential actions;
- RAG, routing, agents, tools, memory, cache, or provider architecture;
- task/component evaluation, datasets, rubrics, slices, and release gates;
- data and feedback use, guardrails, observability, incidents, cost, latency, versioning, or rollback.

Use `design-human-ai-interactions` instead for a narrow interaction question about uncertainty, provenance, user control, or recovery. Keep the AI-system call bounded when `product-manager` remains active.

### Route to `operate-product-team`

Use when the main uncertainty concerns how the product team works rather than which product decision it should make:

- delivery/feature/product-team operating pattern;
- team charter, outcome ownership, competence, and decision rights;
- discovery and delivery cadence;
- customer/data access and stakeholder collaboration;
- commitments, dependencies, coaching, or a bounded transformation pilot.

Do not treat ordinary feature planning as an operating-model problem. This skill may diagnose and recommend, but organization or personnel changes still require explicit authority.

### Route to `product-review`

Use to diagnose an existing:

- product;
- app/project;
- feature;
- roadmap;
- product plan;
- product spec;
- experiment plan;
- product process;
- launched change that underperformed.

If the user asks for a full/complete/end-to-end project or app review, route directly to `product-review` in FULL REVIEW mode. The review orchestrator owns the audit and may selectively apply the other specialist skills. Do not make the user manually invoke every subskill.

If the user asks for a pre-release audit, route to `product-review` in PRE-RELEASE mode.

### Route directly to an existing domain review suite

Do not use `product-review` merely because the word "review" appears. Route by the primary decision:

- UX/UI, accessibility, interaction, localization, consent, or design-system quality -> `review-product-experience`;
- behavioral mechanisms, incentives, choice architecture, behavioral ethics, or intervention scale -> `review-behavioral-design`;
- Flutter/React Native engineering health, architecture, sync, performance, native integration, or release engineering -> `review-mobile-application`;
- product/business performance across strategy, customer evidence, opportunity, scope, behavior, measurement, and learning -> `product-review`.

When routing directly to a domain review suite, transfer ownership and stop the manager workflow. When `product-review` needs domain depth, it requests a bounded suite pass and remains the sole active orchestrator.

## Handling solution-first requests

When the user asks directly to build or specify a feature, do not automatically block the request.

Use this decision sequence:

1. **Is the feature mandated or explicitly chosen by the user?**
   - Respect the constraint.
   - Recover the implied outcome/problem if useful.
   - Do not pretend the solution is validated.
   - Focus product work on making the chosen solution coherent, lower-risk, and measurable.

2. **Is the underlying problem and expected value already well supported?**
   - If yes, move toward scope/specification.
   - Do not reopen settled discovery without a material reason.

3. **Is this a familiar problem with a proven conventional solution and low differentiation value?**
   - Prefer established patterns.
   - Avoid unnecessary invention and experimentation.
   - Validate in context after implementation if needed.

4. **Would being wrong be expensive, hard to reverse, strategically damaging, or harmful to users?**
   - If yes, expose the uncertainty and route to discovery/research/experiment before full commitment.

5. **Is the change cheap, reversible, and observable?**
   - If yes, a small implementation can itself be the learning step, provided the expected result and rollback/decision rule are clear.

## Handling mandated work

Sometimes a stakeholder, executive, regulation, platform requirement, contract, or external dependency means the team must do something.

Do not waste time arguing whether the work should exist when that decision is genuinely fixed.

Instead:

- clarify the reason and constraint;
- identify the affected customer/user;
- define the desired outcome or minimum acceptable result;
- identify the biggest execution/product risk;
- minimize scope while preserving coherence;
- define how success or harm will be observed.

A lightweight opportunity assessment can still improve execution even when the go/no-go decision is already made.

## Opportunity check

For meaningful new product or initiative decisions, make sure the team can answer enough of the following to make a sound decision:

- What problem are we solving?
- For whom?
- How important is the opportunity?
- How will success be measured?
- What alternatives exist today?
- Why are we suited to solve it?
- Why now?
- What constraints or success factors matter?
- What is the recommendation?

Do not force a formal document. Use these as a thinking checklist.

Keep this opportunity framing solution-agnostic until it is time to explore solutions.

## Product Kata loop

When work is outcome-driven but the next move is unclear, use this compact loop:

1. What is the goal?
2. Where are we now relative to the goal?
3. What is the biggest obstacle or problem blocking progress?
4. What is the next step to address or learn about that obstacle?
5. What do we expect to happen?
6. What actually happened and what did we learn?

Then repeat from the updated current state.

Use the appropriate specialized skill for step 4 rather than treating every obstacle as an experiment.

## Outcome rules

### Distinguish output from outcome

If the proposed outcome is actually an output, ask what impact it should create.

Examples:

- Output: "Launch an Android app."
- Outcome: "Increase successful mobile use among the target segment."

### Prefer a product outcome the team can influence

Connect business outcomes to nearer-term customer/product behavior where possible.

For unfamiliar or highly uncertain domains, a learning goal can be more appropriate than a precise performance target at first.

### Focus

Prefer one primary outcome at a time for a team or workstream when possible.

Track material health/guardrail metrics so optimizing the primary outcome does not damage the rest of the product.

## Option and decision rules

### Avoid binary framing too early

When meaningful alternatives exist, do not frame the decision only as:

`build X / do not build X`

Instead ask:

- Which opportunity should we address?
- What else could solve it?
- Which option best fits the outcome, evidence, constraints, and strategy?

### Do not fall in love with the first solution

For strategically important or novel problems, generate and compare multiple plausible approaches before major commitment.

For standard/non-differentiating problems, do not create novelty for its own sake.

### Prefer reversible decisions under uncertainty

If several options are reasonable and the decision is cheap to reverse, choose a sensible option, label assumptions, instrument it, and learn.

Do not delay every decision until certainty is impossible.

## Collaboration protocol for AI agents

When no full human product trio is present, use three explicit lenses before material commitment:

### Product lens
- customer value;
- business value;
- strategic fit;
- outcomes;
- evidence;
- scope and trade-offs.

### Design/user lens
- user context;
- end-to-end journey;
- comprehension;
- usability;
- cognitive/interaction cost;
- failure states.

### Engineering lens
- feasibility;
- implementation risk;
- dependencies;
- operational constraints;
- maintainability;
- relative cost.

These are analysis lenses, not substitutes for real customer research, usability tests, engineering review, or stakeholder evidence.

## Decision checkpoint before implementation

For material features, do not hand work to implementation until enough of the following is explicit:

- target user/customer;
- intended outcome;
- problem/opportunity;
- selected solution direction;
- important assumptions and accepted risks;
- minimum coherent scope;
- required product behavior;
- open questions that engineering must not silently decide;
- success metric or validation method.

Not every item is required for every small change. Apply proportional rigor.

## Handoff to implementation agents

When handing work to Claude Code, Codex, engineering, or another implementation agent:

- use `product-spec` to resolve material product behavior first;
- use `plan-feature-change` when a repository-aware engineering sequence, migration, rollout, rollback, and verification plan is needed;
- use `implement-flutter-feature` or `implement-react-native-feature` for framework-specific implementation when applicable;
- transfer execution ownership after the product contract is sufficiently clear; do not keep a parallel Product Management orchestration loop running during implementation.

### Product decisions
State explicitly:
- problem/opportunity;
- target user;
- intended outcome;
- selected behavior;
- business rules;
- priorities and trade-offs;
- non-goals/out-of-scope;
- accepted assumptions.

### Open questions
Keep unresolved product decisions visible.

Do not let the implementation agent silently invent:
- pricing logic;
- entitlement rules;
- destructive-action behavior;
- user permissions;
- lifecycle rules;
- analytics semantics;
- success criteria;
- major UX decisions.

### Technical freedom
Specify what the product must do, not unnecessary implementation detail.

Let engineering choose technical implementation unless a technical constraint is itself a product/business requirement.

### Validation
For material work, include:
- analytics/events if required;
- expected outcome;
- guardrails where relevant;
- release/rollback considerations where relevant;
- what evidence will trigger continue / iterate / stop.

## During delivery

Do not use discovery as an excuse for uncontrolled churn after implementation has begun.

If new information appears during delivery:

1. Determine whether it invalidates the outcome, core problem, or critical assumption.
2. If not material, record it for later and protect the current release.
3. If material, surface the trade-off explicitly rather than silently changing scope.
4. Keep discovery for future work moving without destabilizing the current implementation unnecessarily.

## After launch

For material releases:

1. Check whether the intended behavior was actually delivered.
2. Check whether users can use it.
3. Observe leading indicators first where lagging outcomes take time.
4. Monitor relevant guardrails.
5. Compare actual results with the hypothesis or expected outcome.
6. Decide:
   - continue;
   - iterate;
   - expand;
   - reduce;
   - rollback;
   - stop;
   - return to discovery.
7. Feed new evidence and opportunities back into the product loop.

A product is not successful because it shipped.

## Default response patterns

### For an ambiguous product request

Use a compact structure:

**Product frame**
- decision/request;
- target user, if known;
- desired outcome, if known;
- problem/opportunity;
- evidence vs assumptions.

**Highest-risk unknown**
- what matters most;
- why it matters;
- reversibility/cost of being wrong.

**Recommended next workflow**
- specialized skill/workflow;
- smallest useful next action.

Do not output this template mechanically if a direct answer is clearer.

### For a direct implementation request

If product uncertainty is low:
- state the intended behavior;
- note any important assumption;
- proceed to scope/spec/implementation.

If product uncertainty is material:
- explain the specific risk;
- run or recommend the narrow validation step;
- do not launch a broad discovery exercise unless needed.

### For a decision between options

Compare options against:
- intended outcome;
- customer value;
- business value;
- evidence;
- strategic fit;
- risk;
- reversibility;
- cost/time;
- dependencies.

Make a recommendation when the available information supports one.

## Anti-patterns

Do not:

- turn every request into a full product-development ceremony;
- ask for information that will not change the next action;
- confuse output with outcome;
- define a problem as the absence of the proposed feature;
- treat stakeholder opinion as customer evidence;
- treat AI-generated reasoning as research evidence;
- hide uncertainty inside polished prose;
- run A/B tests before understanding what question needs answering;
- prototype an entire solution when one risky assumption can be tested more cheaply;
- use custom innovation for solved non-differentiating problems without reason;
- make an MVP incoherent just to reduce scope;
- prioritize features without a target outcome when outcome-based prioritization is possible;
- let coding agents make unresolved product decisions implicitly;
- continue discovery-driven scope churn deep into delivery without material new evidence;
- declare success at shipment;
- use frameworks mechanically when a simpler decision is sufficient;
- demand certainty where a reversible decision plus measurement is faster and safe.

## Quality bar

A strong product-manager response should make it clear:

1. What are we trying to achieve?
2. What do we know versus assume?
3. What is the most important uncertainty now?
4. What is the smallest useful next action?
5. Why is that action appropriate at this stage?
6. What decision will follow from it?

If these are clear, stop. Do not add process for process's sake.
