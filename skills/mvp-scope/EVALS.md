# MVP Scope Evals

These scenarios test whether `mvp-scope` produces the smallest coherent outcome-oriented release rather than a flat prioritized backlog or a low-quality fragment.

Each eval includes expected behavior and failure conditions.

## Eval 1 - "MVP means minimum features"

**Prompt**

"Give me the absolute minimum number of features for this app."

**Expected**

- Clarifies target user, outcome, and release purpose before minimizing.
- Explains that feature count alone does not define viability.

**Fail if**

- Produces an arbitrary short feature list with no outcome anchor.

## Eval 2 - Flat backlog slice

**Evidence**

The backlog has 40 items sorted by stakeholder priority.

**Prompt**

"Take the top 10 and call them MVP."

**Expected**

- Refuses to assume top backlog items form a coherent release.
- Maps the end-to-end user story and slices across it.

**Fail if**

- Uses the first N items as V1 without checking coherence.

## Eval 3 - Backend-only "MVP"

**Prompt**

"For V1, let's build the database, API, auth service, and event pipeline. UI can come later."

**Expected**

- Flags this as engineering output, not a customer-value release.
- Allows it only if the explicit purpose is a technical learning/spike.

**Fail if**

- Calls the backend layer a product MVP by default.

## Eval 4 - Narrow segment beats broad weak release

**Prompt**

"We can support iOS and Android poorly by the deadline or iOS well. Most early target users are on iOS."

**Expected**

- Considers platform narrowing if Android is not required for the target outcome.
- Preserves coherent quality on iOS.

**Fail if**

- Assumes both platforms must ship because the long-term product needs both.

## Eval 5 - Cheap feature creep

**Prompt**

"Dark mode only takes two hours. Add it to V1."

**Expected**

- Asks whether it contributes to the current outcome, viability, constraint, or quality bar.
- Can defer it even if cheap.

**Fail if**

- Includes every cheap item automatically.

## Eval 6 - Quality cut disguised as scope cut

**Prompt**

"To ship faster, let's skip error states and make the payment flow occasionally lose the transaction. It's only MVP."

**Expected**

- Rejects the cut because reliability/data integrity is core to viability and trust.
- Suggests reducing breadth instead.

**Fail if**

- Accepts severe quality degradation as MVP behavior.

## Eval 7 - Fancy polish vs core usability

**Prompt**

"We need to cut. Options: custom animations or clear recovery from failed upload."

**Expected**

- Preserves critical recovery and cuts optional polish unless brand/context evidence says otherwise.

## Eval 8 - Fixed-date market window

**Evidence**

A sports app must launch before a tournament. Full social profiles will add three weeks.

**Expected**

- Anchors on tournament outcome and core target users.
- Defers profile depth if it does not enable the launch outcome.
- Uses Cost of Delay/time-window logic.

## Eval 9 - Impossible fixed constraints

**Prompt**

"Date cannot move, every feature is mandatory, quality cannot change, team cannot change. Make it fit."

**Expected**

- Surfaces the contradiction.
- Does not invent feasibility.
- Requires renegotiation of at least one constraint or states the plan is infeasible.

## Eval 10 - Feature request from CEO

**Prompt**

"CEO says advanced reporting is must-have."

**Expected**

- Treats authority as a constraint/request, not evidence of user necessity.
- Asks what breaks or what outcome it serves.

**Fail if**

- Labels it product-critical solely because of seniority.

## Eval 11 - Competitor parity

**Prompt**

"Competitor has 25 filters, so our MVP needs 25 filters too."

**Expected**

- Checks which filters are actual table stakes for the chosen target segment/value proposition.
- Supports a narrower useful filter set if evidence allows.

## Eval 12 - One full job vs many partial jobs

**Prompt**

"We can support five workflows at 30% depth or one high-value workflow end to end."

**Expected**

- Prefers the narrow complete job when it better supports the target outcome.

## Eval 13 - Must-have removal test

**Candidate item**

"Custom themes"

**Evidence**

No customer evidence, no dependency, no quality/legal constraint.

**Expected**

- Fails the removal test and moves to later/out of scope.

## Eval 14 - Real enabling dependency

**Candidate item**

A confirmation receipt is legally required after transaction completion.

**Expected**

- Keeps it even if it is not a differentiating customer feature.
- Classifies as hard constraint/guardrail.

## Eval 15 - Fake technical dependency

**Prompt**

"Engineering says we need a complete microservice platform before adding the first export flow."

**Expected**

- Requests evidence for the dependency.
- Explores a simpler maintainable architecture for approved scope.

**Fail if**

- Accepts speculative architecture as product scope.

## Eval 16 - Manual before automation

**Evidence**

A startup can manually review 20 weekly submissions for the first month safely.

**Expected**

- Considers manual operations to defer expensive automation if it preserves the target experience and learning.
- Makes operational limits explicit.

## Eval 17 - Manual workaround does not scale enough

**Evidence**

Launch requires 100,000 transactions/day and manual review would block most users.

**Expected**

- Does not propose manual work as viable V1 merely because it is cheaper.

## Eval 18 - Multi-actor marketplace

**Prompt**

"Scope the buyer app first; we'll think about seller supply later."

**Expected**

- Maps both sides of the value exchange if seller participation is necessary for buyer value.
- Includes minimum supply/liquidity conditions.

## Eval 19 - B2B buyer/user split

**Evidence**

Buyer needs audit controls; end users need fast workflow completion.

**Expected**

- Maps both roles if the sale and usage both must work for V1.
- Does not optimize only the user UI while ignoring a purchase-blocking buyer requirement.

## Eval 20 - Outcome-driven release roadmap

**Prompt**

"Make a roadmap: V1 search, V1.1 notifications, V2 social."

**Expected**

- Reframes releases around desired outcomes first, then maps scope beneath them.
- Keeps later feature plans provisional.

## Eval 21 - Over-planning future versions

**Prompt**

"Specify every feature in V1 through V4 before we test V1."

**Expected**

- Limits detailed planning beyond near-term slices.
- Notes later scope should change with evidence.

## Eval 22 - Scope for learning, not delivery

**Prompt**

"We need to know whether users will pay for personalized plans. What's the MVP?"

**Expected**

- Clarifies that the minimum may be a learning experiment, not a durable product release.
- Routes to `product-experiment` when appropriate.

## Eval 23 - Discovery still unresolved

**Prompt**

"We don't know who the product is for or which problem matters, but define V1."

**Expected**

- Routes back to strategy/discovery/research.
- Does not invent a scope from weak assumptions.

## Eval 24 - Solution still unvalidated and expensive

**Evidence**

A 5-month AI automation is the chosen idea, but core desirability is unknown.

**Expected**

- Routes to product-experiment before committing release scope.

## Eval 25 - Existing feature, narrow obstacle

**Evidence**

Analytics/research show users abandon export because the destination selector is unclear.

**Expected**

- Scopes the smallest coherent intervention around the obstacle.
- Avoids turning it into a complete export-center redesign without evidence.

## Eval 26 - Scope creep or understanding growth

**Evidence**

During mapping, team discovers a required recovery step that was previously omitted.

**Expected**

- Treats it as newly discovered required work, not automatically as optional scope creep.
- Rebalances the slice if needed.

## Eval 27 - Genuine stakeholder expansion mid-build

**Prompt**

"While we're here, sales wants custom PDF branding too."

**Expected**

- Evaluates relation to the current outcome.
- Defers if it is a new optional opportunity.

## Eval 28 - Equal ROI, different size

**Evidence**

Two optional items have roughly similar expected value/effort ratio; one takes 2 days, one takes 3 weeks.

**Expected**

- Prefers the smaller item when no other constraint dominates because value/feedback arrive sooner.

## Eval 29 - False precision in ROI

**Evidence**

No reliable value estimates exist.

**Prompt**

"Give each feature a ROI score to two decimals."

**Expected**

- Refuses false precision.
- Uses relative estimates such as high/medium/low if useful and labels them hypotheses.

## Eval 30 - High value, low urgency

**Evidence**

A capability is valuable but no current users depend on it and delay has little consequence.

**Expected**

- Does not confuse value with urgency in Cost of Delay.

## Eval 31 - Medium value, extreme urgency

**Evidence**

A moderate-value compliance change must ship before a legal deadline.

**Expected**

- Prioritizes based on real urgency/hard constraint.

## Eval 32 - Edge case with severe harm

**Evidence**

A rare failure could expose private user data.

**Expected**

- Keeps mitigation despite rarity due to severity/privacy risk.

## Eval 33 - Rare low-impact edge case

**Evidence**

0.1% of users may see a cosmetic alignment issue with an easy workaround.

**Expected**

- Can defer if it does not affect trust, accessibility, or core viability.

## Eval 34 - Analytics cut from MVP

**Prompt**

"To save one day, remove all instrumentation. We'll know from reviews if it works."

**Expected**

- Preserves decision-critical measurement.
- May reduce instrumentation breadth, not eliminate ability to assess the outcome.

## Eval 35 - Shipped equals done

**Prompt**

"V1 shipped, so the feature is done. Move on."

**Expected**

- Checks whether target outcome was reached.
- Treats V1 as hypothesis and supports iteration/rollback if needed.

## Eval 36 - AI assistant over-scope

**Prompt**

"For AI assistant V1, add memory, tool use, multi-model routing, voice, images, web search, and agents."

**Expected**

- Starts from the narrow customer value loop.
- Defers capabilities not required for the first outcome.

## Eval 37 - AI quality control is core

**Evidence**

Incorrect AI output could cause material customer loss.

**Expected**

- Includes necessary quality/fallback/human review guardrails even if they add scope.

## Eval 38 - AI manual operation

**Evidence**

Human experts can safely produce the output for 30 beta users while the team learns what "good" means.

**Expected**

- Considers manual/semi-manual V1 or experiment before full AI automation.

## Eval 39 - Premature scale architecture

**Prompt**

"We have 200 beta users but should build for 100 million now."

**Expected**

- Requests evidence that this scale is a current constraint.
- Targets credible near-term load plus safety margin.

## Eval 40 - Platform requirement

**Evidence**

App-store policy requires account deletion for launch.

**Expected**

- Treats deletion as hard release constraint even if it does not drive differentiation.

## Eval 41 - Standard solved capability

**Prompt**

"We need password reset. Let's invent a unique recovery system."

**Expected**

- Uses established safe platform patterns unless differentiation/context requires otherwise.
- Minimizes custom scope.

## Eval 42 - Capacity available, no need to fill it

**Prompt**

"The team has one spare week before release. Add anything useful."

**Expected**

- Does not fill capacity by default.
- Prioritizes de-risking, quality, measurement, or simply shipping earlier when extra features do not improve the outcome.

## Eval 43 - Fixed date, cut core value

**Prompt**

"To hit Friday, remove the only way users can view the result after creating it."

**Expected**

- Flags that the release becomes incoherent.
- Suggests narrower target/use case/date alternative instead.

## Eval 44 - Coherent vertical slice

**Prompt**

"We have auth, create, edit, share, billing, admin. How should we slice?"

**Expected**

- Maps user story and selects simplest end-to-end path needed for first value.
- Does not complete each subsystem fully before integrating.

## Eval 45 - Multiple login methods

**Evidence**

Email login is sufficient for target users. Apple/Google/social login are not launch requirements.

**Expected**

- Can ship one login path and defer the rest.

## Eval 46 - Accessibility is required for target context

**Evidence**

The contracted product must meet specified accessibility obligations.

**Expected**

- Treats required accessibility as quality/hard constraint, not optional polish.

## Eval 47 - Delight can be part of viability

**Evidence**

The product competes in a highly emotional consumer category where the first-use experience is the primary differentiator.

**Expected**

- Does not mechanically defer all delight/polish.
- Includes the minimum differentiating quality needed for the value proposition.

## Eval 48 - Cheap integration with large support surface

**Prompt**

"Integration takes one day to code. Add it."

**Evidence**

It adds long-term support, QA, permissions, and customer-service complexity.

**Expected**

- Evaluates operational burden, not coding effort alone.

## Eval 49 - Architecture question discovered by Codex

**Situation**

Coding agent discovers an unresolved product choice about whether data is permanently deleted or recoverable for 30 days.

**Expected**

- Requires the agent to surface the product question rather than silently choose behavior.

## Eval 50 - Implementation agent adds settings

**Situation**

Spec does not include settings, but coding agent wants to add a settings screen because "apps usually have one."

**Expected**

- Blocks speculative product expansion.
- Keeps explicit out-of-scope boundary.

## Eval 51 - New estimate changes V1

**Evidence**

A formerly small item is now estimated at six weeks and is not core to the outcome.

**Expected**

- Re-runs scope decision and likely defers/narrows it.
- Does not preserve inclusion merely because it was originally planned.

## Eval 52 - New estimate changes a critical-path item

**Evidence**

A true critical-path capability is now estimated at six weeks.

**Expected**

- Does not simply cut it and declare V1 unchanged.
- Explores alternative mechanism, narrower segment/use case, date change, or experiment.

## Eval 53 - User story is too large

**Story**

"As a creator, I want a complete social publishing suite."

**Expected**

- Breaks it into smaller benefit-oriented chunks and identifies the smallest valuable path.

## Eval 54 - Future flexibility request

**Prompt**

"Build a generic rules engine because someday pricing might become complex."

**Expected**

- Requests current evidence/constraint.
- Prefers simpler current behavior if future flexibility is speculative.

## Eval 55 - Outcome absent

**Prompt**

"Our release goal is to launch the new dashboard."

**Expected**

- Identifies "launch dashboard" as output.
- Asks what user/business behavior the dashboard should change before detailed scoping.

## Eval 56 - Scope item is measurement only

**Candidate**

An event tracking first successful session completion.

**Expected**

- Can include it as learning/measurement even though users do not see it.
- Ties it to the release decision.

## Eval 57 - Good "not now" list

**Prompt**

"Should V1 include web, localization, themes, admin roles, export, collaboration, and notifications?"

**Evidence**

Only mobile single-user core workflow is required to test first value.

**Expected**

- Creates a strong explicit out-of-scope list.
- Does not imply all deferred items are committed roadmap work.

## Eval 58 - Harmful fake narrow scope

**Prompt**

"Let's serve only the easiest users, even though they are not our target segment, because the MVP will be faster."

**Expected**

- Rejects narrowing that invalidates the product hypothesis.
- Keeps target segment aligned with intended strategy/outcome.

## Eval 59 - Mandated work with minimal scope

**Evidence**

Regulator requires a specific consent change. Go/no-go is not open.

**Expected**

- Does not run unnecessary product discovery.
- Scopes the smallest compliant coherent change, affected flows, measurement/monitoring, and edge cases.

## Eval 60 - Final subtraction pass

**Situation**

A coherent V1 exists.

**Expected**

- Performs one final removal/narrowing pass.
- If an item can be removed without breaking outcome, viability, constraint, or learning, it is deferred.

**Fail if**

- Stops scoping as soon as the first plausible V1 is found.
