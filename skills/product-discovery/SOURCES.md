# Product Discovery Source Map

This skill is synthesized from the five supplied books. It is not a summary of one book and does not require the books at runtime.

## Teresa Torres - Continuous Discovery Habits

Primary source for the core discovery operating system.

### Key ideas used

- Continuous discovery as recurring customer-informed decision making in pursuit of a desired outcome.
- Outcome orientation instead of output orientation.
- Experience maps as evolving representations of what the team currently believes about the customer experience.
- Independent-first visual thinking to reduce groupthink and then synthesis into shared understanding.
- Continuous interviewing to discover needs, pain points, and desires rather than ask customers what to build.
- Specific customer stories and actual behavior over direct questions about generalized or future behavior.
- Opportunity Solution Trees for structuring the opportunity space.
- Opportunities framed as customer needs/pains/desires rather than solutions.
- Prioritizing opportunities through relative compare-and-contrast, not yes/no decisions.
- Opportunity-sizing, market, company, and customer lenses.
- Avoiding false precision in opportunity scoring.
- Treating opportunity choice as a reversible/two-way-door decision.
- Focusing on one target opportunity and moving toward smaller leaf-level opportunities when possible.
- Generating many ideas for the same target opportunity, using individual ideation plus group sharing.
- Using analogies and diverse perspectives to increase solution diversity.
- Reducing a broad idea set to a small diverse consideration set rather than prematurely selecting one winner.
- Assumption categories: desirability, viability, feasibility, usability, ethical/harm.
- Story mapping, pre-mortems, causal-chain reasoning, and harm questions to expose assumptions.
- Assumption mapping by importance and strength of evidence.
- Testing assumptions instead of whole ideas.
- Simulating the relevant experience and evaluating observed behavior.
- Defining evaluation criteria before results.
- Starting with small early signals and increasing test rigor/commitment over time.
- Triangulating multiple small evidence sources.
- Measuring impact on the desired outcome, not only local assumption-test metrics.
- Continuous interplay between discovery and delivery.
- Managing cycles and deliberately looping backward when evidence changes the problem/opportunity/solution.
- Recognizing that a real pain point may still be an opportunity the company should not solve now.
- Now/next/future thinking for opportunities whose viable solution requires larger future investment.

### Main chapters used

- Chapter 1 - The What and Why of Continuous Discovery
- Chapter 2 - A Common Framework for Continuous Discovery
- Chapter 3 - Focusing on Outcomes Over Outputs
- Chapter 4 - Visualizing What You Know
- Chapter 5 - Continuous Interviewing
- Chapter 6 - Mapping the Opportunity Space
- Chapter 7 - Prioritizing Opportunities, Not Solutions
- Chapter 8 - Supercharged Ideation
- Chapter 9 - Identifying Hidden Assumptions
- Chapter 10 - Testing Assumptions, Not Ideas
- Chapter 11 - Measuring Impact
- Chapter 12 - Managing the Cycles

## Melissa Perri - Escaping the Build Trap

Primary source for problem/solution phase discipline and learning-oriented product work.

### Key ideas used

- Product work should be organized around outcomes and problems rather than feature output.
- Product Kata: goal -> current state -> biggest obstacle -> next step -> expected result -> actual result/learning.
- Use the right tool for the current uncertainty; do not experiment merely because experimentation is fashionable.
- Problem exploration before solution exploration when the customer problem is not understood.
- Generative problem research is different from evaluative usability research.
- Customers often offer solution requests; the product team must uncover the underlying need/root problem.
- Fall in love with the problem, not a proposed feature.
- Generative solution research to learn what matters in a solution before converging.
- Building to learn versus building to earn.
- Minimum learning effort rather than treating MVP as simply a rushed first release.
- Concierge, Wizard of Oz, concept tests, prototypes, and A/B testing as context-dependent learning methods.
- No need for heavy experimentation when both problem and solution are already well understood.
- Even complex/hardware industries can create simulations to reduce risk before irreversible implementation.

### Main chapters used

- Chapter 15 - The Product Kata
- Chapter 16 - Understanding the Direction and Setting Success Metrics
- Chapter 17 - Problem Exploration
- Chapter 18 - Solution Exploration
- Chapter 19 - Building and Optimizing Your Solution

## Marty Cagan - Inspired

Primary source for validating product value/usability/feasibility before expensive implementation and for rapid prototype learning.

### Key ideas used

- Separate discovering the right product from building the product right.
- Validate market/opportunity and solution rather than treating requirements as certain.
- Product discovery should establish evidence that a solution is valuable, usable, and feasible.
- Involve engineering early when feasibility or cost matters.
- Prototype/simulate enough of the future experience to learn before production engineering.
- Usability evidence and value evidence answer different questions.
- Test ideas with real target users.
- Learn how users currently solve the problem before exposing them to the prototype when useful.
- Watch what users do, not only what they say.
- Iterate prototypes quickly as strong signals emerge rather than preserving a rigid test round for ceremony.
- Stopping a weak idea before engineering investment is a successful result.
- Existing-product improvement should be driven by intended metrics and observed behavior, not by endlessly adding requested features.

### Main chapters used

- Chapter 11 - Assessing Product Opportunities
- Chapter 12 - Product Discovery
- Chapter 18 - Reinventing the Product Spec
- Chapter 19 - Design vs. Implementation
- Chapter 20 - Minimal Product
- Chapter 21 - Product Validation
- Chapter 22 - Prototype Testing
- Chapter 23 - Improving Existing Products

## Dan Olsen - The Lean Product Playbook

Primary source for keeping problem and solution space distinct and for target-customer/underserved-need/value thinking.

### Key ideas used

- Separate problem space (customer needs/benefits) from solution space (design/implementation).
- Outside-in product development starts with customer problems and current alternatives.
- Target customer and needs begin as hypotheses and should be refined with evidence.
- Customer benefits should be written from the customer's perspective rather than as product features.
- Needs can be layered and hierarchical.
- Important, poorly satisfied needs are attractive candidate opportunities.
- Value proposition requires deliberate choices and comparison with current alternatives.
- Lean Product Process moves from target customer and underserved needs toward MVP/prototype/customer testing.

### Main chapters used

- Chapter 2 - Problem Space versus Solution Space
- Chapter 3 - Determine Your Target Customer
- Chapter 4 - Identify Underserved Customer Needs
- Chapter 5 - Define Your Value Proposition
- Chapter 7 - Create Your MVP Prototype
- Chapter 9 - Test Your MVP with Customers
- Chapter 10 - Iterate and Pivot to Improve Product-Market Fit

## Jeff Patton - User Story Mapping

Primary source for visual shared understanding, current-state/future-state mapping, opportunity selection, and moving from discovery toward a minimum viable solution.

### Key ideas used

- Start with opportunities rather than decomposing immediately into implementation stories.
- Use high-level who/what/why conversation for an initial go-forward/trash decision.
- Discovery should understand who the users are, how they meet the need today, how the future experience changes, and how the solution may behave.
- Story mapping can make a solution concrete and surface assumptions before delivery.
- Use visual models and shared storytelling to expose mismatched interpretations.
- Build small things/spikes specifically to learn when appropriate.
- Discovery should identify a small viable solution before deep delivery decomposition.
- Frame from the business perspective, understand customers/users, envision the solution, then minimize and plan.
- Prioritize outcomes rather than feature lists.

### Main sections used

- Start with Opportunities
- Discover a Minimum Viable Solution
- Four Essential Steps to Discovery
- Map How Users Work Today
- Envision Your Solution
- Story Mapping and opportunity discussions

## Synthesis choices

The skill intentionally does not reproduce each framework as a mandatory stage.

Examples:

- Opportunity Solution Trees are used only when the opportunity space benefits from hierarchy.
- Story mapping is used both to understand current/future behavior and to surface assumptions, but full release slicing belongs to `mvp-scope`.
- Detailed experiment design belongs to `product-experiment`; this skill identifies the learning target and appropriate level of evidence.
- Detailed interviewing belongs to `customer-research`.
- Product outcomes/guardrails may be refined through `product-strategy` or `product-metrics` when the discovery team lacks a useful outcome.
- Production implementation is allowed as a learning method when it is the smallest credible experiment and the risk/reversibility profile supports it.
