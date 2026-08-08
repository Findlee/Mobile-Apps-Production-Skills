# Product Experiment Source Map

This skill is synthesized from the five supplied books. It is not a summary of one book and does not require the books at runtime.

## Teresa Torres - Continuous Discovery Habits

Primary source for assumption identification, prioritization, and rapid assumption testing.

### Key ideas used

- Assumption categories: desirability, viability, feasibility, usability, ethical/harm.
- Story mapping a future-state solution to make the idea concrete and surface hidden assumptions.
- Mapping what end users must do to get value rather than mapping implementation tasks.
- Pre-mortems to expose assumptions by assuming future failure and explaining why it happened.
- Walking the lines from solution -> opportunity -> product outcome -> business outcome to expose causal and viability assumptions.
- Explicit potential-harm exploration, including data use, transparency, exclusion, misuse, relationship harm, and broader ecosystem effects.
- Assumption mapping using strength of evidence and importance to solution success.
- Relative placement rather than false precision.
- Starting with the few assumptions that combine highest importance and weakest evidence.
- Generating assumptions broadly but testing only the risky ones.
- Phrasing assumptions as conditions that need to be true and making them specific enough to test.
- Testing assumptions rather than whole ideas.
- Keeping multiple solution ideas in consideration and comparing evidence across them rather than overcommitting to a favorite.
- Shared assumptions can make one test informative for multiple ideas.
- Simulate the moment where the assumption matters and evaluate participant behavior.
- Do not simulate more of the experience than is needed.
- Define evaluation criteria before seeing results to reduce confirmation bias.
- Small tests are for reducing risk, not proving universal truth.
- Begin with early signals and increase test rigor/investment only when earlier evidence justifies it.
- Triangulate across multiple small evidence sources when more confidence is needed.
- Stop testing when enough risk is removed or when building a reversible version becomes the better learning step.
- Instrument delivery so production work can continue discovery.
- Measure impact on the desired outcome, not only local experiment metrics.
- Revisit opportunity/outcome assumptions when solution evidence changes the team's understanding.

### Main chapters used

- Chapter 9 - Identifying Hidden Assumptions
- Chapter 10 - Testing Assumptions, Not Ideas
- Chapter 11 - Measuring Impact
- Chapter 12 - Managing the Cycles

## Melissa Perri - Escaping the Build Trap

Primary source for phase discipline, building to learn, and context-dependent experiment selection.

### Key ideas used

- Product Kata: goal -> current state -> obstacle -> next learning step -> expected result -> actual result/learning.
- Use the right tool for the current phase; do not experiment merely because experimentation is fashionable.
- Problem exploration must precede solution experimentation when the customer problem is not understood.
- Generative problem research and evaluative solution testing answer different questions.
- Building to learn is different from building to earn.
- Treat the smallest learning effort as the goal rather than equating MVP with the first rushed release.
- Concierge experiments manually deliver the outcome with customers aware of the manual service.
- Wizard of Oz experiments present a product-like front stage while manual work occurs behind the scenes.
- Concept tests can be lightweight representations of a solution and can become evaluative when explicit pass/fail criteria or meaningful asks are added.
- Prototypes are appropriate once the problem is understood and the uncertainty concerns the solution.
- A/B testing is useful only when solution direction and traffic make it appropriate.
- Heavy experimentation is unnecessary for known problems with obvious low-risk solutions; implement and measure instead.
- Even complex/hardware/regulatory environments can create simulations that isolate key risks before irreversible implementation.
- Experiments should be temporary learning mechanisms and should be closed out deliberately with customers.

### Main chapters used

- Chapter 15 - The Product Kata
- Chapter 17 - Problem Exploration
- Chapter 18 - Solution Exploration
- Chapter 19 - Building and Optimizing Your Solution

## Marty Cagan - Inspired

Primary source for value/usability/feasibility validation, prototype learning, and early engineering involvement.

### Key ideas used

- Product validation should establish evidence before expensive engineering commitment.
- Feasibility, usability, and value are distinct risks and require different evidence.
- Technical feasibility should be investigated early when it can threaten the product in the required timeframe.
- Real target users should interact with realistic prototypes before major implementation where useful.
- Back-end behavior can be simulated when the learning target is the user experience.
- Usability asks whether users can use the solution; value asks whether they care enough about the solution.
- Prototypes/simulations can be much cheaper to change than production software.
- Watch what users do and avoid coaching them through the intended flow.
- Iterate the prototype as meaningful problems appear instead of preserving ceremony for a fixed round.
- Stopping an idea before engineering investment is a successful outcome if evidence says it is weak.
- Existing products should improve toward intended metrics using analytics and real-user testing rather than feature accumulation.

### Main chapters used

- Chapter 12 - Product Discovery
- Chapter 19 - Design vs. Implementation
- Chapter 20 - Minimal Product
- Chapter 21 - Product Validation
- Chapter 22 - Prototype Testing
- Chapter 23 - Improving Existing Products

## Dan Olsen - The Lean Product Playbook

Primary source for the method matrix and qualitative/quantitative/product/marketing distinctions.

### Key ideas used

- MVP tests differ by product vs marketing and qualitative vs quantitative learning goals.
- Qualitative tests help explain why; quantitative tests help measure what/how many.
- Early learning often benefits from qualitative testing before jumping directly to large quantitative tests.
- Landing page / smoke tests can measure behavioral response to a proposition before a product exists.
- Explainer videos are useful when the proposition is difficult to communicate statically.
- Ad campaigns can test messaging/audience response but should not be overinterpreted as product-market fit.
- Marketing A/B tests compare alternative messages/experiences quantitatively.
- Crowdfunding/preorders can create stronger willingness-to-pay evidence when applicable.
- Wireframes, mockups, and interactive prototypes differ in fidelity/interactivity and should be selected to match the learning need.
- Customer design testing before coding reduces the cost of discovering major problems late.
- Concierge and Wizard-of-Oz tests use manual workarounds to learn before automation.
- Fake-door tests can gauge entry interest for a feature in a live product but can annoy users if overused.
- Live product tests provide the highest-fidelity experience but should not be the first learning step when cheaper earlier evidence can reduce risk.
- Product analytics are useful evidence and are the basis for product A/B testing.
- Statistical significance depends on sample size and effect size; tests should not claim quantitative certainty without adequate data.

### Main chapters used

- Chapter 7 - Create Your MVP Prototype
- Chapter 9 - Test Your MVP with Customers
- Chapter 13 - Measure Your Key Metrics

## Jeff Patton - User Story Mapping

Primary source for learning-oriented slicing and the idea that experiments are smaller than a full viable product.

### Key ideas used

- Ask where the biggest risk and uncertainty live before building.
- A learning-oriented MVP can be the smallest thing created or done to prove/disprove an assumption rather than a complete product release.
- Validate that the customer problem exists before betting on a solution.
- Prototype progressively to learn before building production software.
- Do not confuse positive prototype reactions with the real outcome of repeated real-world use.
- Build small amounts of software specifically to learn when software is the most useful next experiment.
- Use story conversations/maps to make the who, what, and why explicit and to slice learning work into small pieces.
- Continue learning after release because real users often behave differently than predicted.

### Main sections used

- The New MVP Isn't a Product at All
- Plan to Learn Faster
- Validate the Problem
- Prototype to Learn
- Build to Learn
- Plan to Learn, and Learn to Plan

## Synthesis choices

The skill intentionally does not copy every source rule literally.

Notable design choices:

- The word `validation` is treated cautiously. The runtime skill prefers `supportive/disconfirming evidence` and `risk reduced` because one test rarely establishes truth.
- Torres's five assumption categories are used as the default risk scan because they combine customer, business, technical, interaction, and harm considerations.
- The exact number of assumptions or tests is not mandated. Divergence should be broad enough to uncover risky assumptions, but the team tests only the few that block the next commitment.
- Multiple solution ideas are compared when discovery remains open, but the skill does not require exactly three ideas in every case.
- Small-sample thresholds are allowed as pre-agreed decision rules but are never converted into market-prevalence claims.
- No fixed qualitative sample size is universalized. Sample/exposure is chosen according to the method, current risk, and decision.
- The test-method list includes technical, operational, partner, legal, security, and limited-production tests to extend the books' risk logic to implementation-agent workflows without changing the underlying principle.
- Production code is allowed as an experiment when it is the smallest credible, reversible, safe learning step. This follows the books' broader discovery-delivery coupling and build-to-learn logic.
- A/B testing guidance includes general experiment-integrity cautions but does not invent statistical parameters. High-stakes statistical design should use the real data and appropriate specialist workflow.
- AI/ML assumptions are decomposed into customer value, interaction, model quality, economics/latency, trust, safety, and data. This is an application of the source assumption categories, not a separate framework claimed by the books.
- Fake-door and Wizard-of-Oz methods include explicit customer-impact and closure rules because the supplied books warn about customer frustration and temporary/manual experiments becoming inappropriate long-term behavior.
