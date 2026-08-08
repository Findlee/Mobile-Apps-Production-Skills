---
name: product-experiment
description: Design the smallest credible product experiment that reduces a decision-relevant risk before unnecessary investment. Use to expose and prioritize assumptions, choose evidence methods, define success criteria before results, compare solution options, design concept/prototype/smoke/fake-door/concierge/Wizard-of-Oz/technical/A-B/live tests, interpret mixed evidence, and decide whether to continue, change, defer, or stop. Do not use experimentation as ceremony when the problem is still unknown or when both problem and solution are already sufficiently understood.
---

# Product Experiment

## Mission

Reduce the risk of product decisions through fast, decision-useful learning.

An experiment is not a performance ritual, a way to make a roadmap look scientific, or a mechanism for proving a favorite idea.

Use experiments to replace important uncertainty with better evidence before making a larger commitment.

The core loop is:

`Decision -> Assumptions -> Riskiest assumption -> Smallest credible test -> Evidence -> Updated risk -> Decision`

Optimize for:

- learning that can change a real decision;
- testing assumptions rather than entire polished ideas;
- observed behavior in a relevant context when possible;
- the smallest simulation that can produce actionable evidence;
- explicit criteria before results are seen;
- progressive investment as evidence strengthens;
- disconfirming evidence as useful progress;
- enough rigor for the cost of being wrong;
- explicit limits, customer expectations, and experiment closure;
- preserving the distinction between learning software and production software.

Do not optimize for:

- experiment count;
- statistical sophistication when an early signal would answer the current question;
- maximum fidelity;
- proving certainty;
- making a favored idea pass;
- testing every assumption;
- shipping a low-quality "MVP" merely because it is small.

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

## First question: should this be an experiment at all?

Before designing a test, identify the current product phase and uncertainty.

### Route to `customer-research` when the problem is not understood

If the team does not yet understand:

- what customers are trying to accomplish;
- what actually happens today;
- the root problem;
- the relevant context;
- the importance of the need;

then do not begin by testing a proposed solution.

Use generative research first.

A polished prototype does not compensate for weak problem understanding.

### Implement and measure when the problem and solution are already clear

Do not manufacture an experiment when:

- the problem is established;
- the solution pattern is well understood;
- the implementation is low-risk;
- the decision is easy to reverse;
- the cost of testing separately is similar to or greater than the cost of implementing;
- there is no meaningful uncertainty that a pre-build test can reduce.

Example:

A known button is missing because of a defect, users cannot complete the intended action, the fix is small, and the expected product behavior is unambiguous.

In that case:

`Fix -> instrument -> observe impact`

not:

`invent an A/B test to prove the button should exist`

### Experiment when uncertainty is material

Experiment when one or more important assumptions are both:

- consequential if wrong; and
- weakly supported by current evidence.

The more expensive, irreversible, novel, trust-sensitive, safety-sensitive, operationally complex, or strategically important the decision, the more valuable pre-commitment learning becomes.

## Core principles

### 1. Start with the decision, not the method

Before choosing a prototype, A/B test, fake door, or survey, state:

1. What decision are we trying to make?
2. What would we do if the evidence is supportive?
3. What would we do if the evidence is disconfirming?
4. What would we do if the evidence is mixed?

If no plausible result would change the decision, the proposed experiment is not decision-useful.

Bad:

`Let's run a prototype test for the AI coach.`

Better:

`We need to decide whether to invest in automated coaching. The current blocking uncertainty is whether target users will repeatedly act on coaching suggestions in the intended context.`

### 2. State the learning target precisely

Do not test a vague idea such as:

`Users will like this.`

Prefer an explicit assumption:

`Users who have just completed X will choose to do Y when the recommendation appears.`

A useful assumption is:

- specific;
- necessary enough to matter;
- observable or testable;
- phrased as something that needs to be true for the solution to work.

Prefer positive dependency statements:

`Users will remember their password.`

not:

`Users won't forget their password.`

The first form makes it clearer what behavior the solution depends on.

### 3. Separate assumption categories

For material solutions, scan at least these categories.

#### Desirability

Ask:

- Does the customer care enough about the outcome?
- Will the customer choose this solution in the relevant moment?
- Will they perform the required behavior?
- Will they trust the solution or provider?
- Will they make the required commitment, effort, payment, or change?

Important:

`Usable != desirable`

A flow can be easy to use and still solve an unimportant problem.

#### Viability

Ask:

- If customers use it, does it create enough value for the business?
- Is the cost to build, operate, support, acquire, or maintain acceptable?
- Does the model work with pricing, margins, incentives, sales, support, or partner economics?
- Does the solution protect or improve the product's strategic position?
- Could it create a local product win but a business loss?

#### Feasibility

Ask:

- Can the solution actually be built with available technology, time, data, people, and funds?
- Can required performance, reliability, latency, model quality, or scale be achieved?
- Are integrations, partners, operations, legal, security, policy, or regulatory constraints workable?
- Is the solution feasible in the actual environment, not just in a demo?

#### Usability

Ask:

- Can target users find the capability?
- Do they understand what is happening?
- Can they complete the critical path without coaching?
- Does the interaction match their mental model?
- Can they recover from errors?
- Is the experience accessible enough for the target context?

#### Ethical / harm

Ask:

- What could harm users, non-users, partners, or the business?
- What data is collected, stored, inferred, shared, or exposed?
- Would users be comfortable if the mechanism were fully transparent?
- Could the design create manipulation, addiction, exclusion, harassment, privacy loss, or unintended incentives?
- Could the experiment itself mislead, inconvenience, or harm participants?

Do not treat ethical risk as a decorative final checklist.

### 4. Make the solution concrete enough to expose assumptions

Vague ideas hide risk.

When the solution is not concrete enough, build a lightweight future-state model before testing.

A useful method is to story-map the experience as if the solution already exists:

- identify actors;
- map what each actor must do to receive or create value;
- sequence the successful path;
- identify decisions, handoffs, dependencies, and required behaviors.

Do not map implementation tasks unless the learning target is implementation feasibility.

Then inspect each step:

`What must be true for this step to work?`

This can expose desirability, usability, feasibility, viability, and harm assumptions.

### 5. Generate assumptions before prioritizing them

The goal of assumption generation is divergence.

For a non-trivial solution, do not stop after the first three obvious assumptions.

Use one or more of these methods when helpful:

#### Future-state story map

For every important user or system step, ask what must be true.

#### Pre-mortem

Assume:

`It is six months later. We launched this solution and it failed.`

Ask:

`What went wrong?`

Translate credible failure explanations into assumptions the solution depends on.

#### Walk the causal chain

Explicitly state:

`Solution -> target opportunity -> product outcome -> business outcome`

Then ask why each link should hold.

Every unsupported inference is an assumption.

#### Potential-harm review

Ask how users, excluded groups, partners, the business, or the ecosystem could be harmed.

#### Cross-functional lenses

Use product, design, engineering, operations, commercial, legal/security, and other relevant lenses to expose different blind spots.

Do not require every method for every solution. Use them where they improve assumption coverage.

### 6. Prioritize assumptions by importance and evidence

Do not test every assumption.

Assess each assumption relatively on two dimensions:

#### Importance

How badly does the current solution fail if this assumption is false?

High importance:

- the solution cannot create intended value;
- the core mechanism fails;
- economics break;
- the solution cannot be delivered;
- material harm appears;
- there is no practical workaround.

Lower importance:

- the current design fails, but can be redesigned cheaply;
- a secondary path changes;
- the assumption can be worked around easily.

#### Evidence strength

How much relevant evidence already supports or challenges the assumption?

Use relative evidence strength rather than invented numeric confidence scores.

The first test candidates are usually:

`High importance + weak evidence`

These are the riskiest or "leap of faith" assumptions.

Start with the top few, not the entire upper-right quadrant.

### 7. Test assumptions, not polished ideas

A whole solution often contains many assumptions.

A test of the entire solution can fail without telling you why.

Prefer:

`Which risky assumption can we isolate and learn about now?`

over:

`Does Idea A win?`

This is especially powerful when several solution options share an assumption.

Example:

Solutions A, B, and C all depend on:

`Customers want to solve this problem in this context.`

Test the shared assumption once before spending time testing each solution independently.

This allows one test to update the risk of several ideas.

### 8. Compare a set of ideas when the solution direction is still open

Do not let experiment design quietly reintroduce solution fixation.

If discovery produced multiple plausible solutions:

- identify important shared assumptions;
- identify assumptions unique to each solution;
- test the riskiest assumptions across the set;
- compare evidence rather than trying to prove one favorite idea.

Testing only one idea increases the risk of confirmation bias and escalation of commitment.

The goal is not to make every idea pass. The goal is to identify the most promising path with the least wasted commitment.

### 9. Simulate the relevant moment, not the entire product

For behavioral assumptions, design the smallest simulation that lets the participant behave as if the assumption were true or false.

Ask:

1. At what exact moment does this assumption matter?
2. What minimum context must be present for behavior to be meaningful?
3. What can be omitted without changing the decision?

Do not simulate more than necessary.

Example:

To learn whether users choose a recommendation in a decision moment, you may only need to simulate that decision context, not the entire application.

Good early tests are intentionally incomplete if the omitted parts are irrelevant to the assumption being tested.

### 10. Prefer behavior over hypothetical approval

Weak evidence:

`Would you use this?`

Stronger evidence when feasible:

- chooses one option in a realistic choice;
- starts the workflow;
- completes a meaningful step;
- gives time, data, effort, money, or access;
- clicks through from a real context;
- uses a prototype without coaching;
- accepts or rejects a real trade-off;
- changes behavior in a limited live test.

Stated intent can still be useful, but label it correctly and do not confuse it with behavioral evidence.

### 11. Define evaluation criteria before seeing results

For each test, define in advance:

- what behavior or signal is being observed;
- how many participants / units / events are included when relevant;
- the success threshold or decision rule;
- failure / disconfirming criteria;
- guardrails;
- time window;
- important exclusions;
- what each result changes in the decision.

Avoid vague criteria such as:

`Some users are interested.`

For a small test, prefer a specific statement such as:

`At least 3 of 10 relevant participants choose X in the simulated decision.`

Do not convert `3 of 10` into a claim that `30% of the market` will behave that way.

The small test is an early signal, not a population estimate.

Defining criteria before results reduces post-hoc reinterpretation and confirmation bias.

### 12. Choose the smallest credible test

The right test is not the cheapest test in absolute terms.

It is the least costly test that can generate evidence strong enough for the current decision.

Evaluate candidate tests on:

- relevance to the exact assumption;
- realism of context;
- behavioral strength;
- time to learn;
- cost;
- reversibility;
- customer impact;
- operational burden;
- evidence quality;
- whether the result is actionable.

A one-question survey can be better than a prototype for one assumption.

A prototype can be better than a production A/B test for another.

A one-day implementation can be better than a week spent prototyping when the implementation is cheap, reversible, safe, and yields much stronger evidence.

### 13. Start with early signals, then increase commitment

Do not begin with a large-scale experiment unless the decision genuinely requires it.

A common progression is:

`Cheap signal -> stronger signal -> more realistic context -> limited production -> scaled implementation`

Increase investment only when earlier evidence makes the next investment worthwhile.

Small early tests are especially useful because they make failed assumptions cheap.

Do not confuse an early positive signal with proof.

If the assumption remains the dominant risk after a small supportive test, run a stronger test.

If another assumption has become riskier, switch to that one.

Stop testing when:

- enough risk has been removed for the next commitment;
- the cost of the next test approaches the cost of a reversible implementation;
- the decision is already clear;
- the assumption is no longer the most important uncertainty.

### 14. Negative evidence is progress

A failed test can be more useful than a weakly positive one.

Possible implications include:

- redesign the solution so it no longer depends on the failed assumption;
- choose another solution;
- revisit the opportunity;
- change the product outcome hypothesis;
- defer the idea;
- stop investing.

Do not call an experiment a failure merely because the preferred result did not happen.

The experiment failed only if it did not produce interpretable learning for the decision.

### 15. Evidence supports or weakens assumptions; it rarely proves them

Use language such as:

- `supportive evidence`;
- `disconfirming evidence`;
- `stronger/weaker evidence`;
- `risk reduced`;
- `risk remains`;
- `evidence is mixed`.

Avoid overstating:

- `proven`;
- `guaranteed`;
- `100% validated`;
- `users definitely want this`.

Product experiments reduce uncertainty. They do not establish universal truth.

### 16. Triangulate when the decision requires more confidence

When one small test leaves meaningful risk, combine different evidence sources.

For the same assumption, you might use:

- a specific past-behavior interview;
- a prototype choice task;
- product data;
- a smoke test;
- a limited live test.

Different methods have different failure modes.

Multiple converging signals can support a stronger decision than repeating the same weak method many times.

### 17. Measure both the assumption and the intended outcome when moving into production

An experiment may succeed on its local evaluation criteria while failing to improve the desired outcome.

Example:

`Users click the new recommendation` is not enough if the intended product outcome is `more users complete a valuable task`.

As commitment increases, track:

`Assumption signal -> product outcome -> business outcome`

The connection between product and business outcomes is itself an assumption and may need evidence over time.

Do not optimize a local test metric while forgetting the reason the solution exists.

### 18. Close the loop with customers

Experiments using fake, manual, temporary, or intentionally incomplete experiences can create confusion or disappointment.

Before running them, define:

- what participants are told;
- what is hidden and why;
- whether concealment is ethically acceptable;
- how long the test runs;
- how affected users recover;
- how to explain or close the experience afterward;
- what data is retained;
- how to stop the test safely.

Do not leave manual hacks, fake doors, or temporary experiments live indefinitely merely because they are producing data.

## Evidence discipline

When reporting experiment work, distinguish:

- `ASSUMPTION` - a claim the solution depends on.
- `PREDICTION` - expected observable result if the assumption is sufficiently true in the test context.
- `TEST` - the method used to collect evidence.
- `OBSERVATION` - what actually happened.
- `EVIDENCE` - observation interpreted in relation to the assumption.
- `CONFOUNDER` - factor that weakens interpretation.
- `LIMITATION` - known boundary of what the test can support.
- `DECISION` - what the team chooses to do after updating risk.
- `OPEN QUESTION` - uncertainty that remains material.

Rules:

- Never invent experiment results, sample sizes, conversion rates, statistical significance, participant behavior, or confidence levels.
- Never retroactively rewrite the success criteria to make a test pass.
- Never turn a qualitative ratio into a market prevalence estimate.
- Never call a stated preference observed behavior.
- Never treat an uncontrolled before/after movement as causal without acknowledging alternative explanations.
- Never treat statistical significance as business significance.
- Never infer that a solution causes the business outcome merely because a local metric improved.
- Preserve disconfirming evidence and contradictions.
- If source evidence is incomplete, say what cannot be concluded.

## Experiment workflow

### Step 0 - Determine the current phase

Classify the work:

- `PROBLEM UNKNOWN` -> route to `customer-research` / `product-discovery`.
- `SOLUTION RISK` -> continue with this skill.
- `KNOWN PROBLEM + KNOWN SOLUTION + LOW RISK` -> implement and measure.
- `OUTCOME / METRIC UNCLEAR` -> route to `product-metrics` or `product-strategy`.
- `SCOPE TOO LARGE` -> use this skill for risk reduction, then `mvp-scope`.

### Step 1 - State the decision

Write one sentence:

`We need to decide whether to ______.`

Then define possible actions for supportive, mixed, and disconfirming evidence.

### Step 2 - State the opportunity and outcome context

Capture only what is needed:

- target customer / user;
- target opportunity or problem;
- intended product outcome;
- business relevance;
- current alternatives;
- solution candidate(s).

Do not re-run full discovery unless the context is genuinely missing.

### Step 3 - Make the solution(s) concrete

When needed, write a short future-state scenario or story map.

Clarify:

- actors;
- trigger;
- key steps;
- successful value moment;
- important handoffs;
- operational/system dependencies.

### Step 4 - Generate assumptions

Create an assumption inventory across:

- desirability;
- viability;
- feasibility;
- usability;
- ethical/harm.

Use story mapping, pre-mortem, causal-chain reasoning, and harm exploration where they expose blind spots.

### Step 5 - Map risk

For each important assumption, assess:

- `Importance to solution success`: low / medium / high or relative ordering;
- `Evidence strength`: strong / medium / weak or relative ordering;
- current evidence;
- consequence if false;
- possible workaround.

Avoid invented numeric scoring unless real quantitative inputs exist and a score is actually useful.

### Step 6 - Select the riskiest assumption

Choose the assumption whose uncertainty most blocks the next commitment.

Prefer assumptions that are:

- fundamental;
- high-consequence;
- weakly evidenced;
- shared across multiple solution options when relevant.

### Step 7 - Write the prediction and interpretation rules

Use:

`We believe [assumption].`

`If it is sufficiently true in this test context, we expect [observable behavior/result].`

`We will consider the evidence supportive if [criteria].`

`We will consider the evidence disconfirming if [criteria].`

`Mixed evidence means [interpretation / next step].`

Do not force a numeric threshold where one would be fake precision.

### Step 8 - Select the method

Choose the test based on the assumption, evidence required, and cost of being wrong.

Use the method guide below.

### Step 9 - Design the test

Specify:

- target participants / units;
- recruiting/context criteria;
- stimulus or intervention;
- exact moment being simulated;
- observed behavior / metric;
- sample or exposure requirement;
- success/disconfirming rule;
- guardrails;
- confounders to watch;
- time to learn;
- cost / engineering effort;
- reversibility;
- customer communication / close-out;
- instrumentation.

### Step 10 - Run without contaminating the evidence

For behavioral/user tests:

- use the correct audience;
- provide enough context but do not coach the desired behavior;
- avoid leading questions;
- observe before explaining;
- do not change criteria midway because results are disappointing.

For live experiments:

- verify instrumentation before relying on the result;
- protect against obvious allocation or exposure bugs;
- monitor guardrails;
- define a stop/rollback path.

### Step 11 - Evaluate

Report separately:

#### Observation

What happened?

#### Evidence relative to assumption

Does it support, weaken, or leave the assumption unresolved?

#### Evidence strength

How realistic and decision-relevant was the test?

#### Limitations / confounders

What else could explain the result?

#### Updated risk

Is the assumption now:

- sufficiently known for the next commitment;
- still the riskiest assumption;
- less risky than another assumption;
- clearly problematic?

### Step 12 - Decide

Choose one or more:

- `CONTINUE TO NEXT ASSUMPTION`
- `RUN STRONGER TEST`
- `ITERATE SOLUTION`
- `COMPARE ANOTHER SOLUTION`
- `REVISIT OPPORTUNITY`
- `REVISE OUTCOME HYPOTHESIS`
- `MOVE TO MVP SCOPE`
- `MOVE TO PRODUCT SPEC`
- `IMPLEMENT LIMITED VERSION`
- `DEFER`
- `STOP / DO NOT BUILD`

State why.

## Method selection guide

### Customer interview / contextual observation

Use when the uncertainty is mainly about:

- current behavior;
- problem context;
- motivation;
- workarounds;
- problem importance.

This is often a sign that the work belongs primarily in `customer-research`, not solution experimentation.

Do not use future-intent questions as strong demand evidence.

### One-question survey

Use when one precise answer can reduce an assumption efficiently.

Prefer questions about:

- specific past behavior;
- recent actions;
- concrete preferences grounded in real options.

Avoid:

`Would you use X someday?`

When a behavior can be observed directly, prefer the behavioral test.

### Concept test

Use when you need to learn:

- whether the concept is understood;
- what users value in a possible solution;
- how they interpret the proposition;
- which aspects appear relevant or confusing.

A concept test can be generative or evaluative.

For evaluative use, define a concrete behavioral or commitment criterion rather than relying only on positive comments.

### Wireframe / mockup / interactive prototype

Use when the risk concerns:

- comprehension;
- interaction;
- usability;
- information architecture;
- value in a realistic flow;
- choice between concrete experience options.

Choose only enough fidelity/interactivity for the assumption.

Do not spend days polishing visual detail if the test only requires a realistic decision moment.

Do not test a prototype to answer whether the underlying problem exists.

### Unmoderated prototype test

Use when:

- the test can be expressed clearly without moderator intervention;
- behavior is observable from recordings or task outcomes;
- fast parallel feedback is valuable;
- the participant pool can be screened appropriately.

Pilot instructions before scaling.

### Landing page / smoke test

Use when the main uncertainty is behavioral interest in a proposition before the product exists.

Possible observable commitments:

- sign-up;
- wait-list entry;
- plan selection;
- contact request;
- preorder where appropriate and operationally/legal feasible.

Remember:

A landing page tests proposition + audience + message + acquisition context.

Weak conversion does not by itself identify which of those components failed.

Do not claim that an email sign-up proves repeated product use or willingness to pay.

### Explainer video

Use when the product concept is difficult to communicate with static copy and the learning target is proposition understanding or interest.

The video is still a representation of the product, not product-use evidence.

### Ad demand test

Use to learn about:

- message resonance;
- relative audience response;
- acquisition response to a proposition.

Be careful not to interpret ad CTR as product-market fit.

Ad creative, auction dynamics, targeting, platform optimization, placement, and landing experience all affect the result.

### Fake door

Use when:

- an existing product has relevant traffic;
- building the capability is expensive enough to justify demand learning first;
- a click/action in the real product context provides useful evidence.

Define:

- what happens after the click;
- how users are informed;
- how frustration is minimized;
- how long exposure lasts;
- what guardrails protect trust.

A fake-door click measures interest in entering the capability, not successful use or realized value.

### Concierge

Use when the end value can be delivered manually and the team needs to learn:

- what customers actually need;
- what process creates value;
- which inputs/outputs matter;
- what a scalable solution would need to do.

Customers know the process is manual.

Concierge tests are intentionally unscalable. Do not mistake labor intensity for a production model.

Use a small enough set of customers to maintain close learning loops.

### Wizard of Oz

Use when the front-stage experience should feel like the intended product but expensive backend automation can be performed manually.

Customers may not know the backend is manual.

Before using it, explicitly evaluate:

- whether concealment is acceptable;
- whether users could be harmed or materially misled;
- how manual operations will be controlled;
- when the experiment ends.

Do not leave Wizard-of-Oz operations running indefinitely.

### Manual data / service simulation

Use when an algorithm, AI model, ranking system, data pipeline, or operational workflow can be approximated manually to learn about value before automating it.

Separate:

`Can the manually produced outcome create value?`

from:

`Can we automate it at required quality, cost, latency, and scale?`

These are different assumptions.

### Technical spike

Use when technical feasibility is the dominant uncertainty.

Define a technical learning question, such as:

- Can the required latency be achieved?
- Can we obtain the data with acceptable quality?
- Can the model reach the minimum accuracy for the use case?
- Can the integration support the required flow?

Do not let the spike silently become production architecture.

A technical spike can reduce feasibility risk but says little about desirability unless paired with customer evidence.

### Operational / partner / legal / security test

Use when a non-code constraint is the dominant risk.

Examples:

- partner can provide required inventory/data;
- legal can support the proposed use;
- customer support can operate the manual process;
- security controls meet the required workflow;
- marketplace supply can fulfill demand.

Treat stakeholder approval as evidence about the specific constraint, not evidence of customer value.

### Product analytics

Use when relevant behavior already exists and logged data can answer the assumption.

Analytics may eliminate the need to run a new experiment.

Be explicit about whether the analysis is:

- descriptive;
- correlational;
- quasi-experimental;
- randomized.

Do not infer causality from simple correlation.

### Product A/B test

Use when:

- a working product exists;
- the solution direction is sufficiently understood;
- implementation cost is acceptable;
- sufficient eligible traffic exists;
- random allocation is feasible;
- causal impact on a metric matters to the decision.

Define the product-side test contract before launch:

- product decision and hypothesis;
- treatment/control behavior;
- eligible product context/population;
- exposure concept;
- business-relevant effect or decision threshold in product terms when known;
- material risks and rollout constraints.

Then use `product-metrics` for the quantitative scorecard, exact metrics/guardrails, allocation/randomization implications, MDE/power, stopping policy, segmentation plan, instrumentation validation, and statistical readout.

Do not use A/B testing merely because it is available.

If solution direction is still highly uncertain, qualitative or smaller behavioral tests may produce faster learning about why.

### Limited live rollout / live prototype

Use when production is the smallest credible environment for the assumption.

Good fit when:

- implementation is small;
- rollout is reversible;
- the test is safe;
- production context materially improves evidence quality;
- instrumentation is ready;
- exposure can be limited.

Examples:

- one geography;
- one event;
- one partner;
- a small traffic share;
- an internal/beta cohort;
- a manually supported live path.

Do not force a non-production prototype when a limited implementation is both cheaper and more informative.

## Progressive evidence ladder

Use this as a reasoning aid, not a mandatory sequence.

From lower commitment / usually weaker realism toward higher commitment / usually stronger realism:

1. existing evidence review;
2. specific customer stories / observation;
3. lightweight concept;
4. simulated choice / prototype behavior;
5. landing page / smoke / fake door;
6. concierge / Wizard of Oz / manual live service;
7. technical or operational proof;
8. limited live product;
9. randomized product experiment;
10. scaled real-world outcome measurement.

The appropriate starting point depends on the assumption.

Do not climb every rung.

Jump to the cheapest rung that is credible enough for the current decision.

## Qualitative vs quantitative experiment logic

### Qualitative tests are strongest for

- why behavior occurred;
- mental models;
- comprehension;
- detailed friction;
- solution interpretation;
- early discovery of unknown failure modes.

They usually use small samples and should not be converted into population prevalence estimates.

### Quantitative tests are strongest for

- what happened at scale;
- how many / how often;
- relative conversion or behavior;
- causal effect when the design supports causal inference.

They often cannot explain why without complementary qualitative evidence.

### Combine them when useful

A common pattern:

`Qualitative -> improve hypothesis/experience -> quantitative -> investigate unexpected result qualitatively -> iterate`

Do not assume quantitative is automatically more valuable than qualitative. The method should answer the current uncertainty.

## Boundary with `product-metrics`

For randomized online controlled experiments, this skill owns:

- the product decision;
- the assumption/hypothesis;
- the treatment or behavior being changed;
- eligibility/context at the product level;
- why randomization is useful;
- what supportive, mixed, or disconfirming evidence would mean for the product decision.

`product-metrics` owns the rigorous measurement and statistical contract:

- primary metric / OEC and guardrails;
- exact metric definitions and instrumentation semantics;
- randomization-unit and analysis-unit implications;
- MDE, power, sample-size inputs, and sensitivity;
- SRM, A/A, data-quality and trust checks;
- peeking/stopping policy and multiple-testing concerns;
- confidence intervals, statistical interpretation, and experiment readout.

Do not duplicate that statistical workflow here. If `product-metrics` is available, hand off those parts instead of improvising them.

## Boundary with existing experiment skills

`product-experiment` owns the product assumption, learning decision, and choice of the smallest credible method across interviews, concepts, prototypes, smoke tests, fake doors, concierge/Wizard-of-Oz tests, technical spikes, and live experiments.

- Use `design-behavior-experiments` as a bounded specialist when the selected method tests a behavioral causal chain or intervention.
- Use `define-product-metrics-experiments` as a bounded specialist when a controlled online experiment needs readiness, scorecard, trust checks, or interpretation depth.

These skills do not replace the parent product decision. They return method-specific findings, evidence requirements, limitations, and handoff recommendations.

## Special rules for A/B tests and quantitative experiments

This skill does not replace a statistician for high-stakes experimental design.

For meaningful quantitative product experiments:

- choose the primary metric before launch;
- distinguish statistical significance from business significance;
- avoid repeated peeking/stopping solely because a preferred threshold appears;
- keep eligibility and exposure rules stable unless the test is intentionally redesigned;
- verify sample-ratio/allocation integrity where relevant;
- inspect instrumentation/data quality;
- consider novelty, seasonality, network effects, interference, and learning effects when relevant;
- report confidence/uncertainty honestly;
- avoid post-hoc segmentation fishing;
- interpret null results in light of power and effect size, not as proof of no effect.

If the available information is insufficient to calculate sample size or statistical power, do not invent it. Ask for baseline rate, target effect, traffic, alpha/power requirements, or route to the appropriate analytics/statistics workflow.

## Special rules for AI / ML product experiments

For AI-enabled solutions, separate at least these assumptions when relevant:

### Customer-value assumption

`Does the AI-produced outcome help enough to matter?`

### Interaction assumption

`Can users understand, steer, verify, and recover from the AI behavior?`

### Model-quality assumption

`Can the system achieve the quality required for this use case?`

### Cost / latency assumption

`Can it operate at acceptable latency and unit economics?`

### Trust assumption

`Will users rely on it at the intended level?`

### Safety / harm assumption

`What happens when the model is wrong, biased, manipulated, or uncertain?`

### Data assumption

`Do we have the required data, rights, freshness, coverage, and privacy basis?`

Do not bundle all of these into:

`Does the AI feature work?`

A manual or human-in-the-loop simulation may test customer value before the model is built.

A model benchmark may test feasibility but does not prove customer value.

## Working with coding agents

When Claude Code, Codex, or another implementation agent is available, do not default to either extreme:

`Never code before validation`

or:

`Just build it and see.`

Choose based on economics of learning.

### Prefer simulation/prototype before code when

- implementation is expensive;
- the core assumption can be tested without production code;
- the decision is hard to reverse;
- the solution carries major feasibility, privacy, safety, or operational risk;
- a polished implementation would create escalation of commitment.

### Prefer limited implementation as the experiment when

- code is cheap to generate and review;
- implementation is small and reversible;
- the live context is essential to behavior;
- the blast radius can be limited;
- instrumentation and rollback exist;
- maintaining experimental code does not create hidden long-term cost.

### Implementation-agent handoff for an experiment

Before asking the coding agent to build experimental software, provide:

- learning target;
- exact assumption;
- experiment scope;
- what is intentionally fake/manual/incomplete;
- eligible users/exposure;
- instrumentation requirements;
- success/disconfirming rules;
- guardrails;
- rollback/cleanup plan;
- explicit non-goals;
- whether the code is disposable or production-intended.

Do not allow the coding agent to silently productionize a disposable learning prototype.

## Experiment quality review

Before running a material experiment, check:

### Decision quality

- Is there a real decision?
- Can the result change it?

### Assumption quality

- Is the assumption specific?
- Does it need to be true?
- Is it actually risky?

### Method fit

- Does the method test this assumption rather than an adjacent question?
- Is the context realistic enough?

### Audience fit

- Are participants/units relevant to the opportunity?
- Are we accidentally testing the easiest audience rather than the right one?

### Behavior fit

- Are we observing meaningful behavior where possible?
- Are we relying mainly on hypothetical approval?

### Criteria quality

- Were success/disconfirming criteria defined before results?
- Are they actionable?
- Are small-sample ratios being treated as signals rather than population estimates?

### Investment quality

- Is this the smallest credible test?
- Could we learn the same thing faster or more cheaply?
- Are we overbuilding the simulation?

### Ethics / customer impact

- Could the test mislead, annoy, exclude, expose, or harm users?
- Is there a close-out/recovery plan?

### Interpretation quality

- Are confounders known?
- Will the result actually reduce the uncertainty?

If several of these checks fail, redesign the experiment before running it.

## Anti-patterns

Do not:

- experiment before the problem is understood;
- experiment when a known low-risk fix can simply be implemented and measured;
- test a whole solution when one risky assumption can be isolated;
- test only the team's favorite idea when several options remain plausible;
- generate only easy-to-test assumptions while ignoring fatal ones;
- test usability and infer desirability;
- test desirability and infer feasibility;
- test technical feasibility and infer product value;
- ask `Would you use this?` and call positive answers demand validation;
- use a survey when direct behavioral data already exists;
- create an overbuilt prototype for a simple decision moment;
- run a fake door without considering user trust and recovery;
- leave concierge/Wizard-of-Oz processes running as accidental permanent operations;
- define success after seeing results;
- keep extending a test because the expected result did not appear;
- cherry-pick segments after the fact until something looks positive;
- treat `not statistically significant` as `no effect` without considering power/effect size;
- treat a significant but trivial effect as a product win;
- use percentages from tiny qualitative samples as market prevalence;
- declare an assumption proven from one small test;
- ignore negative evidence because the implementation is already underway;
- keep testing after the decision is sufficiently clear;
- forget to measure whether the solution eventually affects the intended outcome;
- call every release an experiment without a hypothesis, instrumentation, and decision rule;
- create experiment code without a rollback/cleanup plan;
- allow an AI agent to invent experiment results or statistical parameters.

## Output modes

Use the smallest output that serves the request.

### Mode A - Experiment recommendation

Use when the user asks:

`How should we test this?`

Return:

1. Decision
2. Riskiest assumption
3. Recommended test
4. Why this test
5. Success/disconfirming rule
6. What we do after each result

### Mode B - Assumption map

Use when the user asks to identify risk.

Return:

| Assumption | Category | Why it matters | Existing evidence | Evidence strength | Relative importance | Next action |
|---|---|---|---|---|---|---|

Use qualitative labels unless real numeric inputs exist.

### Mode C - Full experiment brief

Use for execution-ready test design.

Return:

#### Decision to support

#### Opportunity / outcome context

#### Solution candidate(s)

#### Assumption inventory

#### Riskiest assumption

#### Prediction

#### Method

#### Participants / units and context

#### Stimulus / intervention

#### Observable behavior / primary metric

#### Success criteria

#### Disconfirming criteria

#### Guardrails

#### Sample / exposure / time window

#### Instrumentation

#### Confounders / limitations

#### Customer communication and close-out

#### Cost / time to learn

#### Reversibility / rollback

#### Decision table

| Result | Interpretation | Decision |
|---|---|---|

### Mode D - Experiment readout

When results exist, return:

#### Original decision

#### Original assumption and criteria

#### What actually happened

#### Supporting evidence

#### Disconfirming evidence

#### Data / test quality issues

#### Confounders and limitations

#### Updated risk

#### What can be concluded

#### What cannot be concluded

#### Decision

#### Next learning step, if any

Do not rewrite the original hypothesis or criteria after seeing the outcome.

## Completion standard

A strong use of this skill should make the next commitment safer or cheaper.

It should answer:

- What important thing are we uncertain about?
- Why does that uncertainty matter?
- What evidence do we already have?
- What is the smallest credible way to learn more?
- What behavior/result would count as meaningful evidence?
- What will we do if the result is supportive, mixed, or disconfirming?
- When should we stop testing and act?

If the output cannot answer those questions, the experiment design is not ready.
