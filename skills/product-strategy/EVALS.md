# Product Strategy Evals

Use these scenarios to test whether the skill behaves as intended. Evaluate decisions and routing, not wording.

## 1. Solution-first new product

**Prompt**

"I want to build an AI habit coach for everyone. Give me the product strategy."

**Expected behavior**

- Does not accept "everyone" as a useful segment.
- Does not invent demand, TAM, or customer quotes.
- Separates the proposed AI coach solution from the underlying customer problem.
- Produces a provisional strategy only with explicit assumptions, or asks only the few questions that materially change direction.
- Defines a learning agenda for target segment and need validation.

**Failure**

- Generates a confident roadmap of AI chat, streaks, reminders, gamification, and subscriptions as if validated.

## 2. Feature parity pressure

**Prompt**

"Our main competitor added an AI search button. Should that become one of our strategic priorities?"

**Expected behavior**

- Treats competitor behavior as a signal, not proof of customer value.
- Asks/assesses which customer need the feature addresses and whether it advances the strategy/outcome.
- Includes current alternatives and differentiator logic.
- Recommends pursue/investigate/defer/reject rather than blindly copying.

**Failure**

- Says feature parity is strategically necessary without evidence.

## 3. Everyone is the target market

**Prompt**

"Our target audience is adults 18-65 who use smartphones."

**Expected behavior**

- Challenges this as too broad unless the product truly has homogeneous needs.
- Moves toward behavioral or needs-based segmentation.
- Uses demographics only if they materially affect needs, economics, or adoption.

**Failure**

- Builds a decorative persona around age, gender, and income without strategic relevance.

## 4. B2B buyer and user differ

**Prompt**

"We are building analytics software used by UA managers but bought by Heads of Marketing and sometimes procurement. Help define strategy."

**Expected behavior**

- Separates end-user, economic buyer, and blockers/stakeholders.
- Captures potentially different needs for usage, business value, security/procurement, and adoption.
- Does not collapse them into one persona.

## 5. Output disguised as outcome

**Prompt**

"Our Q4 product outcome is launch the Android app."

**Expected behavior**

- Flags launch as output.
- Recovers the intended customer/business change.
- Suggests a product outcome with solution latitude if strategy is still open.
- Keeps launch as a delivery milestone if it is mandated.

**Failure**

- Accepts launch completion as impact without question.

## 6. Traction metric too early

**Prompt**

"We have not validated the new recommendations feature yet. The team's outcome is increase recommendation-widget clicks by 30%."

**Expected behavior**

- Recognizes a solution-shaped traction metric.
- Reframes toward the customer behavior/problem the team should influence.
- Keeps widget clicks as a downstream diagnostic metric, not the open-discovery strategic outcome.

## 7. Mature optimization exception

**Prompt**

"We have years of evidence that completion of onboarding step 3 predicts activation. The team is dedicated to optimizing step-3 completion."

**Expected behavior**

- Allows a traction metric because broader discovery questions are already settled.
- Does not force a new strategy exercise.
- Likely routes to `product-metrics`, `product-discovery`, `product-experiment`, or `product-spec` depending on the specific task.

## 8. Too many strategic intents

**Prompt**

"Our startup has 12 strategic priorities this year: acquisition, retention, subscriptions, ads, creator tools, social, AI, B2B, new geos, web, Android tablets, and partnerships."

**Expected behavior**

- Flags lack of focus.
- Groups work around a very small number of business-level intents.
- Makes explicit what is deferred.
- Does not simply reorganize the 12 items into a prettier list.

## 9. Contradictory positioning

**Prompt**

"We want to be the cheapest, most premium, easiest, most configurable product for beginners and experts."

**Expected behavior**

- Identifies strategic contradiction.
- Forces trade-offs in target segment and performance dimensions.
- Produces explicit choices and non-goals.

## 10. Product principles

**Prompt**

"Create product principles for a privacy-sensitive finance app."

**Expected behavior**

- Produces prioritized trade-off rules, not generic slogans.
- Example shape: when convenience conflicts with explicit user control for sensitive actions, prefer explicit control.
- Labels assumptions if actual company/customer evidence is absent.
- Distinguishes product principles from detailed UI/design rules.

## 11. Major opportunity assessment

**Prompt**

"We have a mobile subscription app and are considering launching a B2B version. Should we pursue it?"

**Expected behavior**

- Uses opportunity assessment mode.
- Covers problem, target, potential importance, success outcome, alternatives, why us, why now, go-to-market implications, constraints, and recommendation.
- Does not invent B2B market size or conversion assumptions.
- May recommend investigate further if key economics/customer evidence is missing.

## 12. Mandated work

**Prompt**

"A platform policy requires us to add account deletion. Do a product strategy exercise first."

**Expected behavior**

- Recognizes that the go/no-go decision is fixed externally.
- Does not waste time questioning whether users want account deletion.
- Captures strategic/user trust implications only if useful.
- Routes toward scope/specification for the required behavior.

## 13. Customer request as strategy

**Prompt**

"Our largest customer wants a custom reporting dashboard. Should this be our roadmap priority?"

**Expected behavior**

- Does not equate the loudest/largest customer request with strategy.
- Separates the requested solution from the underlying need.
- Assesses segment fit, broader opportunity, business value, strategic intent, and whether the product is intentionally bespoke.

## 14. Product initiative vs option

**Prompt**

"Our strategic intent is to improve individual-user revenue. We think push notifications are the initiative."

**Expected behavior**

- Identifies push notifications as an option/solution, not a product initiative.
- Derives a problem/opportunity area or product outcome first.
- Keeps multiple possible solutions open.

## 15. Strategy review

**Prompt**

"Here is our strategy: launch social feed, AI coach, referral program, dark mode, widgets, and web version by December. Review it."

**Expected behavior**

- Flags feature-list / plan masquerading as strategy.
- Looks for missing target segment, need space, value proposition, outcomes, strategic choices, principles, and non-goals.
- Does not merely reprioritize the feature list.

## 16. Learning goal before performance goal

**Prompt**

"We have never worked on retention before. Set a challenging quarterly retention target for the product team."

**Expected behavior**

- Does not fabricate a percentage target without baseline/evidence.
- Suggests an initial learning goal to identify drivers/leading indicators if the team lacks causal understanding.
- Routes to research/discovery/metrics.

## 17. Portfolio overlap

**Prompt**

"We have three apps that increasingly solve the same user problem. How should we think about strategy?"

**Expected behavior**

- Uses portfolio mode.
- Evaluates how products work together, unique value, overlap, target segments, investment, and what to stop/merge/maintain/explore.
- Does not assume every existing product must survive.

## 18. Weak evidence but decision required

**Prompt**

"We need a strategy draft for tomorrow. We only have founder intuition and a few support tickets."

**Expected behavior**

- Produces a provisional strategy if useful.
- Explicitly labels evidence quality and assumptions.
- Does not block the task waiting for perfect research.
- Includes the minimum learning agenda that could invalidate the strategy.
