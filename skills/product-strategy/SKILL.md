---
name: product-strategy
description: Create or review decision-enabling product strategy. Use when the main uncertainty concerns target customers, underserved needs, value proposition, product vision, business and product outcomes, strategic trade-offs, product principles, major product initiatives, opportunity assessment, portfolio fit, pivots, or why a product opportunity matters now. Do not use as a feature roadmap generator or for detailed solution design when strategy is already settled.
---

# Product Strategy

## Mission

Create a product strategy that helps people make better decisions under uncertainty.

A strategy is not a feature list, delivery plan, annual roadmap, or collection of ambitions. It is a coherent decision framework that connects business direction to customer value and narrows the space of plausible product choices.

Optimize for:

- focus;
- customer value;
- business value;
- strategic coherence;
- explicit trade-offs;
- team autonomy within useful constraints;
- measurable outcomes;
- adaptability as evidence changes.

The strategy should answer, at the appropriate level:

`Where are we trying to go? -> Where are we now? -> Who are we serving? -> What important problem/need space matters? -> What value will we create better than alternatives? -> What outcomes should change? -> What choices constrain our path? -> Which problem areas should we pursue next?`

Do not answer "what should we build?" before the strategy has established why the work matters and what success means, unless the solution is already mandated or the relevant strategic questions are settled.

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

## Evidence discipline

Maintain explicit epistemic labels when uncertainty matters:

- `FACT` - explicitly supplied or directly observable information.
- `EVIDENCE` - customer research, behavioral data, market data, analytics, experiment results, or other information that supports or weakens a belief.
- `ASSUMPTION` - something treated as true without sufficient evidence.
- `HYPOTHESIS` - a testable prediction about a relationship or expected result.
- `DECISION` - a choice made from current evidence, constraints, trade-offs, and risk.
- `OPEN QUESTION` - an unresolved question that could change the strategy.

Rules:

- Never invent market evidence, customer preferences, market size, competitor performance, or causal relationships.
- Do not turn a plausible segment, need, differentiator, or outcome into a fact because it sounds reasonable.
- AI-generated personas, customer quotes, market reactions, and demand estimates are hypotheses unless grounded in actual evidence.
- If evidence is weak but a provisional strategy is still useful, produce one and label the weak points instead of pretending certainty.
- If the user explicitly asks for outside research, separate source-derived strategy from external research or inference.

## First determine the strategy level

Do not mix levels accidentally.

Possible levels:

1. **Company direction** - company vision and strategic intents.
2. **Portfolio direction** - how multiple products work together and where investment should go.
3. **Product direction** - product vision, target customers, value proposition, outcomes, principles, and major product initiatives.
4. **Opportunity assessment** - whether a major product opportunity deserves deeper investment.
5. **Team direction** - a product outcome or product initiative that constrains discovery without prescribing a feature.

For a small single-product company, company vision and product vision may largely overlap. Do not create unnecessary hierarchy.

For a large multi-product organization, keep company vision, strategic intents, portfolio direction, product vision, product initiatives, and team outcomes distinct.

## Core vocabulary

Use these terms consistently.

### Vision

A durable description of where the company or product is going and the value it intends to create.

A useful product vision describes:

- who benefits;
- the problem or progress that matters;
- the main value/capabilities enabled;
- important qualities of the experience.

It should not enumerate a roadmap of features.

### Strategic intent

A small number of high-level, business-focused challenges or outcomes that move the company toward its vision over a meaningful time horizon.

Examples of shape, not reusable answers:

- expand into a strategically important customer segment;
- create a new revenue stream;
- materially improve retention in a core business line.

Strategic intents should not be feature mandates.

### Product initiative

A customer or product problem area the product organization chooses to tackle in service of a strategic intent.

A product initiative translates business direction into a problem that product teams can explore.

### Product outcome

A measurable change in customer/user behavior that the product team can materially influence and that is expected to contribute to a business outcome.

Prefer leading indicators inside the team's span of influence over lagging company metrics when possible.

### Traction metric

Usage of a specific feature, workflow, or solution.

A traction metric can be useful for mature optimization, but it is often too solution-specific to serve as a strategic product outcome during open discovery.

### Option / bet

A possible solution or tactic that may address a product initiative or move a product outcome.

Options are not strategy commitments. They can be changed or killed while the strategic direction remains stable.

### Product principle

A durable, prioritized rule for recurring product trade-offs.

A useful principle makes a real decision easier. It is not a generic aspiration such as "high quality" or "easy to use."

## Strategy modes

Choose the narrowest mode that matches the user's decision.

### Mode A: Create product strategy

Use for a new product, pivot, major repositioning, or product with unclear direction.

### Mode B: Review existing strategy

Use when the user provides a strategy, roadmap, product thesis, or set of priorities and wants critique, diagnosis, or refinement.

### Mode C: Assess a major opportunity

Use before committing significant resources to a new product, market, platform, or major initiative.

The goal is a lightweight go-forward / do-not-pursue / investigate-further decision, not a full solution spec.

### Mode D: Choose a target segment or strategic focus

Use when multiple customer segments, need spaces, or market directions compete for attention.

### Mode E: Define outcomes and strategic guardrails

Use when business direction exists but teams lack a useful product outcome, product principles, or decision boundaries.

### Mode F: Portfolio strategy

Use when the decision concerns multiple products, overlap, investment allocation, product-system coherence, or what to stop doing.

## Boundary with `product-metrics`

`product-strategy` owns the intended business/product outcomes and strategic trade-offs. `product-metrics` operationalizes those outcomes into measurable definitions, drivers, guardrails, baselines, targets, instrumentation, and experiment scorecards.

Do not change strategy merely because an easier metric exists. If the intended outcome cannot be measured directly, keep the strategic outcome explicit and label measurable proxies as hypotheses to be validated.

## Main workflow

### 1. Frame the strategic decision

Determine:

- what decision must be made;
- what level the decision belongs to;
- what time horizon matters;
- whether the strategy is provisional, committed, or under review;
- what is already fixed by leadership, regulation, contracts, platform rules, or previous decisions.

Do not reopen fixed decisions unless the user asks to challenge them or new evidence makes the constraint relevant.

### 2. Establish business direction and current state

Capture only the context that affects the strategic choice:

- company/product vision, if it exists;
- current strategic intent or business priority;
- business model and value exchange;
- relevant business outcome;
- current baseline or present condition;
- capabilities and constraints;
- market or technology changes that make the timing relevant;
- important portfolio or channel dependencies.

Use the Product Kata logic when helpful:

`Direction -> Current state -> Biggest obstacle -> Next goal -> Learn -> Adjust`

A strategy should bridge the gap between current state and desired direction. Do not produce a static aspiration without diagnosing what stands in the way.

If business context is absent and materially changes the recommendation, ask for it. Otherwise make a clearly labeled assumption.

### 3. Define the target customer and market boundary

Identify the segment whose needs and behavior the strategy is optimizing for.

Clarify when relevant:

- end user;
- buyer/economic buyer;
- decision-maker;
- blockers or required stakeholders;
- behavioral context;
- needs-based segment;
- adoption maturity / willingness to try a new solution;
- geography, platform, or other attributes only when they affect needs, economics, adoption, or delivery.

Prefer behavioral and needs-based segmentation over decorative demographic detail.

For B2B, do not assume the user and buyer are the same person. Their needs may differ.

Explicitly state who is not the strategic target when that exclusion matters.

Treat the target segment as a hypothesis when it has not been validated. A product may attract a different segment than originally intended.

### 4. Map the problem and underserved-need space

Describe needs from the customer's perspective, not as missing features.

Useful forms include:

- desired progress;
- job or user goal;
- pain point;
- unmet or underserved need;
- constraint;
- dissatisfaction with an existing alternative;
- costly workaround;
- reason a desired behavior does not happen today.

Bad:

`Users need an AI assistant.`

Better:

`Users cannot reliably complete X because Y, and their current workaround costs Z.`

For each strategically relevant need, capture when available:

- evidence/frequency;
- importance;
- current satisfaction;
- current alternatives/workarounds;
- root cause or context;
- affected segment;
- whether the need is prerequisite to another need.

Prefer important, poorly satisfied needs as candidate opportunity areas. Do not mechanically score importance/satisfaction when the underlying data does not exist.

Avoid optimizing for low-importance dissatisfaction simply because it is easy to observe.

### 5. Define the value proposition as choices

A value proposition is not a list of everything the product can do.

State:

- which customer needs the product will address;
- which needs are table stakes / must-haves;
- on which performance dimensions the product intends to compete;
- which differentiators or delighters may create excess value;
- which needs or dimensions the product will deliberately not optimize for;
- how the product is expected to be better or meaningfully different from relevant alternatives.

Relevant alternatives include:

- direct competitors;
- indirect competitors;
- manual workarounds;
- existing habits/processes;
- non-consumption, when applicable.

Strategy requires saying no. If every benefit is a priority and every dimension must be best-in-class, the strategy has not made a choice.

When useful, create a value-proposition matrix:

| Customer benefit | Importance/evidence | Alternative A | Alternative B | Our intended position |
| --- | --- | --- | --- | --- |

Do not invent scores. Use qualitative labels if that is all the evidence supports.

Consider not only the current competitive state but plausible future shifts when the time horizon makes them material.

### 6. Define or refine the product vision

Use this step when the request is product-level or when the existing vision is too vague to guide decisions.

A product vision should communicate:

- target customer;
- important problem/progress;
- core value proposition;
- high-level capabilities or qualities that enable the value;
- why the product belongs in the company's direction.

Keep it durable enough to survive multiple feature iterations.

Do not make the vision so specific that it freezes discovery or turns into a roadmap.

If the product is already mature and the vision is clear, do not rewrite it just for completeness.

### 7. Connect business outcomes to product outcomes

Distinguish three levels:

- **Business outcome** - financial or strategic result for the business.
- **Product outcome** - customer/user behavior the product team can materially influence and that is expected to drive the business result.
- **Traction metric** - usage of a specific solution or workflow.

Build the causal chain explicitly:

`Product outcome -> expected mechanism -> business outcome`

Label that causal relationship as a hypothesis unless evidence supports it.

Prefer product outcomes that:

- are within the team's meaningful span of influence;
- are leading indicators when possible;
- preserve solution latitude;
- can be measured on a useful decision cadence;
- represent customer behavior or value, not output completion.

Bad strategic outcome:

`Launch the Android app.`

Better shape:

`Increase successful mobile completion of the core workflow.`

Be careful with solution-shaped traction metrics such as "increase engagement with feature X." Use them as team goals only when the solution is already validated and the work is clearly an optimization problem.

When the team is entering an unfamiliar outcome or does not yet know what drives it, prefer a learning goal before a precise performance target.

Choose one primary product outcome when possible and pair it with health/guardrail metrics so local optimization does not damage the wider product or customer experience.

### 8. Make explicit strategic choices

Translate the strategy into choices that exclude plausible alternatives.

Examples of strategic choice shapes:

- serve segment A before segment B;
- solve need X before adjacent need Y;
- win on speed and simplicity rather than configurability;
- deepen a core use case rather than expand the surface area;
- use self-serve distribution rather than high-touch service;
- protect retention even if it limits short-term acquisition growth.

For every major choice, ask:

1. What are we choosing?
2. What plausible alternative are we rejecting or deferring?
3. Why does this choice fit the target customer, evidence, capabilities, and business direction?
4. What would make us revisit the choice?

A statement that excludes nothing is usually an aspiration, not a strategic choice.

### 9. Define prioritized product principles

Create only the principles that materially improve recurring decisions.

A strong product principle:

- applies across many feature decisions;
- expresses a meaningful priority or belief;
- distinguishes what is strategic/fundamental from what is tactical/temporary;
- can reject an otherwise reasonable option;
- is prioritized relative to conflicting principles.

Prefer forms such as:

`When X conflicts with Y, prefer X because Z, unless condition C applies.`

Avoid:

- "make it intuitive";
- "high quality";
- "customer first" without a concrete trade-off;
- feature-specific instructions;
- design rules disguised as product strategy.

### 10. Translate strategy into product initiatives, not feature commitments

Identify a small number of problem/opportunity areas where product work could advance the strategic intent and product outcome.

A good product initiative:

- describes a customer or product problem to solve;
- ties to a product/business outcome;
- is broad enough to allow multiple solution options;
- is narrow enough to give a team useful direction;
- fits the product vision and target segment.

Do not turn the strategy output into a disguised feature roadmap.

Possible solutions are `options` or `bets`. Keep them separate from the initiative unless the solution is already mandated or validated.

When several initiatives compete, evaluate them using strategic fit and evidence before implementation detail. Useful considerations include:

- expected customer value;
- contribution to the primary outcome;
- strategic fit;
- urgency / market window / cost of delay;
- strength of evidence;
- capability fit and major constraints;
- reversibility and downside risk.

Do not fabricate precise weighted scores. Use qualitative comparison when inputs are weak.

### 11. Define non-goals and portfolio boundaries

Explicitly state what is not part of the strategy now.

Examples:

- customer segments not being optimized for;
- needs being deferred;
- capabilities not required;
- markets not being entered;
- metrics not being maximized at the expense of the primary outcome;
- existing products/features that should stop receiving investment, when relevant.

For portfolio strategy, additionally ask:

- How do the products work together as a system to create customer value?
- What unique value does each product provide?
- Where is there redundant overlap?
- Which investments reinforce the vision?
- What should be stopped, merged, maintained, or explored?

Do not recommend innovation merely by adding work. Strategic focus often requires removing work and reserving capacity for the few bets that matter.

### 12. Build the learning agenda

Strategy contains uncertainty. Make the critical uncertainty visible.

List the beliefs that could invalidate the strategy, such as:

- target segment has the need at sufficient intensity;
- underserved need is important enough to change behavior;
- chosen differentiator matters relative to alternatives;
- product outcome is a leading indicator of the business outcome;
- market timing supports the bet;
- the business can deliver the intended value economically;
- current capabilities are sufficient or can be acquired.

For each material uncertainty, recommend the next specialized workflow:

- customer knowledge gap -> `customer-research`;
- opportunity/solution ambiguity -> `product-discovery`;
- risky solution assumption -> `product-experiment`;
- success metric ambiguity -> `product-metrics`;
- selected solution too broad -> `mvp-scope`;
- validated direction ready for build -> `product-spec`.

Do not attempt to resolve every strategic uncertainty inside this skill.

## Opportunity assessment mode

When the user asks whether to pursue a major opportunity, use a lightweight assessment before deep discovery.

Answer, with evidence labels where needed:

1. What exact problem/opportunity are we considering?
2. For whom?
3. How important or large could the opportunity be?
4. What outcome would indicate success?
5. What alternatives exist today?
6. Why might we be well suited to pursue it?
7. Why now?
8. What go-to-market or adoption constraints materially shape the product?
9. What critical success factors or constraints exist?
10. Recommendation: pursue, investigate further, defer, or reject.

Do not use this assessment to smuggle in a preferred solution. The first decision is whether the problem/opportunity deserves investment.

If market size, economics, or competitive claims are required but not supplied, identify them as research needs rather than inventing numbers.

## Strategy review mode

When reviewing an existing strategy, test it against these dimensions.

### Direction
- Is the desired future or strategic intent clear?
- Is the current state understood?
- Is the strategy addressing a real obstacle between the two?

### Customer focus
- Is the target segment explicit?
- Are user and buyer distinguished where relevant?
- Are needs framed from the customer perspective?

### Value proposition
- Is there a clear choice of needs to serve?
- Is the product meaningfully better/different on dimensions customers care about?
- Are relevant alternatives acknowledged?

### Outcomes
- Are outcomes actual results/behavior rather than deliverables?
- Is the product outcome within the team's influence?
- Is the causal link to business value explicit?
- Are guardrails present where local optimization could cause harm?

### Focus
- Does the strategy say no?
- Are there too many strategic intents, outcomes, segments, or initiatives?
- Are product principles decision-enabling and prioritized?

### Autonomy
- Does the strategy constrain the problem space while leaving solution latitude?
- Are teams being given outcomes/problems or predetermined feature lists?

### Adaptability
- Can options change when evidence changes without rewriting the entire strategy?
- Are major assumptions and review triggers visible?

### Coherence
- Do vision, segment, needs, value proposition, outcomes, initiatives, and principles reinforce each other?
- Or were they assembled independently and retrofitted into a document?

## Anti-patterns

Flag these explicitly when present.

### Feature-list strategy
A roadmap or backlog is presented as strategy.

### Plan masquerading as strategy
Detailed future actions are treated as certain before the problem/solution is validated.

### Everyone is the target customer
The strategy refuses to choose a segment.

### Feature-shaped problem
"Users need feature X" is treated as problem evidence.

### Competitor-parity strategy
"Competitor has X, therefore we need X" substitutes for customer value and strategic fit.

### Best at everything
The product claims every benefit, quality, segment, and channel is a priority.

### Output as outcome
Shipping, migration, redesign, or feature completion is treated as the impact.

### Traction metric as open-discovery outcome
The team is told to increase usage of a predetermined solution while being told it has solution autonomy.

### Too many outcomes
The team is spread across multiple primary outcomes and never develops learning depth on any of them.

### Metric without guardrails
A local metric can be improved while harming customer value or the broader business.

### Generic principles
Principles sound agreeable but cannot resolve a trade-off.

### Strategy by HiPPO or loudest customer
A single executive request or customer demand becomes strategy without checking broader fit.

### Precision theater
Weak evidence is converted into exact TAM, scores, forecasts, or impact estimates that create false confidence.

### Permanent strategy churn
Strategic direction changes whenever a new feature idea, competitor launch, or short-term metric moves.

### Frozen strategy
The strategy cannot adapt when evidence invalidates an important belief.

## Decision rules

- Prefer a few coherent strategic choices over a long inventory of goals.
- Prefer needs and outcomes over features when direction is still open.
- Prefer product outcomes over business outcomes for team-level accountability when the business outcome requires many functions.
- Prefer a learning goal before a performance goal when the team does not yet understand what drives the metric.
- Prefer established patterns for non-differentiating solved problems; reserve strategic experimentation for areas that matter to the value proposition.
- Prefer qualitative comparison over fake numerical precision when evidence is weak.
- Prefer a clear "not now" over pretending all opportunities can be pursued simultaneously.
- Treat strategy as durable direction plus revisable beliefs, not immutable implementation commitments.
- Keep options/bets reversible until evidence justifies higher commitment.

## Output contract

Adapt the level of detail to the request. Do not output every section when the user asked for one narrow strategic decision.

For a full product strategy, use this structure:

### 1. Strategy status
- Strategy level
- Decision being made
- Time horizon
- Confidence / evidence quality

### 2. Direction and current state
- Company/product vision
- Strategic intent / business priority
- Current condition
- Major obstacle or strategic gap
- Why now

### 3. Target customer
- Primary user/segment
- Buyer/decision-maker if different
- Segment boundaries
- Explicit non-targets

### 4. Problem space
- Priority underserved needs
- Current alternatives/workarounds
- Evidence
- Assumptions

### 5. Value proposition
- Customer value to create
- Table stakes
- Performance dimensions to win on
- Differentiation hypothesis
- Dimensions/needs deliberately not optimized

### 6. Outcomes
- Business outcome
- Primary product outcome
- Causal hypothesis
- Baseline if known
- Guardrails / health metrics
- Learning goal if needed

### 7. Strategic choices
For each major choice:
- Choice
- Rejected/deferred alternative
- Rationale
- Revisit trigger

### 8. Product principles
- Prioritized decision rules

### 9. Product initiatives
- A small set of problem/opportunity areas
- Expected contribution to outcome
- Evidence/confidence
- Do not list detailed features unless already mandated

### 10. Non-goals
- What is intentionally out of focus now

### 11. Strategic risks and learning agenda
- Highest-risk assumptions
- Evidence needed
- Next specialized workflow

## Handoff contract

A strategy is ready to hand downstream when there is sufficient clarity on:

- target customer/segment;
- strategic problem/need space;
- value proposition;
- business direction;
- primary product outcome or learning goal;
- meaningful strategic choices;
- major constraints and non-goals;
- the next product initiative or opportunity area.

Then route to:

- `product-discovery` to explore the opportunity and solution space;
- `customer-research` to close customer-evidence gaps;
- `product-experiment` to test a risky solution assumption;
- `product-metrics` to refine measurement;
- `mvp-scope` when a selected solution needs a coherent first release;
- `product-spec` when behavior is sufficiently selected and validated.

Do not jump from a strategy brief directly to detailed implementation when major product uncertainty remains.
