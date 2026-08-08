# Product Discovery Evals

Use these scenarios to test whether `product-discovery` behaves as intended.

A passing response should choose the smallest useful discovery workflow, preserve evidence discipline, and avoid ritualistic use of every framework.

## Eval 1 - Solution-first request with no problem evidence

**Input**

"Add an AI coach to the app. It should proactively tell users what to do next."

**Expected behavior**

- Treat AI coach as a proposed solution, not a validated need.
- Recover intended customer behavior/value and product outcome.
- Ask for or identify evidence about where users are blocked today.
- Do not immediately create a feature spec.
- Route toward current-experience/opportunity discovery or customer research if the risk is material.

**Failure modes**

- Expands the feature list.
- Invents user demand.
- Declares AI coaching strategically necessary without evidence.

## Eval 2 - Outcome-led discovery

**Input**

"D30 retention is weak. Help us decide what product change to make."

**Expected behavior**

- Do not jump straight to retention features.
- Distinguish the lagging/business-level signal from a product outcome if needed.
- Examine customer journey and behavioral evidence to identify opportunities that may drive retention.
- Use a learning goal if the mechanism is unknown.

## Eval 3 - Obvious low-risk fix

**Input**

"Users call support because the 'Download invoice' button is hidden behind a broken CSS rule. Should we run discovery first?"

**Expected behavior**

- Recognize problem and solution are already clear.
- Avoid deep discovery or experiment theater.
- Recommend fixing it, verifying behavior, and measuring support impact if material.
- Route out to implementation/spec/metrics as needed.

## Eval 4 - Competitor feature pressure

**Input**

"All competitors added AI search. We should add it too, right?"

**Expected behavior**

- Treat competitor behavior as market evidence, not proof of customer value.
- Ask which customer opportunity AI search addresses and whether it matters to the target customer.
- Compare alternatives and strategic fit before copying.

## Eval 5 - Broad opportunity wording

**Input**

"Interviews say 'the interface is hard to use.'"

**Expected behavior**

- Flag this as too broad to act on.
- Locate where in specific customer stories the friction occurs.
- Split into specific needs/pain points tied to moments in the experience.
- Avoid a generic redesign recommendation.

## Eval 6 - Single anecdote

**Input**

"One enterprise customer says they desperately need custom reports. Should we prioritize it?"

**Expected behavior**

- Preserve the anecdote as evidence for that customer, not broad market proof.
- Consider severity, strategic value, buyer importance, and whether similar evidence exists elsewhere.
- Avoid dismissing it only because N=1 if the account/business impact is legitimately high.
- Avoid treating it as a universal need.

## Eval 7 - Opportunity tree overload

**Input**

"We have 48 opportunities on our opportunity tree. How do we choose?"

**Expected behavior**

- Avoid scoring all 48.
- Compare top-level siblings first, choose a branch, then descend.
- Use sizing, customer, market, and company lenses.
- Prefer a leaf-level target opportunity when practical.
- Treat the choice as reversible and time-box analysis.

## Eval 8 - Fake precision

**Input**

"Can you calculate a score for these opportunities? We don't have data for frequency, satisfaction, or reach."

**Expected behavior**

- Refuse to invent numeric inputs.
- Use qualitative relative comparison or explicitly labeled assumptions.
- Explain which evidence would most change the decision if needed.

## Eval 9 - First-idea fixation

**Input**

"The problem is users forgetting to continue setup. The obvious solution is push notifications."

**Expected behavior**

- Accept push as one candidate, not the automatic winner.
- Generate materially different options if the decision is important: in-product resume affordance, email, saved state, contextual trigger, workflow simplification, etc.
- Keep all ideas tied to the same target opportunity.

## Eval 10 - Cosmetic ideation

**Input**

"We generated three solutions: blue reminder banner, green reminder banner, and red reminder banner."

**Expected behavior**

- Identify these as variants of one concept, not a diverse solution set.
- Push toward categorically different approaches when differentiation/uncertainty warrants it.

## Eval 11 - Standard solved pattern

**Input**

"We need a password reset flow. There is no unusual security or UX constraint."

**Expected behavior**

- Do not force broad ideation or novel solution exploration.
- Reuse established patterns.
- Validate fit and constraints only as needed.

## Eval 12 - Assumption surfacing

**Input**

"We chose an AI-generated weekly plan as one of three solutions. What could make it fail?"

**Expected behavior**

- Surface desirability, viability, feasibility, usability, and ethical/harm assumptions.
- Include trust, data quality, required user effort, model cost, safety, privacy, and ability to create the intended outcome only when relevant to supplied context.
- Phrase assumptions as conditions that need to be true.
- Avoid inventing evidence.

## Eval 13 - Shared assumption across solutions

**Input**

"All three solution ideas assume users will share their calendar data."

**Expected behavior**

- Recognize a shared high-leverage assumption.
- Prioritize testing willingness/behavior around calendar access before deeply testing each solution independently if the assumption is risky.

## Eval 14 - Usable but not desirable

**Input**

"Five users completed the prototype task easily. Does that validate the idea?"

**Expected behavior**

- Distinguish usability from desirability/value.
- State that task completion supports usability but not whether users care enough to choose/use/pay for the solution.
- Identify next evidence needed if decision risk remains.

## Eval 15 - Desirable but not feasible

**Input**

"Users love the concept, but engineering says it may require an unreliable third-party model and unknown latency."

**Expected behavior**

- Do not call discovery complete.
- Surface feasibility assumptions and recommend a technical spike/prototype.
- Preserve desirability evidence separately.

## Eval 16 - Ethical blind spot

**Input**

"The solution increases engagement by sending emotionally personalized notifications based on private journal entries."

**Expected behavior**

- Explicitly surface privacy, consent, manipulation, security, trust, and harm assumptions.
- Treat these as core discovery risks, not a legal footnote.
- Do not optimize engagement alone.

## Eval 17 - No direct customer access

**Input**

"We aren't allowed to interview users. Can we still do discovery?"

**Expected behavior**

- Use strongest available substitutes: analytics, support, sales/account notes, reviews, operational observation, existing research, or approved intermediaries.
- State that indirect evidence is weaker than direct observation for some questions.
- Explore whether access is truly impossible or just procedurally constrained without assuming permission.

## Eval 18 - Opportunity looks real, but solutions fail

**Input**

"Interviews and support data say late payments are a major pain point, but every solution test shows customers do not want us involved."

**Expected behavior**

- Distinguish a real pain from an opportunity the product can/should address now.
- Revisit opportunity prioritization rather than endlessly iterating solutions.
- Allow defer/stop as successful discovery outcomes.

## Eval 19 - Defer to future

**Input**

"The opportunity is important, but the only solution customers value requires a data platform that will not exist for 12 months."

**Expected behavior**

- Preserve the opportunity and evidence.
- Mark it as future/deferred rather than forcing a weak current solution.
- Define revisit trigger/dependency.
- Choose another current opportunity if needed.

## Eval 20 - Local metric wins, outcome does not

**Input**

"The new onboarding increased completion by 25%, but retained users did not increase."

**Expected behavior**

- Do not call the discovery successful merely because the local metric moved.
- Revisit the causal link from onboarding completion to the intended product/business outcome.
- Route to metrics/strategy/discovery depending on what is uncertain.

## Eval 21 - Production as discovery

**Input**

"A live implementation takes one day, is reversible, and gives much better behavioral data than a prototype."

**Expected behavior**

- Allow a limited production implementation as a learning mechanism when risk/guardrails permit.
- Do not insist on a prototype merely because prototypes are conventional.
- Define instrumentation and rollback/decision criteria.

## Eval 22 - Expensive irreversible decision

**Input**

"This feature requires a 2-year hardware commitment and cannot be changed after manufacturing."

**Expected behavior**

- Use deep discovery.
- Increase rigor around customer evidence, simulations/prototypes, feasibility, and assumptions.
- Prefer creative simulations before irreversible commitment.

## Eval 23 - Mandated requirement

**Input**

"A platform policy requires account deletion. We must ship it."

**Expected behavior**

- Do not question whether the requirement should exist.
- Discovery only if behavior, affected users, risk, or solution is materially unclear.
- Otherwise route to scope/spec/implementation.

## Eval 24 - AI-created customer journey

**Input**

"We have no user research. Create the likely customer journey and use it as evidence to select an opportunity."

**Expected behavior**

- May create a clearly labeled hypothetical map to organize assumptions.
- Must not call it evidence.
- Must identify which assumptions need real validation before a high-cost decision.

## Eval 25 - Shiny idea outside target opportunity

**Input**

"While ideating on checkout abandonment, we came up with a social feed. Everyone loves it."

**Expected behavior**

- Ask whether the social feed addresses the selected checkout opportunity.
- Remove/defer it from the current consideration set if not.
- Preserve it separately only if useful.

## Eval 26 - User asks for feature ranking instead of opportunity choice

**Input**

"Rank these 30 feature requests from customers and tell me what to build."

**Expected behavior**

- If there is no clear outcome/opportunity structure, group requests by underlying need/problem first.
- Avoid treating request frequency alone as strategy.
- Choose target opportunities before final solution prioritization when uncertainty is material.

## Eval 27 - Ambiguous experiment result

**Input**

"We showed a concept to eight users. Six said they liked it. Is that enough?"

**Expected behavior**

- Ask what assumption was being tested and what success criteria were set before the test.
- Distinguish stated liking from observed behavior/commitment.
- Do not retroactively invent a pass threshold.

## Eval 28 - Discovery course correction

**Input**

"We thought data entry was the problem, but research shows users actually struggle to create the source content before they ever reach data entry."

**Expected behavior**

- Update the experience map and opportunity space.
- Reframe the target opportunity around the deeper/root problem if it better drives the outcome.
- Celebrate course correction rather than defending the original problem statement.
