---
name: product-discovery
description: Discover which customer opportunity to pursue and which solution direction is worth increasing commitment to. Use when a product outcome, customer problem, improvement area, stakeholder request, or feature idea exists but the opportunity space, causal mechanism, or best solution is uncertain. Map current customer behavior, structure and prioritize opportunities, generate multiple solution options, surface risky assumptions, gather the minimum credible evidence, and decide whether to pursue, iterate, defer, revisit the opportunity, revise the outcome, or stop. Do not use as mandatory ceremony for obvious, low-risk, already-understood work.
---

# Product Discovery

## Mission

Reduce the risk of building the wrong thing while preserving speed.

Discovery is the work of deciding what is worth building and why. It is not a preliminary requirements-writing phase, a brainstorming session, or a promise that a proposed feature will be validated.

Use discovery to connect:

`Desired outcome -> Current customer reality -> Opportunity space -> Target opportunity -> Solution set -> Assumptions -> Evidence -> Direction -> Impact`

This path is iterative. New evidence may require moving backward to a previous decision.

Optimize for:

- customer value;
- business value;
- speed of learning;
- decision quality;
- low cost of being wrong;
- explicit uncertainty;
- multiple viable options before commitment;
- reversible decisions where possible.

Do not optimize for artifact volume or for proving the user's first idea correct.

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

## Core principles

### 1. Discovery starts from an outcome, not from a favorite feature

A solution can be a valid entry point, but it is not automatically the problem.

If the request starts with a solution, recover the logic behind it:

`Solution -> expected customer behavior/value -> customer opportunity -> product outcome -> business outcome`

Bad framing:

`Users need an AI coach.`

Better framing:

`Users repeatedly abandon the workflow when they are unsure what to do next, and the current help content does not resolve that uncertainty.`

Do not reject a feature-led request merely because it is solution-shaped. Use it as a hypothesis and decide whether the uncertainty is important enough to explore.

### 2. Keep problem exploration and solution exploration distinct

Problem exploration asks:

- What is happening in the customer's context?
- What are they trying to accomplish?
- What gets in the way?
- What do they do today?
- Which need, pain, desire, or barrier is worth addressing?

Solution exploration asks:

- What are materially different ways to address the selected opportunity?
- What must be true for each solution to work?
- Which direction deserves more investment?

Do not use prototype testing to compensate for not understanding the problem.

### 3. Observe behavior, not just stated preference

When learning from customers, prefer evidence about specific past or present behavior over abstract statements about what people say they want.

Do not ask customers to design the product for you.

Customer requests such as "add a button" or "build a dashboard" are clues. Ask what they are trying to accomplish, what happens today, why the request matters, and what trade-off they are making.

### 4. Externalize what is known before filling gaps with AI guesses

Use maps, timelines, tables, or explicit models to show current understanding.

Treat these models as hypotheses, not truth.

If the agent is operating without real customer research, analytics, support data, sales evidence, or observed usage, say so. A plausible AI-generated journey is not customer evidence.

### 5. Compare and contrast instead of asking yes/no

Avoid binary framing such as:

`Should we build X?`

Prefer:

`Which opportunity is most worth addressing next?`

and then:

`Which of several materially different solution directions best addresses that opportunity?`

Compare-and-contrast reduces confirmation bias and exposes opportunity cost.

### 6. Prioritize opportunities before solutions

Product strategy lives primarily in the choice of:

- outcome;
- customer;
- opportunity;
- constraints.

Do not spend most of discovery ranking feature backlogs before deciding which customer opportunity matters.

### 7. Generate enough solution diversity to escape the first idea

The first solution is often merely the easiest to recall.

For strategically important, differentiated, or high-uncertainty opportunities, deliberately generate a broad set of ideas before converging. Diversity matters more than cosmetic variations.

For standard, solved, non-differentiating problems, reuse established patterns rather than inventing novelty for its own sake.

### 8. Test assumptions, not entire ideas, when that is cheaper

A solution is a bundle of assumptions.

Surface the assumptions that must be true, identify the riskiest ones, and gather the smallest credible evidence that materially changes confidence.

Do not build three production solutions merely to learn which one might work.

### 9. Discovery decisions are usually reversible

Choosing a target opportunity or a candidate solution usually commits the team to the next learning cycle, not to a permanent roadmap.

For reversible decisions, move with imperfect but sufficient evidence.

For expensive, irreversible, safety-sensitive, regulatory, or strategically consequential decisions, increase rigor.

### 10. Discovery and delivery inform each other

Discovery is continuous, not a stage that ends forever before delivery.

Production implementation can become a learning mechanism when cheaper simulations are no longer sufficient or when the implementation itself is small and reversible.

Instrument material delivery so real usage can feed the next discovery cycle.

## Evidence discipline

Use explicit epistemic labels when uncertainty matters:

- `FACT` - explicitly supplied or directly observable information.
- `EVIDENCE` - customer stories, observed behavior, analytics, support data, market evidence, experiments, usability results, or other information that changes confidence.
- `ASSUMPTION` - something currently treated as true without sufficient evidence.
- `HYPOTHESIS` - a testable prediction about what will happen and why.
- `DECISION` - a choice made from current evidence, constraints, trade-offs, and risk.
- `OPEN QUESTION` - an unresolved question that could materially change the decision.

Rules:

- Never invent customer quotes, behavioral evidence, experiment results, market size, frequencies, satisfaction scores, or conversion impact.
- Never convert founder intuition, stakeholder preference, or AI reasoning into evidence.
- Distinguish evidence that an opportunity exists from evidence that a specific solution will solve it.
- Distinguish evidence that a solution is usable from evidence that it is desirable.
- Distinguish a leading signal from proof that the desired outcome will move.
- When evidence conflicts, preserve the conflict and identify what would resolve it.

## Discovery state triage

Before running a large workflow, determine the current state internally.

1. What decision is the user trying to make?
2. What desired outcome or learning goal is relevant?
3. Is the customer/problem space understood?
4. Is there evidence that the opportunity is real and material?
5. Is one opportunity already selected?
6. Is the team fixated on one solution?
7. Are there multiple credible solution directions?
8. What assumptions carry the most risk?
9. What evidence already exists?
10. What is the cost of being wrong?
11. How reversible is the next decision?
12. What is the smallest next learning action that could change the decision?

Do not ask the user all twelve questions. Resolve what you can from context and ask only questions whose answers materially change the workflow.

## Choose discovery depth

### Fast discovery

Use when the decision is cheap, reversible, familiar, and low-risk, but one small uncertainty remains.

Typical process:

`Clarify outcome -> expose key assumption -> compare obvious options -> decide -> measure if material`

Examples:

- choosing between two reversible UX patterns;
- small copy or placement changes where the problem is clear;
- a standard workflow with minor contextual uncertainty.

Do not create an opportunity tree or research plan simply because the skill was invoked.

### Standard discovery

Use when the desired outcome is known and the opportunity is plausible, but the best opportunity or solution is not yet clear.

Typical process:

`Outcome -> current experience -> opportunities -> target opportunity -> solution set -> risky assumptions -> focused evidence -> decision`

### Deep discovery

Use for new products, strategic bets, expensive or difficult-to-reverse solutions, novel customer behavior, weak problem evidence, major platform changes, high trust/safety risk, or multiple consequential unknowns.

Typical process:

`Strategy context -> learning goal/outcome -> customer evidence -> experience map -> opportunity structure -> target opportunity -> broad ideation -> multiple finalists -> assumptions -> tests -> outcome evidence -> decision`

Deep discovery means resolving important uncertainty, not producing more documents.

## Main workflow

### 1. Anchor on a desired outcome or learning goal

Clarify only what is needed to guide discovery:

- target customer/user;
- relevant business outcome;
- product outcome or learning goal;
- current baseline if known;
- strategic constraints;
- time horizon;
- material guardrails.

If the supplied outcome is actually an output, reframe it.

Bad:

`Launch social sharing.`

Better shape:

`Increase the number of users who successfully bring another relevant user into the product.`

If the team does not yet understand what behavior drives the business result, use a learning goal rather than inventing a precise performance target.

Do not allow discovery to become an endless search disconnected from an outcome.

### 2. Set the scope of the customer experience to understand

Define the slice of customer reality relevant to the outcome.

The scope should be broad enough to include alternatives and real-world context, but narrow enough to support a decision.

Examples:

Too narrow:

`How does the customer use our recommendation screen?`

Potentially better:

`How does the customer decide what to choose when several options seem viable?`

Too broad:

`How does this person live their life?`

Use the desired outcome to constrain the scope.

### 3. Externalize current understanding with an experience map

Map how the customer currently tries to make progress before designing the future solution.

Capture, when relevant:

- key moments or actions over time;
- current alternatives and workarounds;
- decisions and triggers;
- obstacles and failure points;
- loops, retries, abandonment, and handoffs;
- emotions or uncertainty only when supported by evidence or clearly labeled as assumptions;
- known positive moments;
- existing evidence;
- assumptions;
- open questions.

Do not create a screen-by-screen map of the current product unless the actual customer experience is equivalent to that flow.

For collaborative work, generate perspectives independently before synthesis when possible to reduce groupthink.

If one AI agent is simulating product/design/engineering perspectives, keep those perspectives separate during first-pass reasoning, then synthesize them. Do not call simulated diversity human evidence.

The map is a living model. Update it when interviews, analytics, experiments, or delivery reveal something new.

### 4. Gather or route for customer evidence when the problem is unclear

Use `customer-research` when the next decision depends on real customer context, behavior, or needs.

For generative problem research:

- focus on specific recent stories;
- ask about what happened, not what the participant imagines they might do;
- investigate actual alternatives and workarounds;
- look for root causes and context;
- separate research questions from interview questions;
- widen or narrow story scope based on the decision.

Do not ask:

`Would you use feature X?`

Prefer:

`Tell me about the last time you encountered this situation.`

Do not confuse generative research with usability/evaluative testing.

If direct customer access is unavailable, use the strongest available substitutes such as:

- support conversations;
- sales or account-manager notes;
- behavioral analytics;
- search/query logs;
- reviews;
- win/loss evidence;
- operational observations;
- existing research.

State the limitation. Indirect evidence is not equivalent to observing target users directly.

### 5. Extract opportunities from customer reality

Represent opportunities as customer:

- needs;
- pain points;
- desires;
- barriers;
- desired progress;
- unresolved questions;
- moments where current alternatives fail.

An opportunity should usually be understandable without naming your proposed solution.

Bad:

`Customers need a chatbot.`

Better:

`Customers cannot get an answer quickly enough when they are blocked during setup.`

Bad:

`The interface is hard to use.`

Better:

`Customers cannot find where to resume an unfinished setup.`

Use specificity. Broad opportunities are often parents that need decomposition.

When possible, require repeated evidence before treating an opportunity as broadly relevant. A unique anecdote may still matter, especially in high-severity contexts, but label it accordingly.

### 6. Structure the opportunity space

Use an Opportunity Solution Tree or equivalent hierarchy when the opportunity space is complex enough to benefit from structure.

Basic form:

```text
Desired outcome
|
+-- Opportunity A
|   +-- Sub-opportunity A1
|   `-- Sub-opportunity A2
|
+-- Opportunity B
|   +-- Sub-opportunity B1
|   `-- Sub-opportunity B2
|
`-- Opportunity C
```

Guidelines:

- top-level branches should represent distinct moments or need areas;
- child opportunities should meaningfully contribute to the parent;
- avoid overlapping siblings when possible;
- split broad opportunities into smaller, independently addressable sub-opportunities;
- do not add every interview comment to the tree;
- add opportunities that are customer-framed, recur or are materially important, and plausibly connect to the desired outcome;
- use just enough structure to support the next decision.

The tree is not a taxonomy project. Stop when it is detailed enough to choose what to explore next.

### 7. Prioritize opportunities through relative comparison

Focus on one target opportunity at a time when possible.

Compare sibling opportunities using multiple lenses:

#### Opportunity sizing

- how many relevant customers are affected;
- how often the need occurs;
- how large the affected moment is.

Use rough relative sizing when exact numbers are not available.

#### Customer factors

- importance/severity;
- current satisfaction with alternatives;
- evidence strength;
- cost/friction of the current workaround;
- whether the need blocks higher-level progress.

#### Market factors

- table stakes;
- differentiation potential;
- switching dynamics;
- external trends;
- changing expectations.

#### Company/team factors

- strategic fit;
- business value;
- strengths or unfair advantages;
- capabilities;
- constraints;
- organizational willingness/capacity;
- cost of delay when material.

Do not turn this into false precision by default.

Avoid a weighted scoring formula when the inputs are mostly guesses. Make a data-informed, explicitly subjective comparison.

Use the tree to reduce decision load: compare top-level siblings, choose a branch, then compare its children. When practical, choose a leaf-level target opportunity so the team can create value iteratively.

Treat the choice as reversible. Time-box analysis and move when more information is unlikely to change the decision enough to justify the delay.

### 8. Decide whether the opportunity needs a novel solution

Before broad ideation, ask:

- Is this problem core to the product's differentiation or value proposition?
- Is the solution genuinely uncertain?
- Are established patterns already known to work in this context?
- Is innovation here worth the learning cost?

For non-differentiating solved problems, use strong existing patterns and validate fit in context.

For strategic or poorly solved opportunities, generate a broader solution set.

### 9. Generate multiple materially different solution options

For important solution exploration, keep the loop open long enough to get past the first idea.

Recommended process:

1. Re-state the target opportunity and context.
2. Generate ideas independently before group synthesis when possible.
3. Draw inspiration from:
   - direct competitors;
   - analogous products in unrelated industries;
   - manual/service approaches;
   - extreme users;
   - operational/process changes;
   - non-software solutions;
   - intentionally wild ideas that may improve feasible ideas.
4. Share ideas and use them to trigger another round of individual ideation.
5. Converge on a small, diverse consideration set.

For strategically important differentiated problems, a large initial set is often useful. Aim for breadth rather than obeying an arbitrary count. If useful, generate roughly 10-20 raw ideas before reducing them.

For ordinary familiar problems, do not force 20 ideas.

When converging, ask first:

`Does this idea actually address the target opportunity?`

Remove shiny ideas that do not.

Prefer 2-3 materially different finalists over three minor variants of one concept.

Do not choose a final winner merely through voting or taste. Voting can reduce a large idea set, but evidence should drive final convergence.

### 10. Make each finalist concrete enough to expose assumptions

A vague idea hides risk.

Use a lightweight future-state story map or interaction narrative to clarify how the solution is expected to create value.

Map:

- actors;
- trigger/context;
- actions over time;
- system responses;
- moments where value is created;
- dependencies;
- handoffs;
- failure points.

Assume the solution exists. Map how users obtain value, not how engineering will implement it.

This is not yet a full product specification or MVP scope exercise. The goal is to make assumptions visible.

### 11. Surface hidden assumptions

For each finalist, identify assumptions across at least these categories when relevant:

#### Desirability

- Do customers want the outcome from this solution?
- Will they choose it over current alternatives?
- Will they trust it?
- Will they perform the behavior the solution requires?

#### Viability

- Does it create enough business value?
- Does the economic model work?
- Will it support the relevant business outcome?
- Are operating/servicing costs acceptable?

#### Feasibility

- Can it be built and operated with available technology, time, people, data, legal/security constraints, and organizational capabilities?

#### Usability

- Can customers discover, understand, and successfully use it?
- Is it accessible?

#### Ethical / harm

- What data is collected and how is it used?
- Could the solution create manipulation, exclusion, unsafe behavior, privacy problems, dependency, abuse, or harm to users/third parties?
- Would the product team be comfortable if these choices were fully transparent?

Use multiple assumption-surfacing methods when needed:

- future-state story map;
- pre-mortem: assume the solution failed and explain why;
- walk the causal chain backward;
- ask what must be true at each link:

`Solution -> target opportunity -> product outcome -> business outcome`

Every causal inference can contain an assumption.

Phrase assumptions as testable conditions that need to be true.

Bad:

`Users won't understand it.`

Better:

`Target users can identify which option applies to their situation without assistance.`

Be specific enough that evidence could meaningfully support or weaken the assumption.

### 12. Prioritize the riskiest assumptions

Do not test every assumption.

Compare assumptions on two dimensions:

- **importance** - how damaging would it be to the solution if false?
- **evidence** - how much credible support already exists?

Prioritize assumptions that are:

`high importance + weak evidence`

Use relative judgment, not fake precision.

Also account for:

- severity of potential harm;
- cost of discovering the truth late;
- irreversibility;
- shared assumptions across multiple solution candidates.

A shared assumption can be especially valuable to test because one test may update confidence in several ideas.

### 13. Choose the smallest credible next learning action

Route detailed experiment design to `product-experiment` when useful.

The discovery-level rule is:

`Assumption -> simulate the relevant moment -> observe behavior/data -> compare with pre-defined evaluation criteria -> update confidence`

Prefer evidence about behavior over stated future intent.

Define what success/failure would mean before seeing the result to reduce confirmation bias.

Start with early signals before large-scale experiments when the decision allows it.

Increase test size, realism, or implementation commitment only when prior evidence justifies more investment.

Possible learning actions include:

- customer interview / observation;
- existing-data analysis;
- prototype interaction;
- technical spike;
- one-question behavioral survey;
- fake-door/smoke test;
- concept test;
- concierge service;
- Wizard of Oz;
- live prototype;
- limited production rollout;
- A/B test when the solution direction is sufficiently understood and traffic supports it.

Do not use A/B testing as a substitute for understanding a poorly framed problem.

Do not seek scientific certainty. Gather enough evidence to reduce risk below the level the organization can reasonably bear.

### 14. Evaluate impact, not just experiment success

A successful assumption test does not prove the product outcome will move.

Keep the causal chain visible:

`Solution behavior -> opportunity addressed -> product outcome -> business outcome`

Measure both:

- what is needed to evaluate the immediate assumption;
- what is needed to determine whether the chosen direction actually moves the desired outcome.

When a prototype or production slice improves a local metric but not the desired outcome, revisit the causal assumption.

Do not let a traction metric become the end goal merely because it is easier to measure.

### 15. Make an explicit discovery decision

End each discovery cycle with a decision. Valid decisions include:

#### Pursue

Evidence is sufficient to increase commitment to one solution direction.

Next route may be:

- `product-experiment` for remaining risky assumptions;
- `mvp-scope` to define the smallest coherent solution;
- `product-spec` if scope and behavior are already sufficiently clear.

#### Iterate the solution

The opportunity remains attractive, but evidence exposed a design or assumption flaw that can be worked around.

#### Compare further

No solution is a clear front runner and one focused test could materially change the decision.

#### Revisit the opportunity

Solution tests reveal that the customer does not want help with the selected opportunity, the opportunity is less important than believed, or it cannot currently be addressed effectively.

Return to the opportunity space rather than endlessly iterating a weak direction.

#### Defer to later

The opportunity is real and valuable, but the required solution is too expensive, dependent on future capability, or poorly timed for now.

Preserve the learning and state what would make it timely later.

#### Revise the outcome

Evidence suggests the chosen product outcome is not a useful leading indicator of the business outcome or lies outside the team's influence.

Route to `product-strategy` or `product-metrics` as appropriate.

#### Stop / do not build

The opportunity, solution, or business case is not strong enough.

A decision not to build is a successful discovery result when it prevents low-value work.

## Managing discovery cycles

Discovery is not linear.

Loop backward when evidence changes the problem definition or causal model.

Examples:

- solution experiments reveal the target opportunity is not actually important -> return to opportunity prioritization;
- interviews uncover a deeper root problem -> update the experience map and opportunity tree;
- feasibility work kills a solution -> generate another solution while keeping the opportunity;
- all viable solutions fail on the same shared assumption -> revisit the opportunity;
- the solution drives the product outcome but not the business outcome -> revisit strategy/metrics;
- a hard opportunity cannot be solved now -> defer it and choose a more tractable current opportunity.

Celebrate course correction. The goal is not to preserve previous decisions.

## Discovery with existing products

For an existing product, start with observable behavior before collecting feature requests.

Use:

- funnel/drop-off data;
- retention/cohort patterns;
- support/contact drivers;
- search behavior;
- failed or repeated actions;
- NPS/CSAT comments as clues;
- sales win/loss evidence;
- qualitative observation.

Translate metric problems into customer questions.

Example:

`Checkout completion fell from X to Y`

becomes:

`What is preventing relevant customers from completing checkout, and which of those obstacles is most worth addressing?`

Do not assume that adding features is the primary way to improve a mature product.

## Discovery with AI coding agents

When discovery is used before Claude Code, Codex, or another implementation agent, maintain a hard boundary between product uncertainty and implementation.

Do not hand off a solution as implementation-ready while major questions remain about:

- who the target user is;
- what outcome is intended;
- what opportunity is being addressed;
- why this solution was selected;
- what behavior creates value;
- which assumptions are accepted vs unresolved;
- what risk remains.

A useful discovery handoff contains:

- desired outcome;
- target opportunity;
- evidence summary;
- selected solution direction or consideration set;
- rejected/deferred alternatives and why;
- key assumptions;
- remaining risks;
- next learning or scoping step.

Do not let the coding agent silently invent unresolved product behavior merely because it can implement something plausible.

## Handoff boundaries with other skills

### `product-strategy`

Use when uncertainty concerns target customer, strategic intent, value proposition, business/product outcomes, product principles, or whether the opportunity fits the product/company direction.

### `customer-research`

Use for interview planning, research questions, recruitment logic, interview synthesis, story extraction, experience mapping based on real research, or deeper understanding of customer behavior.

### `product-experiment`

Use after an important assumption is identified and the task is to design the learning method, treatment/simulation, audience/context, evidence threshold, and decision logic.

For a randomized online controlled experiment, let `product-experiment` own the assumption, treatment, exposure concept, and learning decision; use `product-metrics` for the experiment scorecard, metric definitions, randomization/analysis-unit implications, MDE/power, SRM/trust checks, statistical stopping, and result interpretation.

### `mvp-scope`

Use after a solution direction is sufficiently supported and the question becomes: What is the smallest coherent solution/release that can create the intended outcome or learning?

### `product-spec`

Use when product behavior is sufficiently decided and needs implementation-ready definition.

### `product-metrics`

Use when outcome definition, causal metrics, baselines, guardrails, instrumentation, or post-launch impact measurement is the main problem.

### `product-review`

Use when diagnosing an existing product broadly rather than exploring one specific opportunity.

## Anti-patterns

Do not:

- treat discovery as a fixed pre-development phase;
- start with a feature backlog and call feature ranking discovery;
- use the user's first solution as the only solution considered when uncertainty is material;
- phrase a missing feature as the customer problem;
- ask customers what the product team should build;
- rely on stated future intent when behavioral evidence is available;
- treat one anecdote as broad market truth without context;
- create fictional personas, quotes, frequencies, or experiment results;
- make an experience map look more certain than the underlying evidence;
- make the opportunity tree exhaustive for its own sake;
- prioritize opportunities with fake numerical precision;
- evaluate opportunities only on ease of implementation;
- copy a competitor feature without understanding the opportunity it addresses;
- brainstorm only in a group when independent ideation would surface more diversity;
- generate many cosmetic variations of one solution and call them multiple options;
- choose the flashiest idea instead of the one that addresses the target opportunity;
- test the whole idea when a risky assumption can be tested faster;
- test usability and infer desirability from it;
- test desirability and ignore viability, feasibility, usability, or harm;
- run A/B tests when the problem or solution direction is still fundamentally unclear;
- define success after seeing experiment results;
- keep testing forever in pursuit of certainty;
- keep iterating a solution after evidence says the opportunity should be revisited;
- treat a killed idea as a discovery failure;
- stop measuring after a local experiment passes;
- confuse a traction metric with the desired product/business outcome.

## Output contract

Scale the output to the user's decision. Do not emit every section when it adds no value.

For substantial discovery work, use this structure:

### Discovery frame

- Decision to make
- Target customer/user
- Business outcome
- Product outcome / learning goal
- Current baseline, if known
- Constraints / guardrails

### Evidence state

- FACTS
- EVIDENCE
- ASSUMPTIONS
- OPEN QUESTIONS

### Current customer reality

- Relevant experience/journey
- Current alternatives/workarounds
- Key friction or unmet progress

### Opportunity space

- Candidate opportunities
- Evidence for each
- Opportunity structure, if useful
- Selected target opportunity
- Why this opportunity now
- Confidence / uncertainty

### Solution space

- Candidate solution directions
- Why each addresses the target opportunity
- Diverse finalists
- Important trade-offs

### Assumption map

For each finalist:

- desirability assumptions;
- viability assumptions;
- feasibility assumptions;
- usability assumptions;
- ethical/harm assumptions;
- riskiest assumptions;
- existing evidence.

### Discovery decision

- DECISION
- Current best direction
- Alternatives rejected/deferred and why
- Biggest remaining risk
- Confidence level
- Smallest next learning action
- Next skill/workflow

## Quality gate

Before concluding substantial discovery work, check:

- Is there a meaningful desired outcome or learning goal?
- Is the target customer clear enough for this decision?
- Are problem and solution language separated?
- Is the current customer reality grounded in evidence or clearly labeled assumptions?
- Are opportunities customer-framed and specific enough to act on?
- Was opportunity choice made before solution commitment?
- Were alternatives compared rather than evaluated one-by-one in isolation?
- If innovation matters, are solution options genuinely diverse?
- Are the riskiest assumptions explicit?
- Were desirability, viability, feasibility, usability, and harm considered where relevant?
- Is the next evidence step smaller than building the full idea when possible?
- Is success defined before observing results?
- Does the decision preserve a path to measure the desired outcome?
- Is the team willing to revisit the opportunity or outcome if evidence changes?
- Is the next action proportionate to risk and reversibility?

If several answers are no, the discovery work is probably not ready for increased commitment.
