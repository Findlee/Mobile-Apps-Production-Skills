# Product Metrics Evals

These scenarios test whether `product-metrics` creates a trustworthy product decision system instead of a vanity dashboard or statistical cargo cult.

Each eval lists expected behavior and common failure modes.

## 1. Downloads as North Star

**Prompt**

"Our North Star is app downloads. Make the KPI tree."

**Expected**

- Challenges downloads as acquisition/output rather than realized customer value.
- Asks what recurring value users receive and what behavior represents it.
- May keep downloads as an acquisition diagnostic.

**Fail if**

- Accepts downloads as the North Star without scrutiny.

## 2. DAU as automatic North Star

**Prompt**

"Every app uses DAU. We'll use DAU as North Star too."

**Expected**

- Does not copy a famous metric by convention.
- Tests whether an active day actually represents customer value and strategy.

## 3. Small feature does not need company North Star

**Prompt**

"Change the export button copy. Define our North Star."

**Expected**

- Uses proportional rigor.
- Does not force a company-level framework onto a micro change.

## 4. Output disguised as outcome

**Prompt**

"Success metric: launch Android app by September."

**Expected**

- Labels this as output/milestone.
- Asks what user/business result the launch should create.

## 5. Feature usage is not necessarily success

**Prompt**

"We shipped AI summaries. Success is 50% of users clicking AI Summary."

**Expected**

- Treats click/use as adoption diagnostic unless it represents validated value.
- Defines downstream successful outcome and guardrails.

## 6. Business outcome too slow

**Prompt**

"Annual renewal is our goal, but we need to evaluate product changes in 2 weeks."

**Expected**

- Proposes validated leading/surrogate metrics.
- Labels causal relationship as hypothesis until supported.

## 7. Correlation is not causation

**Evidence**

Retained users send 5x more messages.

**Prompt**

"So messaging causes retention. Let's optimize message count."

**Expected**

- Rejects causal conclusion from correlation.
- Suggests experiment or stronger causal validation.

## 8. Gameable metric

**Prompt**

"Increase time in app by 30%."

**Expected**

- Asks whether more time means value or friction.
- Identifies ways the metric can be gamed.
- Suggests task success/value and guardrails.

## 9. CTR local optimization

**Evidence**

New home widget CTR +35%, total purchase conversion -4%.

**Expected**

- Does not call feature a win.
- Recognizes cannibalization/downstream harm.

## 10. Short-term revenue gaming

**Prompt**

"Maximize subscription revenue this week even if we show the paywall more often."

**Expected**

- Adds cancellation/refund/retention/trust guardrails.
- Separates short-term monetization from lifetime value.

## 11. Metric without denominator

**Prompt**

"Purchases increased 20%. Conversion improved."

**Expected**

- Requires denominator/eligible population before conversion claim.

## 12. Denominator changed

**Evidence**

Payers unchanged. Eligible users fell 15%. Purchase conversion increased.

**Expected**

- Explains ratio movement through denominator change.
- Does not infer improved purchase behavior automatically.

## 13. Ambiguous active user

**Prompt**

"Track monthly active users."

**Expected**

- Defines what "active" means.
- Prefers critical/value event if app open is insufficient.

## 14. Activation = signup

**Prompt**

"Activation is account_created because that's our first event."

**Expected**

- Challenges event availability as a reason.
- Looks for first meaningful value or validated leading behavior.

## 15. Onboarding complete false activation

**Evidence**

Users can complete onboarding without using the product's core job.

**Expected**

- Does not equate onboarding completion with activation.

## 16. Time to activation

**Prompt**

"Two users both activate, one in 5 minutes and one in 7 days. Does that matter?"

**Expected**

- Suggests time-to-value as a diagnostic/driver where appropriate.

## 17. Retention by app open

**Prompt**

"D7 retention = user opened the app on day 7."

**Evidence**

App is a workout product whose value comes from completing workouts.

**Expected**

- Proposes retention based on recurring critical event when appropriate.

## 18. Daily retention for monthly product

**Prompt**

"Our tax-prep app has terrible D7 retention."

**Expected**

- Questions natural usage interval before diagnosing churn.

## 19. D1/D7/D30 dogma

**Prompt**

"Every mobile app must optimize D1, D7, D30."

**Expected**

- Rejects universal cadence.
- Uses natural product usage behavior and business context.

## 20. New/current/resurrected lifecycle

**Prompt**

"Active users are flat. How do we know why?"

**Expected**

- Suggests decomposing into new/current/resurrected/churned users when useful.

## 21. Resurrected user interpretation

**Evidence**

MAU rose because many dormant users returned once, but few became current users.

**Expected**

- Does not call this durable retention growth.
- Separates resurrection from sustained current usage.

## 22. Funnel mirrors screens

**Prompt**

"Our funnel is Screen1 -> Screen2 -> Screen3 -> Screen4."

**Expected**

- Asks what behaviors/value states the screens represent.
- Prefers semantic steps where possible.

## 23. Attempt vs success

**Prompt**

"payment_started is our purchase conversion event."

**Expected**

- Requires payment success for completed purchase.
- Tracks attempt/failure separately for diagnostics.

## 24. Client vs server purchase truth

**Prompt**

"The app fires purchase_success when the user taps Buy."

**Expected**

- Identifies client tap as insufficient authoritative payment success.
- Recommends durable/server/receipt-confirmed state where applicable.

## 25. Identity merge

**Prompt**

"Anonymous users get a new ID when they sign in. Is that okay?"

**Expected**

- Flags cohort/retention/funnel/exposure implications.
- Requires explicit identity merge semantics.

## 26. Reinstall and retention

**Prompt**

"We identify users only by installation ID."

**Expected**

- Surfaces reinstall/device-change implications before interpreting user retention.

## 27. Event taxonomy by UI labels

**Prompt**

"Track green_button_clicked, blue_button_clicked, modal_button_clicked."

**Expected**

- Pushes toward semantic product events for decision-critical behavior.
- May keep UI telemetry as diagnostics.

## 28. Instrument everything

**Prompt**

"Track every tap and property just in case."

**Expected**

- Rejects indiscriminate collection.
- Uses decision relevance and privacy/data minimization.

## 29. Silent metric definition change

**Prompt**

"We changed active user from any_open to completed_core_action but kept the same metric name."

**Expected**

- Flags broken comparability.
- Requires version/date/migration annotation.

## 30. Baseline unknown

**Prompt**

"Set a target of +20% activation. We don't know current activation."

**Expected**

- Does not invent baseline or target rationale.
- Establishes baseline first or labels +20% as explicit aspiration only.

## 31. Arbitrary round target

**Prompt**

"Make retention target 50% because it sounds good."

**Expected**

- Requests customer/business/economic/historical rationale.

## 32. Benchmark misuse

**Prompt**

"Competitor has D30 25%, so ours must be 25%."

**Expected**

- Treats external benchmark as context, not automatic target.
- Notes definition/cohort/product differences.

## 33. Too many primary KPIs

**Prompt**

"Primary metrics: DAU, MAU, revenue, CTR, conversion, retention, sessions, shares, invites, NPS, support tickets."

**Expected**

- Creates hierarchy rather than co-primary list.

## 34. OEC useful

**Prompt**

"Experiment increases engagement but slightly hurts monetization. We face this trade-off every week."

**Expected**

- Considers explicit trade-off rules/OEC if organization has evidence for weights.
- Does not invent arbitrary weighting.

## 35. Arbitrary OEC weights

**Prompt**

"Set OEC = 0.7 retention + 0.3 revenue. No idea why 70/30, just seems reasonable."

**Expected**

- Rejects false precision.
- Keeps explicit trade-off decision until weights can be justified.

## 36. Experiment business metric too slow

**Prompt**

"Annual LTV is the only metric we care about. Run a 1-week A/B test."

**Expected**

- Distinguishes business goal from experiment-suitable early metric.
- Requires validated surrogate/driver.

## 37. Stock price as experiment metric

**Prompt**

"Test new onboarding and measure company stock price."

**Expected**

- Rejects as unattributable/insensitive for product experiment.

## 38. Hyper-local experiment metric

**Prompt**

"Test recommendation carousel. Primary = carousel CTR."

**Expected**

- Checks downstream task/value and cannibalization.

## 39. Experiment randomization unit

**Prompt**

"Randomize by user, but compute every pageview as independent."

**Expected**

- Flags analysis/randomization mismatch and naive variance risk.
- Does not invent correction; defers to validated statistical method/platform.

## 40. Account-level B2B experiment

**Prompt**

"Users inside the same company collaborate. Randomize each user independently."

**Expected**

- Flags interference/contamination risk.
- Considers account/team randomization where appropriate.

## 41. Triggered experiment

**Prompt**

"Only 5% of users ever see the new checkout option. Analyze all users equally."

**Expected**

- Considers triggered analysis and overall treatment effect.
- Requires unbiased trigger/exposure instrumentation.

## 42. Trigger bias

**Evidence**

Treatment itself changes whether the trigger event is emitted.

**Expected**

- Flags triggered analysis as potentially biased.

## 43. No exposure event

**Prompt**

"We know users were assigned, but not whether they actually saw the feature."

**Expected**

- Distinguishes assignment from exposure.
- Explains measurement limitation.

## 44. SRM small percentage

**Evidence**

Expected 50/50. Observed 50.3/49.7 with millions of users. SRM test strongly rejects expected ratio.

**Prompt**

"It's only 0.6 percentage points. Ignore it?"

**Expected**

- Does not ignore SRM based on percentage size.
- Treats experiment results as untrustworthy until cause resolved.

## 45. SRM plus positive primary

**Evidence**

Primary +8%, p < 0.001, severe SRM.

**Expected**

- Does not declare win.
- Trust check precedes interpretation.

## 46. A/A test purpose

**Prompt**

"Why waste traffic on A/A tests if both experiences are identical?"

**Expected**

- Explains platform/variance/bias/false-positive/system-of-record validation roles.

## 47. Require A/A every feature

**Prompt**

"Should we run a new A/A test before every A/B?"

**Expected**

- Does not turn A/A into ritual.
- Recommends validated/continuous platform-level checks appropriate to infrastructure.

## 48. p-value misconception

**Evidence**

p = 0.03.

**Prompt**

"So Treatment has a 97% chance of being better?"

**Expected**

- Corrects interpretation.

## 49. Non-significant = no effect

**Evidence**

Effect +4%, 95% CI [-3%, +11%].

**Prompt**

"p > 0.05, so there is no effect."

**Expected**

- Calls result uncertain/inconclusive.
- Notes CI includes meaningful positive and negative values.

## 50. Tight null

**Evidence**

Effect +0.1%, 95% CI [-0.3%, +0.5%]. Product only cares about changes >= 3%.

**Expected**

- Can conclude the test rules out a practically meaningful effect under assumptions, even if exact effect is not zero.

## 51. Huge traffic tiny significant effect

**Evidence**

Revenue +0.02%, p < 0.001, engineering/operating cost substantial.

**Expected**

- Separates statistical from business significance.

## 52. Power without MDE

**Prompt**

"Calculate sample size."

**Evidence**

No baseline, variance, MDE, alpha, allocation, or power target provided.

**Expected**

- Requests required inputs or states calculation cannot be responsibly done.

## 53. Underpowered null

**Evidence**

Test has enough power for +20%, but product cares about +3%.

**Expected**

- Does not conclude no meaningful +3% effect.

## 54. Peeking

**Prompt**

"We'll check p-values every hour and stop when p < 0.05."

**Expected**

- Rejects under classical fixed-horizon testing.
- Requires pre-specified duration or validated sequential/Bayesian approach.

## 55. Valid sequential platform

**Evidence**

Experiment platform uses a documented always-valid sequential method.

**Expected**

- Does not insist on fixed horizon by dogma.
- Uses the platform-compatible stopping method.

## 56. Post-hoc segment fishing

**Prompt**

"Overall test is flat. Check every country, OS, age, and acquisition source until we find a winner."

**Expected**

- Flags multiple testing.
- Treats discovered subgroup as exploratory hypothesis unless appropriately corrected/replicated.

## 57. Pre-specified segment

**Evidence**

Hypothesis and analysis plan specified new users before experiment.

**Expected**

- Treats it differently from post-hoc fishing.

## 58. Many secondary metrics

**Evidence**

1 primary, 4 guardrails, 200 diagnostics. One random diagnostic p = 0.01.

**Expected**

- Does not overturn result based solely on one unexpected diagnostic significance.
- Investigates/replicates according to tier/multiple-testing policy.

## 59. Primary positive, guardrail harmful

**Evidence**

Core task completion +5%, crash rate +40%.

**Expected**

- Does not ship automatically.
- Treats crash degradation as material guardrail failure.

## 60. Primary positive, refund rate up

**Evidence**

Checkout conversion +4%, refunds +30%.

**Expected**

- Flags quality/trust/monetization trade-off.

## 61. Long-term effect unsupported

**Prompt**

"7-day engagement improved, therefore annual retention will improve."

**Expected**

- Labels long-term conclusion as hypothesis unless surrogate validated.

## 62. Institutional memory only wins

**Prompt**

"Save only successful experiments so the database stays clean."

**Expected**

- Rejects survivorship bias.
- Preserves negative/null decisions and hypotheses.

## 63. Repeated experiment history

**Evidence**

Ten past tests show same early metric moves, long-term goal never moves.

**Expected**

- Re-evaluates surrogate/driver validity.

## 64. Metric evolves with strategy

**Evidence**

Product moved from acquisition phase to retention-focused subscription business.

**Expected**

- Allows metric system to evolve deliberately.
- Preserves definition/version history.

## 65. Existing early adopters not target market

**Prompt**

"Our current power users love this behavior, so it is our long-term North Star."

**Expected**

- Questions representativeness if future target segment differs.

## 66. Metric conflict by team

**Prompt**

"Latency is a guardrail for product team but primary goal for infrastructure team. Is that inconsistent?"

**Expected**

- Explains same metric can have different roles by team while aligning to higher-level goals.

## 67. Revenue decomposition

**Evidence**

Revenue/user fell 8%.

**Expected**

- Suggests decomposition into payer/conversion incidence and conditional spend/value when decision-relevant.

## 68. Aggregate hides critical segment harm

**Evidence**

Overall activation +2%; accessibility users -25%; segment is strategically/ethically important.

**Expected**

- Does not hide behind aggregate.
- Treats critical guardrail/segment harm explicitly.

## 69. Quant explains what, not why

**Evidence**

New-user retention fell sharply after onboarding redesign.

**Prompt**

"Tell me exactly why from the retention chart."

**Expected**

- Uses analytics to localize issue but routes causal/customer explanation to research unless evidence exists.

## 70. AI benchmark only

**Prompt**

"Our AI eval score increased from 82 to 91, so the product is better."

**Expected**

- Separates model quality from user outcome, retention, interaction, cost, and safety.

## 71. AI cost guardrail

**Evidence**

AI task success +3%, inference cost per successful task +300%.

**Expected**

- Treats economics as material guardrail/viability question.

## 72. AI latency trade-off

**Evidence**

Quality improves, median response time doubles, abandonment increases.

**Expected**

- Does not optimize offline quality in isolation.

## 73. AI unsafe actions

**Prompt**

"Primary metric is completed autonomous actions."

**Expected**

- Adds permission/safety/error guardrails; does not reward action volume alone.

## 74. Mobile crash guardrail

**Evidence**

Feature conversion +6%, crash-free users decline materially on Android 12.

**Expected**

- Flags platform-specific guardrail failure.

## 75. App version mix

**Evidence**

Retention dropped after release, but only 40% of users have updated.

**Expected**

- Segments by app version/exposure before attributing product effect.

## 76. Acquisition mix confounds observational conversion

**Evidence**

Activation improved while acquisition shifted strongly toward high-intent organic users.

**Expected**

- Does not attribute observational improvement solely to product change without causal design/adjustment.

## 77. Seasonality

**Evidence**

Revenue and retention rose during holiday period.

**Expected**

- Considers seasonality before attributing change to feature launch.

## 78. Simpson's-paradox-like aggregation risk

**Evidence**

Overall conversion rises while conversion falls in each major platform because platform mix changed.

**Expected**

- Inspects composition/segment mix before aggregate conclusion.

## 79. Feature adoption after launch

**Evidence**

Adoption 20%, primary product outcome strongly improves among exposed users.

**Expected**

- Distinguishes adoption problem from solution efficacy.
- Does not immediately redesign core solution.

## 80. High adoption no outcome

**Evidence**

Feature adoption 80%, product outcome unchanged.

**Expected**

- Does not optimize adoption further automatically.
- Re-examines causal model/solution value.

## 81. Success metric chosen after results

**Prompt**

"Primary metric lost, but a secondary won. Can we make that the primary now?"

**Expected**

- Rejects post-hoc relabeling for the completed experiment.
- Treats secondary result as hypothesis for follow-up.

## 82. Guardrail threshold absent

**Prompt**

"Latency is a guardrail but we have no idea what change is unacceptable."

**Expected**

- Surfaces missing trade-off rule/threshold.
- Does not pretend all non-zero movement is a blocker.

## 83. Metric owner absent

**Prompt**

"Nobody owns the definition of activation and teams use three versions."

**Expected**

- Requires canonical semantic definition, owner, and version governance.

## 84. Third-party attribution metric

**Prompt**

"Use an external vendor metric in A/B test, but we cannot map values reliably to variants."

**Expected**

- Flags lack of attribution as experiment-metric problem.

## 85. Data delay

**Evidence**

Revenue finalizes 7 days late, dashboard uses partial same-day revenue.

**Expected**

- Defines maturity/late-data semantics before decisions.

## 86. Duplicate events

**Evidence**

Retry logic can emit `purchase_success` twice.

**Expected**

- Requires deduplication/idempotency semantics before revenue/conversion use.

## 87. Event timestamp ambiguity

**Prompt**

"Use ingestion time as purchase time."

**Expected**

- Flags cohort/window errors when ingestion delay exists.

## 88. Privacy minimization

**Prompt**

"Store full chat text in every analytics event so we can analyze later."

**Expected**

- Challenges unnecessary sensitive collection.
- Requests decision need and privacy-safe alternatives.

## 89. Product metric vs operational metric

**Prompt**

"Queries per second is our user-value North Star."

**Expected**

- Distinguishes system operational health from realized user value unless product context proves otherwise.

## 90. Done means shipped

**Prompt**

"Feature is in production, close the product task."

**Expected**

- For material work, verifies measurement and outcome review before declaring product work complete.
