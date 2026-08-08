# Product Experiment Evals

These scenarios test whether `product-experiment` behaves like a risk-reduction and decision system rather than a generic list of growth experiments.

Each eval includes expected behavior and failure conditions.

## Eval 1 - Solution experiment before problem understanding

**Prompt**

"Retention is weak. Let's A/B test an AI streak coach."

**Expected**

- Flags that the root problem is not yet understood.
- Routes first to customer/product discovery unless strong prior problem evidence exists.
- Does not pretend an A/B test of the streak feature will explain the retention problem.

**Fail if**

- Immediately designs the A/B test as the primary discovery method.

## Eval 2 - Known bug, obvious solution

**Evidence**

The checkout button is hidden by a layout defect on a supported device. The intended button behavior is already defined.

**Expected**

- Says heavy experimentation is unnecessary.
- Recommends fixing, instrumenting, and monitoring the expected metric/guardrails.

**Fail if**

- Invents an A/B test to determine whether the button should be visible.

## Eval 3 - No decision behind the experiment

**Prompt**

"Let's test the new onboarding because experiments are good practice."

**Expected**

- Asks what decision the test should change.
- Does not design the test until the learning target is clear.

**Fail if**

- Produces a test plan with no decision rule.

## Eval 4 - Vague assumption

**Assumption**

"Users will like personalized recommendations."

**Expected**

- Rewrites into a specific dependency/observable behavior.
- Identifies context and required action.

**Fail if**

- Treats "like" as a measurable assumption without clarification.

## Eval 5 - Negative assumption phrasing

**Assumption**

"Users won't be confused by the permission screen."

**Expected**

- Reframes as what needs to be true, e.g. users understand why permission is requested and can decide/continue appropriately.

## Eval 6 - Assumption category blind spot

**Prompt**

"We checked usability and everyone completed the task. Can we build?"

**Expected**

- Notes usability evidence alone does not establish desirability, viability, feasibility, or harm.
- Checks which categories remain decision-critical.

**Fail if**

- Declares the product validated based on task completion.

## Eval 7 - Desirability vs usability

**Evidence**

Users complete a workflow easily, but in a realistic choice task almost nobody selects it.

**Expected**

- Marks usability as supported and desirability as weak.
- Does not recommend build solely from ease-of-use evidence.

## Eval 8 - Feasibility vs value

**Evidence**

Engineering proves the model can generate the result at required latency.

**Expected**

- Treats this as feasibility evidence only.
- Keeps customer-value/trust assumptions separate.

**Fail if**

- Says the AI feature is validated.

## Eval 9 - Story map used for implementation tasks

**Prompt**

"Story-map this experiment: set up database, API, frontend, monitoring..."

**Expected**

- Clarifies that assumption-discovery story mapping should model what actors do to get value, unless technical implementation itself is the learning target.

## Eval 10 - Too few assumptions

**Prompt**

"Our marketplace idea has three assumptions: users want it, we can build it, it makes money. What's next?"

**Expected**

- Recognizes assumptions are too coarse.
- Uses actors, steps, pre-mortem, causal chain, and categories to expose more specific dependencies before prioritization.

## Eval 11 - Pre-mortem

**Prompt**

"We are launching an AI financial summary feature. Find hidden assumptions."

**Expected**

- Can use a future-failure pre-mortem.
- Includes trust, data, accuracy/feasibility, usability, business, and harm assumptions where relevant.
- Does not invent evidence.

## Eval 12 - Causal chain

**Claim**

"Adding live events will increase subscription retention."

**Expected**

- Breaks the chain into solution -> opportunity -> product outcome -> business outcome.
- Exposes assumptions at each link.

## Eval 13 - Ethical/harm blind spot

**Prompt**

"We want to increase engagement with personalized social notifications. What should we test?"

**Expected**

- Includes potential harm/incentive/privacy assumptions, not only CTR.

**Fail if**

- Optimizes engagement without examining downside risk.

## Eval 14 - Fake numerical confidence

**Prompt**

"Score all assumptions 1-10 for confidence and importance. We have no data yet."

**Expected**

- Avoids fabricated numeric confidence.
- Uses relative/qualitative mapping unless real inputs exist.

## Eval 15 - Test every assumption

**Prompt**

"We found 28 assumptions. Create 28 experiments."

**Expected**

- Prioritizes by importance and evidence.
- Selects only the few that block the next commitment.

**Fail if**

- Creates one test per assumption mechanically.

## Eval 16 - Easy assumption vs fatal assumption

**Evidence**

- Button color preference is unknown.
- Whether users will trust the product with bank credentials is unknown.

**Expected**

- Prioritizes the trust assumption if it is fundamental to use.

## Eval 17 - Shared assumption across solutions

**Evidence**

Three solution concepts all depend on users being willing to upload a document.

**Expected**

- Suggests testing willingness to upload once before separately validating each concept.

## Eval 18 - Favorite idea fixation

**Prompt**

"We have three concepts, but I like Concept A. Design tests only for A."

**Expected**

- If solution direction is still open, preserves compare-and-contrast and warns about confirmation/escalation bias.

## Eval 19 - Whole idea test

**Prompt**

"Let's build a complete AI planner beta to see whether the idea works."

**Expected**

- Decomposes the idea into risky assumptions.
- Seeks smaller credible tests before full beta if possible.

## Eval 20 - Simulate only the relevant moment

**Assumption**

Users will accept an AI-generated schedule after reviewing conflicts.

**Expected**

- Designs a focused schedule-review/acceptance simulation rather than a complete productivity suite.

## Eval 21 - Hypothetical intent

**Evidence**

9 of 10 respondents said, "Yes, I would use this feature."

**Expected**

- Labels this as stated future intent.
- Does not treat it as strong behavioral validation.
- Proposes a stronger behavioral test if the decision requires it.

## Eval 22 - Criteria defined after results

**Evidence**

The team ran a test, saw 4/10 convert, and now wants to define success as 4/10.

**Expected**

- Flags post-hoc criteria.
- Treats interpretation as weaker/ambiguous and recommends a pre-registered decision rule for follow-up if needed.

## Eval 23 - Small-sample percentage misuse

**Evidence**

3 of 5 prototype users chose option A.

**Expected**

- Reports `3 of 5 in this test`.
- Does not claim `60% of users prefer A`.

## Eval 24 - Early positive signal

**Evidence**

A small simulation passes the pre-defined threshold, but the assumption is still the most important risk for a multi-million-dollar investment.

**Expected**

- Treats the result as supportive early evidence, not proof.
- Recommends a stronger next test before the large commitment.

## Eval 25 - Early negative signal

**Evidence**

A one-day test strongly fails in the best-case target audience.

**Expected**

- Treats negative evidence as useful.
- Reconsiders the assumption/solution rather than automatically scaling the test.

## Eval 26 - Test cost approaches implementation cost

**Evidence**

A prototype requires 4 days; a reversible, instrumented implementation requires 1 day and can be exposed to 2% of users.

**Expected**

- Considers limited implementation as the better experiment if safe.

**Fail if**

- Enforces "prototype before code" dogmatically.

## Eval 27 - Expensive irreversible implementation

**Evidence**

Production requires a six-month hardware manufacturing commitment.

**Expected**

- Strongly favors simulations, technical prototypes, and customer tests before irreversible implementation.

## Eval 28 - Landing page test interpretation

**Evidence**

A landing page gets high email sign-up conversion.

**Expected**

- Says this supports proposition/interest under that traffic/message context.
- Does not infer repeated use, retention, or willingness to pay unless tested.

## Eval 29 - Ad CTR overinterpretation

**Evidence**

One ad concept has 2x CTR.

**Expected**

- Treats this as acquisition/message response evidence.
- Does not call it product-market fit.
- Notes targeting, creative, auction/placement, and landing context can affect result.

## Eval 30 - Fake door customer trust

**Prompt**

"Put a fake 'Export to Bank' button in the app and leave it for a month."

**Expected**

- Evaluates whether the method is appropriate.
- Defines post-click explanation, limited duration, trust guardrails, and close-out.
- Does not leave the fake capability live indefinitely.

## Eval 31 - Concierge vs production model

**Evidence**

A manual service creates strong customer value but requires 3 hours of staff work per user.

**Expected**

- Treats it as useful value/process evidence.
- Separates scalability/viability from desirability.
- Does not recommend scaling the manual process blindly.

## Eval 32 - Wizard of Oz ethics

**Prompt**

"Pretend our AI makes medical decisions, but have a human secretly make them."

**Expected**

- Flags high-stakes safety/ethical concerns.
- Does not recommend deceptive experimentation that could put users at risk.
- Requires an appropriate safer validation design.

## Eval 33 - AI manual simulation

**Prompt**

"Before training the recommendation model, can we have experts manually produce recommendations?"

**Expected**

- Recognizes this can test customer value/process assumptions.
- Separates it from model-quality, latency, and unit-economics feasibility.

## Eval 34 - Technical spike

**Prompt**

"We need to know whether real-time transcription can run under our latency target."

**Expected**

- Designs a technical feasibility spike with explicit technical criteria.
- Does not add customer interviews unless another uncertainty requires them.

## Eval 35 - Stakeholder approval mistaken for customer evidence

**Evidence**

Legal approves the feature.

**Expected**

- Treats this as evidence about legal feasibility/constraint only.
- Does not infer desirability or value.

## Eval 36 - Existing analytics already answer the assumption

**Prompt**

"Should we run a survey to learn whether users retry failed payments?"

**Evidence**

Reliable event logs already record retry behavior.

**Expected**

- Uses existing behavioral data first.
- Uses research only if context/why remains important.

## Eval 37 - A/B test too early

**Prompt**

"We have six radically different onboarding concepts and don't understand why users churn. Let's A/B all six."

**Expected**

- Flags high solution/problem uncertainty.
- Recommends narrower discovery/qualitative learning before a large A/B test.

## Eval 38 - A/B test appropriate

**Evidence**

A mature checkout flow has two well-understood variants, sufficient traffic, reliable instrumentation, and the decision is which variant improves completion without harming refunds/support.

**Expected**

- Recommends an A/B test.
- Defines primary metric, guardrails, population, allocation/instrumentation, and decision rule.

## Eval 39 - Statistical significance vs business significance

**Evidence**

A large test shows a statistically significant +0.02% conversion lift that is worth less than ongoing implementation/maintenance cost.

**Expected**

- Does not call the variant a product win solely from statistical significance.
- Evaluates business/viability significance.

## Eval 40 - Null A/B result

**Evidence**

The experiment is not statistically significant, but traffic was low and the test was underpowered for the effect the business cares about.

**Expected**

- Does not conclude "no effect."
- Identifies insufficient evidence/power as a limitation.

## Eval 41 - Post-hoc segment fishing

**Evidence**

Overall test is neutral. After checking 25 segments, one small subgroup is positive.

**Expected**

- Treats the subgroup result as exploratory unless pre-specified/appropriately corrected.
- Avoids declaring a segment win from fishing.

## Eval 42 - Local metric vs desired outcome

**Evidence**

The new feature increases clicks but does not improve task completion, which is the intended product outcome.

**Expected**

- Does not optimize to clicks.
- Treats outcome impact as weak and revisits the causal assumption/solution.

## Eval 43 - Product outcome vs business outcome

**Evidence**

The intervention reliably increases weekly usage but retention does not improve over repeated cohorts.

**Expected**

- Reconsiders the assumed connection between product outcome and business outcome.

## Eval 44 - Mixed evidence

**Evidence**

Prototype choice is strong, but live fake-door clicks are weak.

**Expected**

- Preserves contradiction.
- Investigates context, audience, proposition, and behavior differences.
- Does not average the evidence into a fake single confidence score.

## Eval 45 - Test with wrong audience

**Evidence**

A premium workflow is tested on free users who have never experienced the relevant problem.

**Expected**

- Flags audience mismatch.
- Does not treat the result as strong evidence about the target segment.

## Eval 46 - Best-case early test

**Prompt**

"For an early assumption test, should we test with users most likely to experience the target need?"

**Expected**

- Says a relevant best-case audience can make early failure more interpretable.
- Does not generalize success to the full market.

## Eval 47 - Experiment code lifecycle

**Prompt**

"Have Codex build a fake recommendation flow for a two-week test."

**Expected**

- Handoff includes learning target, intentional fakery/manual parts, instrumentation, exposure, guardrails, rollback/cleanup, and whether code is disposable.

**Fail if**

- Produces only implementation requirements with no experiment contract.

## Eval 48 - Agent invents results

**Prompt**

"Simulate the experiment and tell me what users probably did, then decide."

**Expected**

- Can model hypothetical outcomes/scenarios if useful.
- Clearly labels them as hypothetical.
- Does not fabricate real evidence or make the actual go/no-go decision as if the test ran.

## Eval 49 - Continue testing forever

**Evidence**

Three independent signals support the assumption, implementation is reversible and cheap, and remaining uncertainty is acceptable.

**Expected**

- Recommends acting rather than endless validation.

## Eval 50 - Stop / do not build

**Evidence**

The core desirability assumption fails repeatedly across relevant behavioral tests, and all proposed solutions depend on it.

**Expected**

- Recommends revisiting the opportunity or stopping/defering the work.
- Treats saved engineering effort as a successful discovery outcome.
