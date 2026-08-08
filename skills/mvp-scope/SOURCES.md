# MVP Scope Source Map

This skill is synthesized from the five supplied books. It is not a summary of one book and does not require the books at runtime.

## Jeff Patton - User Story Mapping

Primary source for end-to-end mapping, outcome-based release slicing, and the definition of a minimum viable solution.

### Key ideas used

- A story map makes the whole product story and dependencies visible instead of treating the backlog as a flat priority list.
- The backbone represents the narrative flow of what users and systems do across the experience.
- Mapping exposes holes in understanding early; newly discovered required work is not necessarily meaningless "scope creep."
- There is always more that could be built than should be built now.
- Scope should be reduced by focusing on the real-world outcome and the specific people who need to achieve it.
- Horizontal release slices should contain what users need to do and see to achieve a target outcome.
- Release roadmaps are stronger when each slice is anchored by a target outcome rather than a feature list.
- Prioritize outcomes rather than feature inventory.
- The minimum viable product is not the worst product people can tolerate.
- The minimum viable solution is the smallest solution release that successfully achieves its desired outcome.
- "Minimum" is relative to a specific target user and what that person needs to accomplish.
- The team is guessing about viability until real outcomes are observed.
- A learning-oriented MVP can also mean the smallest thing created or done to prove or disprove an assumption.
- Story mapping can help teams remove far more scope than a flat backlog conversation while preserving a coherent product story.

### Main sections used

- Anatomy of a Big Map
- Mapping Helps You Spot Holes in Your Story
- There's Always Too Much
- Slice Out a Minimum Viable Product Release
- Slice Out a Release Roadmap
- Don't Prioritize Features - Prioritize Outcomes
- Why We Argue So Much About MVP
- The New MVP Isn't a Product at All
- Plan to Learn Faster

## Melissa Perri - Escaping the Build Trap

Primary source for Version 1 trade-offs, Cost of Delay, outcome-oriented "done," and maintaining a North Star while reducing scope.

### Key ideas used

- Story mapping helps a team align on the work required to deliver value and prioritize the first version.
- Scope reduction works best when anchored to a larger product direction / North Star; otherwise teams can cut without understanding what value they are preserving.
- Version 1 is an optimization problem between value captured and time to release.
- Overscoping delays value and can create market/competitive cost.
- Underscoping into a poor experience can damage early adoption and trust.
- Cost of Delay combines urgency and value to determine what should ship sooner.
- Qualitative urgency/value comparisons can be useful when precise financial calculation is unavailable.
- A component can be deferred when it is not critical to the target outcome and materially delays the release.
- Success criteria should be set before launch and instrumentation should allow the team to measure them.
- Shipping Version 1 does not make the work "done"; a feature should be iterated until the intended goal is understood/reached or the team chooses another direction.
- Version 1 should be treated as a hypothesis and can be rolled back or changed when outcomes are weak.

### Main chapters used

- Chapter 18 - Solution Exploration
- Chapter 19 - Building and Optimizing Your Solution

## Dan Olsen - The Lean Product Playbook

Primary source for breaking large features into smaller chunks, value/effort prioritization, MVP candidate selection, and protecting product completeness/quality.

### Key ideas used

- The MVP candidate is a hypothesis about the minimum functionality needed to validate direction, not a proven viable product.
- Feature ideas should remain connected to the customer benefit they are meant to deliver.
- Large features should be broken into smaller feature chunks so lower-value depth can be trimmed and prioritized explicitly.
- Smaller batch sizes accelerate feedback and reduce risk/waste.
- Prioritization should consider both expected customer/business value and development effort.
- When two options have similar expected ROI, the smaller scope can be preferable because it delivers value and feedback earlier.
- ROI estimates are comparative hypotheses, not a reason for decimal-point precision when inputs are weak.
- Strict rank order is not sufficient when a coherent MVP requires a combination of capabilities.
- MVP selection should cover must-have benefits and enough differentiation/value for the target customer rather than merely collecting the highest-scored chunks.
- Future versions should not be planned too far ahead because V1 evidence will change priorities.
- An MVP with limited functionality should still clear a quality bar; minimum scope is not an excuse for an unusable, unreliable, or shoddy product.
- MVP tests/prototypes can reduce uncertainty before committing to the live product.

### Main chapters used

- Chapter 5 - Define Your Value Proposition
- Chapter 6 - Specify Your Minimum Viable Product Feature Set
- Chapter 7 - Create Your MVP Prototype

## Marty Cagan - Inspired

Primary source for the minimal coherent product, early engineering trade-offs, and the warning against late arbitrary feature cuts.

### Key ideas used

- Product management should define the smallest possible product that meets the product/business goals rather than the ultimate product.
- A common failure pattern is to create an oversized specification and then cut features late based on schedule pressure, leaving an incoherent whole.
- Product/design/engineering should make scope/cost trade-offs collaboratively early rather than after a large design is handed to engineering.
- The minimal product must contain enough functionality to meet objectives while offering a user experience target users can figure out and want to use.
- Engineering input should expose cost, feasibility, and dangerous directions while scope is still flexible.
- The proposed minimal product should be tested with target users before large engineering commitment when risk warrants it.
- Once a genuinely minimal, validated product definition has been reached, randomly amputating additional features because the schedule slips can destroy the product's viability.
- Final specifications should describe a coherent product, not a bag of P1/P2/P3 features that can be removed independently without consequence.
- Product validation should establish evidence of value, usability, and feasibility before overcommitting.

### Main chapters used

- Chapter 12 - Product Discovery
- Chapter 19 - Design vs. Implementation
- Chapter 20 - Minimal Product
- Chapter 21 - Product Validation

## Teresa Torres - Continuous Discovery Habits

Secondary source for assumption-aware scope and the connection between solution steps, risks, and desired outcomes.

### Key ideas used

- Story-map a solution as if it already exists by mapping what actors must do to receive value rather than implementation tasks.
- User steps surface desirability, usability, and feasibility assumptions that can invalidate a proposed scope.
- A release can depend on viability and ethical/harm assumptions in addition to visible user functionality.
- Walk the causal chain from solution -> opportunity -> product outcome -> business outcome to expose why a scoped capability is expected to matter.
- Do not test every assumption; identify the important weakly supported assumptions that block the next commitment.
- Discovery and delivery should remain connected so evidence from real usage changes later decisions.

### Main chapters used

- Chapter 9 - Identifying Hidden Assumptions
- Chapter 10 - Testing Assumptions, Not Ideas
- Chapter 11 - Measuring Impact

## Synthesis choices

The runtime skill intentionally resolves several tensions among the books rather than copying any single source literally.

### "MVP" vs "MVS" vs "MVP candidate"

The skill uses `MVP/V1` as the user-facing umbrella term but operationally distinguishes:

- a learning slice;
- a candidate release not yet proven viable;
- a customer-facing minimum viable solution.

This keeps Patton's outcome definition, Olsen's hypothesis/candidate framing, Perri's learning emphasis, and Cagan's coherent-minimal-product requirement without forcing one vocabulary onto every situation.

### Quality is not a universal fixed bar

The skill protects functional, reliability, usability, safety, trust, legal, privacy, security, accessibility, and performance needs according to the target context. It does not claim every MVP must maximize delight. Olsen's "complete" product-quality logic is used as a warning against confusing minimum breadth with shoddy execution.

### Scope first by coherence, then by scoring

Value/effort, ROI, Cost of Delay, and other prioritization methods are supporting tools. They do not replace the story map because a set of individually high-scoring chunks can still fail to create one end-to-end user outcome.

### No mandatory numeric scoring

When value, effort, or urgency inputs are weak, the skill prefers relative high/medium/low comparisons and explicitly labels them estimates. It does not invent precise RICE/ROI/Cost-of-Delay values.

### Reduce breadth before quality

The books strongly imply that a minimum release still must create enough value and be usable/reliable enough to stand on its own. The runtime skill operationalizes this by recommending narrower segments, use cases, platforms, integrations, automation, and configuration before cutting trust-critical quality.

### Learning work and durable product work are different

A technical spike, prototype, concierge process, or disposable implementation can be the correct minimum when the purpose is learning. The skill does not incorrectly require every learning artifact to meet the same product-quality bar as a public V1.

### Fixed-date releases

Patton and Perri provide strong outcome/time-window and Cost-of-Delay logic. The runtime skill turns this into an explicit protocol: reduce segment/use-case breadth and optional depth while preserving a coherent end-to-end result; if all constraints are fixed and incompatible, surface the conflict rather than calling an incoherent fragment MVP.

### Implementation-agent boundaries

The books predate Claude Code/Codex-style autonomous implementation workflows. The rules that coding agents must not silently add settings, platforms, speculative architecture, scalability, or unresolved product behavior are an application of the sources' minimal-product, coherent-scope, shared-understanding, and outcome principles to AI-assisted development.

### AI/ML scoping

The AI-specific list (memory, model routing, tool use, human fallback, safety, data, latency, etc.) is a modern application of the supplied books' scope, risk, feasibility, viability, and assumption frameworks. It is not presented as a framework explicitly named in the books.
