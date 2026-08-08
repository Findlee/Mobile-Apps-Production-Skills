# Product Review Evals

These scenarios test whether `product-review` behaves as a prioritized evidence-based orchestrator rather than a generic checklist generator.

A strong response does not need identical wording. It must preserve the decision behavior described under each eval.

## A. Routing and review modes

### Eval 1 - Full project audit
Prompt: `Do a full product review of this app and tell me what we should improve.`
Expected:
- chooses FULL REVIEW;
- inventories evidence;
- reconstructs product/journey;
- selectively deep-dives relevant specialist areas;
- returns one prioritized improvement backlog;
- does not concatenate seven separate reports.

### Eval 2 - Quick review
Prompt: `Give me a quick product review. I only want the biggest issues.`
Expected:
- QUICK REVIEW;
- top 5-10 material findings;
- no giant framework scorecard.

### Eval 3 - Focused onboarding review
Prompt: `Review only onboarding.`
Expected:
- focuses on first-value path, setup, permissions, activation, time-to-value;
- checks adjacent measurement only if material;
- does not audit portfolio strategy without reason.

### Eval 4 - Pre-release review
Prompt: `We plan to ship tomorrow. Do a product review before release.`
Expected:
- PRE-RELEASE mode;
- explicit READY / READY WITH KNOWN RISKS / NOT READY / INSUFFICIENT EVIDENCE;
- blockers, high-risk non-blockers, required verification, post-release monitoring.

### Eval 5 - Post-launch underperformance
Prompt: `We shipped this feature and retention did not improve. Review it.`
Expected:
- POST-LAUNCH mode;
- checks intended behavior, metric definitions, activation/retention causal chain, segments, guardrails;
- does not declare feature bad solely because aggregate retention is flat.

### Eval 6 - PRD review
Prompt: `Review this PRD.`
Expected:
- ARTIFACT REVIEW;
- evaluates PRD relative to its purpose/current state;
- does not demand every piece of information live in one file.

### Eval 7 - Roadmap review
Prompt: `Review our roadmap.`
Expected:
- checks outcome/strategy alignment and evidence;
- finds feature-factory risk;
- routes to product-strategy/discovery if needed.

### Eval 8 - Experiment plan review
Prompt: `Review our A/B test plan.`
Expected:
- focuses on hypothesis, primary metric, guardrails, assignment, MDE/power, stopping, SRM/exposure;
- does not spend most of answer on UI heuristics.

### Eval 9 - AI assistant review
Prompt: `Review our AI assistant feature.`
Expected:
- applies AI lens;
- separates model quality, system behavior, task success, product outcome;
- checks evals, trust, tool actions, latency/cost, fallback.

### Eval 10 - Mobile release review
Prompt: `Review our Android app before Play rollout.`
Expected:
- applies mobile/platform lens and Android current reference;
- checks state restoration, permissions, performance/stability, accessibility, payments if relevant;
- does not claim a full security audit.

## B. Evidence discipline

### Eval 11 - Screenshots only
Prompt: `Here are 12 screenshots. Tell me why users churn.`
Expected:
- may inspect visible UX/value issues;
- labels churn explanation as inference/unknown;
- states screenshots cannot prove actual churn cause.

### Eval 12 - Code only
Prompt: `You have the repo. Tell me if users love the product.`
Expected:
- refuses to infer customer value from code;
- uses repo for implementation facts only;
- identifies missing user/behavior evidence.

### Eval 13 - Analytics only
Prompt: `Our funnel drops 45% here. Why?`
Expected:
- establishes descriptive behavior;
- proposes hypotheses;
- does not claim motivation/causality without evidence.

### Eval 14 - Five interviews
Prompt: `4 of 5 interviewees complained about setup, so 80% of users have this problem.`
Expected:
- rejects population inference;
- says it recurred in 4/5 interviews in this sample;
- suggests quantitative sizing if prevalence matters.

### Eval 15 - App reviews
Prompt: `Most reviews I read complain about ads, so most users hate ads.`
Expected:
- treats reviews as issue evidence/language/failure cases;
- does not infer prevalence without denominator/representativeness.

### Eval 16 - Stakeholder opinion
Prompt: `CEO says users need social sharing. Treat that as validated.`
Expected:
- records decision/constraint or assumption depending context;
- not customer evidence.

### Eval 17 - Synthetic persona
Prompt: `Imagine our target user and use that as research evidence.`
Expected:
- can create an assumption model;
- must not label it evidence.

### Eval 18 - Missing research
Prompt: `No user research exists. Give me product recommendations anyway.`
Expected:
- can give expert-review recommendations/inferences;
- clearly labels uncertainty;
- routes high-impact uncertain items to research/validation rather than pretending certainty.

### Eval 19 - Conflicting sources
Prompt: `Analytics show users finish onboarding, but interviews say it is confusing.`
Expected:
- preserves contradiction;
- explores whether completion != comprehension/value;
- does not silently choose one source.

### Eval 20 - Intended vs actual behavior
Prompt: `PRD says restore purchase works, code shows no restore path.`
Expected:
- observed implementation mismatch is a product defect;
- does not accept PRD as proof of behavior.

## C. Strategy and opportunity

### Eval 21 - Strategy is feature list
Prompt: `Our strategy is AI chat, widgets, referral, web, community.`
Expected:
- identifies strategy/plan confusion;
- asks/derives target, problem, outcome, choice/non-goal;
- may route to product-strategy.

### Eval 22 - Everyone target
Prompt: `The app is for everyone who wants to be productive.`
Expected:
- flags overly broad target as strategy risk;
- does not invent a narrow segment as fact.

### Eval 23 - Competitor copy
Prompt: `Competitor added voice mode. We should too.`
Expected:
- checks opportunity/outcome and target-user relevance;
- does not recommend copy solely because competitor has it.

### Eval 24 - Output as outcome
Prompt: `Success is launching Android.`
Expected:
- identifies output;
- asks what customer/business change the launch should create unless launch itself is mandated objective.

### Eval 25 - Mandatory feature
Prompt: `Platform requires account deletion.`
Expected:
- does not debate whether users want it;
- audits affected lifecycle, scope, behavior, analytics, risk.

### Eval 26 - Good solution, wrong segment
Prompt: `This solves a real problem but only for a segment we explicitly do not serve.`
Expected:
- strategic misalignment;
- likely defer/reject despite solution quality.

### Eval 27 - No differentiation
Prompt: `Our app does the same thing as three alternatives with no clear advantage.`
Expected:
- value proposition/strategy risk;
- does not fix with UI polish first.

### Eval 28 - Feature request as problem
Prompt: `Problem: users do not have dashboards.`
Expected:
- translates toward underlying need/job;
- does not treat absence of dashboard as validated problem.

### Eval 29 - Opportunity but one solution
Prompt: `We need better retention, so add push notifications.`
Expected:
- separates outcome from solution;
- diagnoses opportunity/value path first.

### Eval 30 - Solved non-differentiating problem
Prompt: `We need a standard password reset flow.`
Expected:
- use established patterns;
- do not force broad discovery/20 solution ideas.

## D. Core experience and heuristics

### Eval 31 - No system feedback
Prompt: `After tapping Pay, nothing changes for 4 seconds.`
Expected:
- flags visibility/status issue;
- likely P1/P0 depending payment behavior;
- recommends progress/disabled duplicate action/idempotency considerations.

### Eval 32 - No cancel
Prompt: `User enters a long setup wizard and cannot exit.`
Expected:
- user control/freedom issue;
- evaluates whether forced completion is essential.

### Eval 33 - Internal jargon
Prompt: `Screen says Initialize Latent Context Graph.`
Expected:
- real-world language/mental-model issue;
- label as expert inference unless research corroborates.

### Eval 34 - Inconsistent labels
Prompt: `The same action is called Save, Done, Apply, Confirm in different screens.`
Expected:
- consistency issue;
- recommend semantic standardization.

### Eval 35 - Error after destructive action
Prompt: `Delete account fails and shows Error 500.`
Expected:
- error recovery + destructive lifecycle risk;
- specify safe state and recovery.

### Eval 36 - Recall burden
Prompt: `User must remember a code shown 3 screens earlier.`
Expected:
- recognition-vs-recall issue;
- propose visible/retrievable information.

### Eval 37 - Crowded UI
Prompt: `Dashboard shows 24 cards before the primary task.`
Expected:
- minimalist/focus issue;
- connects to primary goal and scope;
- does not merely recommend prettier visuals.

### Eval 38 - Heuristic evidence claim
Prompt: `You found heuristic violations. Say users definitely fail because of them.`
Expected:
- rejects certainty;
- heuristic findings remain expert inference unless corroborated.

### Eval 39 - Single AI as 5 evaluators
Prompt: `Pretend to be five independent NN/g evaluators and claim consensus.`
Expected:
- refuses false independence;
- may use multiple lenses but labels one AI review.

### Eval 40 - Narrow heuristic scope
Prompt: `Review checkout UX only.`
Expected:
- scopes user/task/device;
- first understands flow, then identifies specific heuristic issues.

## E. Discovery and assumptions

### Eval 41 - Untested desirability
Prompt: `We built a complex AI planner without evidence users want automatic planning.`
Expected:
- high-risk desirability assumption;
- recommend validation before further expansion.

### Eval 42 - Usable but not valuable
Prompt: `Usability sessions are perfect, but users say they would not use the feature.`
Expected:
- distinguishes usability from desirability/value;
- does not call it validated.

### Eval 43 - Valuable but infeasible
Prompt: `Users love it but inference cost makes gross margin impossible.`
Expected:
- viability/feasibility issue;
- explores cheaper mechanism/scope/provider/manual alternatives.

### Eval 44 - Solution failed
Prompt: `Prototype X failed, so the customer problem is invalid.`
Expected:
- rejects inference;
- solution failure != opportunity failure.

### Eval 45 - Shared risky assumption
Prompt: `Three solution options all depend on users trusting generated advice.`
Expected:
- identify shared assumption;
- test once before comparing lower-level differences.

### Eval 46 - Cheap production learning
Prompt: `Change takes 30 minutes, is reversible, and can be exposed to 2%.`
Expected:
- may recommend limited implementation as learning step;
- requires measurement/rollback.

### Eval 47 - Irreversible build
Prompt: `This requires six months and cannot be rolled back.`
Expected:
- increases discovery/validation rigor before commitment.

### Eval 48 - Ethical risk
Prompt: `AI gives financial-like recommendations to inexperienced users.`
Expected:
- identifies harm/trust/over-reliance assumptions;
- does not treat only model accuracy as sufficient.

### Eval 49 - Endless discovery
Prompt: `We have strong evidence, standard solution, low risk, but keep researching.`
Expected:
- calls out over-research;
- move to scope/spec/build.

### Eval 50 - No evidence and high impact
Prompt: `We want to redesign the core product around one founder idea.`
Expected:
- route to discovery/research/experiment;
- not immediate large implementation.

## F. Scope and complexity

### Eval 51 - Feature-rich MVP
Prompt: `Our MVP includes profile, social feed, referrals, themes, AI memory, web sync.`
Expected:
- removal test;
- map to core outcome;
- classify keep/simplify/remove/defer.

### Eval 52 - Future proofing
Prompt: `We have 300 beta users but want microservices for future 100M scale.`
Expected:
- scope/architecture overengineering risk;
- prefer simplest maintainable architecture for credible near-term constraints.

### Eval 53 - Cheap feature creep
Prompt: `It is only two hours, so add it to V1.`
Expected:
- cheap != necessary;
- removal/outcome test.

### Eval 54 - Cut critical quality
Prompt: `To hit date, remove error handling and restore purchases.`
Expected:
- rejects incoherent quality cut;
- reduce breadth/depth/segment first.

### Eval 55 - Fixed date impossible
Prompt: `Date, scope, quality, capacity are all fixed and estimates do not fit.`
Expected:
- explicitly states constraint conflict;
- does not pretend magic solution.

### Eval 56 - Manual path
Prompt: `Automation takes 8 weeks; manual operation can test value tomorrow.`
Expected:
- consider concierge/manual path when appropriate.

### Eval 57 - No-gos missing
Prompt: `Team keeps adding settings during implementation.`
Expected:
- scope boundary/no-go issue;
- recommend explicit out-of-scope and agent handoff guardrail.

### Eval 58 - Mid-build estimate change
Prompt: `One must-have is 5x more expensive than expected.`
Expected:
- do not blindly cut a leg from coherent minimum;
- explore alternate mechanism/narrower scenario/date tradeoff.

### Eval 59 - AI scope explosion
Prompt: `AI assistant V1 needs chat, voice, image, memory, agents, tools, web search.`
Expected:
- challenge breadth;
- define smallest high-value AI interaction.

### Eval 60 - Remove successful core feature
Prompt: `Feature drives core value but makes roadmap cleaner if removed.`
Expected:
- KEEP if evidence supports value;
- scope simplification is not deletion for its own sake.

## G. Product spec and implementation behavior

### Eval 61 - Undefined subscription expiry
Prompt: `Spec says users are premium until subscription ends, nothing about grace/expiry.`
Expected:
- product behavior ambiguity;
- route to product-spec;
- do not let engineer invent lifecycle.

### Eval 62 - Undefined destructive action
Prompt: `Delete account can mean immediate or 30-day recovery. Developer should choose.`
Expected:
- product-semantic decision must be surfaced;
- not delegated silently.

### Eval 63 - Missing loading/error states
Prompt: `Spec only describes happy path for AI generation.`
Expected:
- require loading, timeout, failure, retry/fallback, partial result as relevant.

### Eval 64 - Technical detail in PRD
Prompt: `PRD mandates Redux and Postgres with no product constraint.`
Expected:
- separates product behavior from technical implementation unless true constraint.

### Eval 65 - Acceptance criteria invent behavior
Prompt: `We skipped product discussion; QA acceptance criteria will decide everything.`
Expected:
- rejects; criteria confirm shared behavior, not substitute for product decisions.

### Eval 66 - Existing delta unclear
Prompt: `Change settings behavior but no current-state inspection.`
Expected:
- inspect current -> target -> preserved behavior first.

### Eval 67 - Coding agent adds settings
Prompt: `Codex added customization settings because they seemed useful.`
Expected:
- scope/product decision violation;
- remove or explicitly approve/specify.

### Eval 68 - Analytics semantics undefined
Prompt: `Track purchase event somewhere around checkout.`
Expected:
- specify attempted/succeeded/failed and exact trigger;
- not vague analytics.

### Eval 69 - Permission lifecycle
Prompt: `App handles permission granted but not denied/revoked.`
Expected:
- missing state/recovery behavior;
- product/platform quality issue.

### Eval 70 - Duplicate action
Prompt: `User can tap Pay 4 times while request is pending.`
Expected:
- idempotency/user-status/product safety issue;
- P0/P1 depending consequences.

## H. Metrics, retention, analytics

### Eval 71 - App open retention
Prompt: `Our retention event is app_open.`
Expected:
- question whether open represents recurring value;
- seek critical event.

### Eval 72 - Daily retention for monthly product
Prompt: `We measure D1/D7 for a tax-filing app used monthly.`
Expected:
- challenge usage interval;
- propose interval/method matching natural use.

### Eval 73 - Onboarding completion activation
Prompt: `Activation is onboarding_completed.`
Expected:
- asks whether that equals first meaningful value or predicts it.

### Eval 74 - Local CTR win
Prompt: `New widget CTR +40%, but core task completion is flat.`
Expected:
- not a product win by default;
- local traction vs product outcome.

### Eval 75 - Revenue without guardrail
Prompt: `Paywall change raises D0 revenue but D30 retention falls.`
Expected:
- tradeoff, long-term/LTV guardrail;
- not automatic win.

### Eval 76 - Broken event semantics
Prompt: `purchase event fires when paywall button is tapped.`
Expected:
- measurement blocker;
- distinguish intent/attempt/success.

### Eval 77 - No denominator
Prompt: `Conversion dropped from 8% to 6%.`
Expected:
- verify eligible population/denominator, traffic/segment changes before conclusion.

### Eval 78 - Aggregate retention hides lifecycle
Prompt: `Overall retention flat; new retention down, resurrected up.`
Expected:
- lifecycle decomposition;
- do not summarize as simply flat.

### Eval 79 - Correlated behavior
Prompt: `Users who use feature X retain more, so X causes retention.`
Expected:
- correlation -> hypothesis;
- recommend causal validation or careful evidence.

### Eval 80 - No baseline
Prompt: `Set activation target to 60%; baseline unknown.`
Expected:
- avoid arbitrary target;
- establish baseline/decision context.

## I. Experiment trustworthiness

### Eval 81 - Severe SRM
Prompt: `A/B primary +12%, p<0.001, but expected 50/50 assignment is 56/44.`
Expected:
- experiment trust failure;
- do not declare winner before SRM diagnosis.

### Eval 82 - Tiny SRM at huge N
Prompt: `Assignment is 50.3/49.7 with millions of users, so ignore it.`
Expected:
- says magnitude alone is insufficient; run formal SRM check.

### Eval 83 - Peeking
Prompt: `We check hourly and stop once p<0.05.`
Expected:
- invalid under classical fixed-horizon testing unless sequential method designed.

### Eval 84 - p-value interpretation
Prompt: `p=.03 means 97% probability treatment wins.`
Expected:
- rejects interpretation.

### Eval 85 - Non-significant
Prompt: `p=.2 means no effect.`
Expected:
- check CI/power/MDE;
- may be inconclusive.

### Eval 86 - Underpowered test
Prompt: `We can detect 20% change but would ship for a 2% gain.`
Expected:
- power/MDE mismatch;
- inconclusive for decision threshold.

### Eval 87 - Segment fishing
Prompt: `Overall neutral, but one of 40 country segments is significant.`
Expected:
- post-hoc hypothesis, not confirmatory win.

### Eval 88 - Hundreds of metrics
Prompt: `We looked at 300 metrics and 14 were significant.`
Expected:
- multiple testing concern;
- focus predefined first-order/key metrics.

### Eval 89 - A/A failure
Prompt: `A/A tests show false positives much more than expected.`
Expected:
- experimentation platform/data trust issue;
- fix before trusting A/Bs.

### Eval 90 - Experiment exposure missing
Prompt: `We have assignment config but no event confirming feature was actually used.`
Expected:
- recognizes exposure/triggering ambiguity;
- analysis may be diluted or biased depending design.

## J. Mobile/platform/accessibility

### Eval 91 - Background loses form
Prompt: `Android app loses checkout form when user answers a phone call.`
Expected:
- state preservation/interruption defect;
- platform quality + conversion impact.

### Eval 92 - Permission on launch
Prompt: `App requests location, notifications, contacts immediately on first open.`
Expected:
- checks necessity/context/minimum permission;
- recommends contextual requests and graceful denial where relevant.

### Eval 93 - Permission denial blocks app
Prompt: `User denies optional notifications and cannot proceed.`
Expected:
- platform/product defect unless notification is truly essential.

### Eval 94 - Android ANR
Prompt: `ANR rate is above Play bad behavior threshold.`
Expected:
- serious platform quality issue;
- recommends current official threshold verification and root-cause fix;
- release impact.

### Eval 95 - Touch targets
Prompt: `Many Android icon buttons are 28dp.`
Expected:
- accessibility/platform issue;
- reference current Core App Quality guidance;
- do not rely on visual preference only.

### Eval 96 - Color only
Prompt: `Success is green and failure red with no text/icon/state difference.`
Expected:
- accessibility barrier;
- non-color-only communication.

### Eval 97 - Drag only
Prompt: `Critical task requires dragging with no alternative.`
Expected:
- check WCAG/native accessibility relevance;
- provide accessible alternative where required.

### Eval 98 - Auth cognitive test
Prompt: `Login blocks paste/password managers and requires remembering a custom phrase.`
Expected:
- accessible authentication concern;
- review alternative/mechanism.

### Eval 99 - VoiceOver unlabeled controls
Prompt: `Custom icon buttons have no accessibility labels.`
Expected:
- accessibility blocker/high issue for primary tasks;
- native semantic labels needed.

### Eval 100 - Reduce Motion ignored
Prompt: `Full-screen parallax animation cannot be reduced and is used in core flow.`
Expected:
- accessibility/platform issue;
- support reduce-motion behavior.

## K. AI product quality

### Eval 101 - Benchmark only
Prompt: `Model benchmark improved 15%, so product is better.`
Expected:
- separates model metric from task/product outcome;
- requires product/user evidence.

### Eval 102 - Transcript says success
Prompt: `Agent says "refund complete". Count it as successful.`
Expected:
- verify environment/tool outcome;
- transcript is insufficient.

### Eval 103 - No evals
Prompt: `AI feature feels good in demos, so ship.`
Expected:
- vibe-based eval anti-pattern;
- define task-specific evals before material rollout.

### Eval 104 - Generic eval
Prompt: `We use BLEU for a customer-support agent, nothing else.`
Expected:
- generic metric inadequate;
- task-specific correctness/tool/outcome/human-calibrated evals.

### Eval 105 - Production mismatch
Prompt: `Eval dataset contains polished English prompts but users are multilingual and messy.`
Expected:
- distribution mismatch;
- add representative typical/edge cases.

### Eval 106 - Agent nondeterminism
Prompt: `One successful agent run proves reliability.`
Expected:
- multiple trials / failure distribution where useful.

### Eval 107 - Tool argument error
Prompt: `Agent chooses refund tool correctly but sends wrong order ID.`
Expected:
- tool selection is not enough; argument precision/action outcome fail.

### Eval 108 - Irreversible autonomous action
Prompt: `Agent can delete user data without confirmation.`
Expected:
- high-risk permission/action boundary issue;
- confirmation/least privilege/rollback where appropriate.

### Eval 109 - Confabulation in low consequence task
Prompt: `Creative-writing app occasionally invents facts inside fictional stories.`
Expected:
- context-sensitive risk; do not apply high-stakes factuality requirements mechanically.

### Eval 110 - Confabulation in high consequence task
Prompt: `Health-information assistant confidently invents contraindications.`
Expected:
- severe product/AI risk;
- grounding/verification/scope/human oversight/safety response appropriate to use case.

### Eval 111 - Over-reliance
Prompt: `UI says "AI doctor has decided" and hides uncertainty.`
Expected:
- human-AI configuration/authority risk;
- avoid misleading anthropomorphism/over-reliance.

### Eval 112 - Sensitive data to model
Prompt: `App sends full private journal entries to a third-party model with no clear data handling review.`
Expected:
- privacy/value-chain risk;
- data minimization/provider handling/consent/policy review.

### Eval 113 - Language disparity
Prompt: `AI eval is excellent in English but poor in Vietnamese; product markets both equally.`
Expected:
- subgroup/language quality issue;
- aggregate score insufficient.

### Eval 114 - Model update regression
Prompt: `Provider silently upgrades model and output behavior changes.`
Expected:
- regression eval/canary/monitoring/version strategy if available.

### Eval 115 - Agentic complexity
Prompt: `Simple extraction task uses five cooperating agents.`
Expected:
- challenge complexity;
- prefer simpler workflow unless measured outcomes justify agents.

## L. Synthesis and prioritization

### Eval 116 - Duplicate root issue
Prompt: `UX, scope, and analytics all point to onboarding value appearing too late.`
Expected:
- merge into one causal finding;
- do not report three duplicates.

### Eval 117 - Polish vs blocker
Prompt: `There is a crash in checkout and inconsistent icon spacing.`
Expected:
- checkout crash dominates priority;
- spacing P3 at most.

### Eval 118 - High impact, low confidence
Prompt: `You suspect paywall timing hurts conversion but have no evidence.`
Expected:
- P1/P2 depending context with LOW confidence;
- action likely EXPERIMENT/RESEARCH, not immediate redesign as fact.

### Eval 119 - High confidence measurement gap
Prompt: `No event represents successful core task completion.`
Expected:
- INSTRUMENT high priority if outcome decisions depend on it;
- clear event semantic contract next step.

### Eval 120 - Keep good behavior
Prompt: `Review finds standard password reset works and has low support volume.`
Expected:
- KEEP;
- does not invent changes just to produce findings.

### Eval 121 - Remove complexity
Prompt: `Advanced customization has near-zero use and complicates onboarding.`
Expected:
- REMOVE/SIMPLIFY candidate;
- check segment dependency before deletion.

### Eval 122 - Dependency order
Prompt: `Need A/B test on activation, but activation event is broken.`
Expected:
- repair instrumentation before experiment.

### Eval 123 - Earliest bottleneck
Prompt: `Trial conversion low, but 80% of users never reach trial-eligible value moment.`
Expected:
- focus activation/value delivery first;
- not pricing optimization first.

### Eval 124 - What not to do yet
Prompt: `Team wants social features while core activation is broken.`
Expected:
- explicitly lists social expansion under NOT YET/DEFER.

### Eval 125 - Review confidence
Prompt: `You have build, analytics, research, and experiments for core flow.`
Expected:
- confidence can be high for covered findings;
- no need to claim universal confidence for unknown areas.

### Eval 126 - Partial evidence confidence
Prompt: `You only have screenshots and PRD.`
Expected:
- overall confidence limited;
- strong on visible/spec issues, weak on customer/behavior outcomes.

### Eval 127 - Improvement backlog
Prompt: `Return recommendations.`
Expected:
- action types + priority + basis + confidence + dependency + next step;
- not generic bullet list.

### Eval 128 - No fake impact numbers
Prompt: `Estimate impact for each recommendation without data.`
Expected:
- qualitative expected impact or clearly modeled assumptions;
- no fabricated +17% retention.

### Eval 129 - Review says everything is bad
Prompt: `Find as many problems as possible.`
Expected:
- resists issue-count optimization;
- surfaces strongest material findings and what is healthy/should remain.

### Eval 130 - End state
Prompt: `After review, what should we do?`
Expected:
- explicit DO NOW / VALIDATE BEFORE BUILDING / DO NEXT / REMOVE-SIMPLIFY / DEFER / NOT YET;
- next review trigger.
