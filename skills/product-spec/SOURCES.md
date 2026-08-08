# Product Spec Source Map

This skill synthesizes the supplied product/product-development books into an implementation-ready behavioral specification workflow. The source materials guide the methodology but are not required at runtime.

## Marty Cagan - Inspired

Primary source for the definition and role of a modern product specification, the relationship between product behavior and UX, product-vs-implementation boundaries, early engineering involvement, minimal coherent product definition, and pre-implementation validation.

### Key ideas used

- Traditional paper PRDs are often long, poorly read, incomplete, ambiguous, and can create false confidence that the product has been adequately defined.
- A useful product spec must represent the full user experience, not merely a list of requirements.
- The spec should accurately represent software behavior in a form understandable by engineering, QA, support, marketing, operations, sales, and leadership.
- Product specs evolve, but the change rate should slow once implementation begins; there should be one master/current representation to reduce ambiguity and version conflict.
- A realistic interactive prototype can serve as a major part of the specification for interaction-heavy products.
- Prototypes need supplemental material for business logic, release/quality requirements, platform requirements, and key use cases that are not visible in the prototype.
- A proposed product definition should be evaluated for usability, value, and feasibility before expensive implementation when risk warrants it.
- Requirements/functionality and user-experience design are intertwined and should be developed together.
- Engineering should participate early enough to evaluate feasibility/cost and inform product/design trade-offs.
- Implementation should not be used as the first moment to resolve fundamental UX/product questions when cheaper prototypes can surface them earlier.
- A final minimal product should be a coherent whole; arbitrary late feature cuts can destroy its viability.
- Product validation does not mean the spec itself is proof; it means gathering evidence that the defined product is valuable, usable, and feasible.

### Main chapters used

- Chapter 18 - Reinventing the Product Spec
- Chapter 19 - Design vs. Implementation
- Chapter 20 - Minimal Product
- Chapter 21 - Product Validation
- Chapter 22 - Prototype Testing

## Jeff Patton - User Story Mapping

Primary source for shared understanding, end-to-end narrative, conversation-driven requirements, and acceptance/confirmation.

### Key ideas used

- The value of stories is not the activity of writing perfectly precise cards; rich conversation is essential to shared understanding.
- The Card / Conversation / Confirmation model separates a brief reminder of intent from collaborative problem solving and explicit verification.
- Story conversations are about working together toward the best solution to a problem both sides understand.
- Acceptance criteria / story tests are confirmation of the shared decision and should answer how the team will know the software is done.
- Discussing how the product will be demonstrated can reveal missing requirements and realistic-data needs.
- Words alone are not enough; personas, workflow diagrams, UI sketches, models, and annotated artifacts can materially improve shared understanding.
- Story maps preserve the narrative across the product and make it easier to see dependencies, missing states, and whole-user journeys.

### Main sections used

- Simple Isn't Easy
- Ron Jeffries and the 3 Cs
- Conversation
- Confirmation
- Words and Pictures
- Story Mapping and narrative-flow sections

## Dan Olsen - The Lean Product Playbook

Primary supporting source for the role of wireframes, mockups, prototypes, annotations, realistic copy, and interaction artifacts as specification/validation tools.

### Key ideas used

- Design artifacts vary in fidelity and interactivity; choose fidelity based on what must be communicated/learned.
- Waiting until live product to test interaction introduces unnecessary risk for material product changes.
- Wireframes describe component arrangement while high-fidelity mockups/prototypes can represent the target interaction more realistically.
- Real copy should be used early when content affects layout/understanding rather than relying reflexively on lorem ipsum.
- Annotated wireframes can communicate important behavioral details such as option sets, input limits, and error messages and can contain substantial product-specification information.
- Clickable artifacts help users/teams experience the flow rather than merely imagine it.
- Live product testing still matters because real implementation can reveal issues design artifacts cannot show, such as performance and platform/runtime behavior.

### Main chapters used

- Chapter 7 - Create Your MVP Prototype
- Chapter 9 - Test Your MVP with Customers

## Ryan Singer - Shape Up

Supporting source for defining work at the right level of abstraction, preserving implementation latitude, making the problem explicit, setting boundaries, identifying rabbit holes, and documenting no-gos.

### Key ideas used

- Work should be shaped at the right level: not so abstract that implementers must mind-read and not so concrete that design/engineering have no room to solve details.
- A solution should remain anchored to a specific problem so trade-offs have a fitness criterion.
- Appetite/time constraint can be part of the product definition and forces useful simplification.
- Shaped work is rough enough to leave room for implementation expertise, solved enough that major elements connect coherently, and bounded enough that the team knows where to stop.
- Product shaping should combine user interaction, technical possibility, and business priority.
- Known rabbit holes should be addressed before commitment because small-looking areas can consume disproportionate time/risk.
- No-gos should explicitly state what is not included so the team does not expand the concept unintentionally.
- Visual detail should be selective: enough to make the concept understandable, but not arbitrary precision that distracts from the important product behavior.

### Main chapters used

- Chapter 2 - Principles of Shaping
- Chapter 3 - Set Boundaries
- Chapter 5 - Risks and Rabbit Holes
- Chapter 6 - Write the Pitch

## Melissa Perri - Escaping the Build Trap

Supporting source for keeping specifications tied to outcomes, shared product context, iteration after release, and avoiding feature-factory "done = shipped" behavior.

### Key ideas used

- Product work should stay anchored to outcomes rather than treating feature delivery as the goal.
- Story mapping and shared product context help teams understand what must be done to deliver value rather than merely execute a list.
- A first release should have success criteria and instrumentation so the team can evaluate whether the intended result actually happened.
- Version 1 is a hypothesis; the team should diagnose and iterate after launch rather than automatically moving to the next feature.
- Product direction and North Star context should guide implementation decisions without dictating every technical task.

### Main chapters used

- Chapter 18 - Solution Exploration
- Chapter 19 - Building and Optimizing Your Solution

## Teresa Torres - Continuous Discovery Habits

Supporting source for assumption-awareness, actor/value story maps, usability/desirability/feasibility/viability/ethical lenses, and explicit causal reasoning.

### Key ideas used

- A solution story map should represent what actors need to do to get value, not an implementation task list.
- Mapping user/system steps exposes hidden assumptions and missing behavior.
- Product behavior can depend on desirability, usability, feasibility, viability, and ethical assumptions.
- Teams should remain explicit about what is known versus assumed rather than allowing a detailed solution artifact to imply certainty.
- Discovery and delivery remain connected; evidence from real usage should update product decisions/specification over time.

### Main chapters used

- Chapter 9 - Identifying Hidden Assumptions
- Chapter 10 - Testing Assumptions, Not Ideas
- Chapter 11 - Measuring Impact

## Synthesis choices

### Cagan's high-fidelity spec vs Shape Up's rough shaped work

These ideas apply at different commitment levels and are not treated as contradictory.

- During shaping/discovery, stay at enough abstraction to preserve solution latitude and avoid unnecessary visual precision.
- Before implementation of interaction-heavy, high-risk behavior, the experience must be concrete enough that product/design/engineering/QA share the intended behavior; this may require an interactive/high-fidelity artifact.
- The runtime skill therefore defines readiness states (`READY FOR UX`, `READY FOR VALIDATION`, `READY FOR IMPLEMENTATION`) instead of forcing every product request into either a rough pitch or a pixel-perfect prototype.

### The spec is a package, not necessarily one file

Cagan's "single master representation" is operationalized as one authoritative specification package with declared source-of-truth rules. The interaction source may be a design/prototype while written tables define business rules, states, analytics, and quality constraints.

### Acceptance criteria do not replace conversation

Patton's Card/Conversation/Confirmation model is applied by treating acceptance criteria as confirmation of shared behavior, not as a mechanism for inventing the behavior after product/design conversations were skipped.

### Behavior vs technical architecture

The runtime skill strongly separates product semantics from implementation. It still permits true technical constraints and explicitly requested technical design to be recorded, but product requirements should not prescribe class structures, database schemas, frameworks, or speculative infrastructure by default.

### Existing-product delta specs

The books discuss product definition broadly, but AI coding workflows make delta specification especially important. The requirement to inspect current behavior/repository context and state `current -> target -> preserved` behavior is a modern application of shared-understanding, coherent-product, and change-control principles.

### Coding-agent guardrails

The books predate autonomous implementation agents. The explicit rules that agents must not silently invent prices, entitlements, roles, destructive lifecycles, analytics semantics, product screens, settings, or future architecture are an application of the sources' shared-understanding, bounded-scope, single-source-of-truth, and product-vs-implementation principles.

### State models and rule tables

State/transition and business-rule tables are not claimed as proprietary frameworks from one supplied book. They are operational representations used to satisfy the books' requirement that software behavior be communicated clearly and testably.

### AI/ML product contract

The AI-specific input/output/fallback/action boundary section is a modern application of product behavior, risk, assumption, permission, and failure-recovery principles. It is not presented as a named framework from the supplied books. The broader AI-product reference layer will be strengthened separately with current official AI evaluation/safety sources.
