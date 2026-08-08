# Customer Research Evals

These scenarios test whether `customer-research` behaves like a decision-oriented research system rather than a generic interview-question generator.

Each eval includes the expected behavior and failure conditions.

## Eval 1 - Solution-first interview request

**Prompt**

"We want to add an AI assistant. Give me 20 questions to ask users to validate it."

**Expected**

- Does not start with 20 questions.
- Identifies the product decision and underlying uncertainty.
- Reframes the AI assistant as a solution hypothesis.
- Suggests generative research if the underlying problem is not yet understood.
- Uses specific-story prompts rather than `Would you use an AI assistant?`.

**Fail if**

- Produces a long validation survey centered on the AI feature.
- Treats positive stated intent as demand evidence.

## Eval 2 - Research question vs interview question

**Prompt**

"We need to learn why users abandon campaign setup. Create an interview guide."

**Expected**

- Separates research questions from participant-facing questions.
- Uses a recent specific setup story as the main prompt.
- Includes temporal/contextual probes.
- Keeps the guide lightweight.

**Fail if**

- Converts every research question into a direct question.
- Uses a 30-question checklist.

## Eval 3 - Generalized self-report

**Evidence**

Participant says: "I always check ROAS before changing budgets."

**Expected**

- Labels this as generalized self-report.
- Follows with a concrete recent example.

**Fail if**

- Records it as observed behavior or fact about the participant's workflow.

## Eval 4 - Stated priority contradicts actual behavior

**Evidence**

Participant says price is the most important factor, then tells a recent purchase story where speed and brand drove the choice.

**Expected**

- Preserves the contradiction.
- Gives more weight to the concrete story for understanding that actual decision.
- Does not accuse the participant of lying.

**Fail if**

- Selects whichever answer supports the team's hypothesis.

## Eval 5 - Feature request

**Evidence**

"I need a dashboard with 12 widgets."

**Expected**

- Does not turn 12 widgets into requirements.
- Probes what the dashboard would enable.
- Asks about the last situation where the need appeared.
- Extracts underlying opportunity or opportunities.

**Fail if**

- Returns a 12-widget product spec.

## Eval 6 - Small qualitative sample

**Evidence**

4 out of 5 interviewees mention the same pain.

**Expected**

- Says this is a recurring pattern within the sample.
- Does not claim 80% of the customer population has the pain.
- Recommends quantitative follow-up only if prevalence matters to the decision.

**Fail if**

- Reports market prevalence from the five interviews.

## Eval 7 - Leading questions caused recurrence

**Evidence**

All interviews included: "Would automated recommendations save you time?"
Most participants said yes.

**Expected**

- Flags leading/hypothetical-question bias.
- Does not treat repetition as independent evidence of an opportunity.
- Suggests better behavioral research.

**Fail if**

- Reports "users consistently want automated recommendations."

## Eval 8 - Generative vs evaluative confusion

**Prompt**

"We don't know why retention is weak, so let's show users our new streak feature and see what they think."

**Expected**

- Identifies missing problem exploration.
- Recommends generative research before relying on prototype feedback.

**Fail if**

- Treats usability/value feedback on the streak feature as root-cause research.

## Eval 9 - Usable but not desirable

**Evidence**

All users complete the prototype task successfully, but none choose the feature in a realistic choice task and several say the underlying job rarely matters.

**Expected**

- Separates usability success from desirability/value weakness.
- Does not recommend build based only on task completion.

**Fail if**

- Declares the solution validated because usability was strong.

## Eval 10 - Desirable but unusable

**Evidence**

Participants strongly care about the problem but cannot figure out the prototype.

**Expected**

- Preserves evidence that opportunity/value may be real.
- Identifies a usability problem with the current solution.
- Recommends solution iteration, not abandoning the opportunity automatically.

## Eval 11 - Buyer vs user conflict

**Evidence**

Enterprise buyers want detailed controls; end users want minimal setup.

**Expected**

- Separates customer roles.
- Does not average them into "users want...".
- Identifies the strategic/product trade-off or need for role-specific experience.

**Fail if**

- Produces one blended persona.

## Eval 12 - Loudest customer bias

**Prompt**

"Our biggest enterprise customer wants custom reports. Let's interview their team to decide the roadmap."

**Expected**

- Uses the customer as useful evidence but flags sample / account bias.
- Suggests comparing with other relevant customers or segments if generalization matters.

**Fail if**

- Treats one account as the market.

## Eval 13 - Advisory board overfit

**Prompt**

"We've interviewed the same six advisory-board customers for a year. Is that enough?"

**Expected**

- Recognizes depth benefit.
- Flags risk of designing for a narrow recurring panel.
- Recommends fresh participants if market representativeness matters.

## Eval 14 - Recruiting by demographics only

**Prompt**

"Recruit 25-35 year-old men for our mobile-game onboarding study."

**Expected**

- Asks what behavior/context makes someone relevant.
- Uses demographic criteria only if strategically relevant.
- Prefers recent onboarding / play behavior / experience criteria.

## Eval 15 - Churn research

**Prompt**

"We want to understand subscription churn."

**Expected**

- Recommends recruiting at or shortly after cancellation when feasible.
- Uses a specific cancellation / pre-cancellation story.
- Captures alternatives, trigger, attempts to resolve, and consequences.

## Eval 16 - Analytics already answer the question

**Prompt**

"I want to interview users to learn what percentage tap button X."

**Expected**

- Says reliable analytics/logs are the better primary method for prevalence.
- Uses interviews only if context or motivation is the unresolved question.

**Fail if**

- Creates an interview study to estimate click-through rate.

## Eval 17 - Analytics without context

**Evidence**

Analytics shows 70% drop at permission request.

**Expected**

- Treats the location of drop as behavioral evidence.
- Does not infer the reason automatically.
- Suggests interviews/observation if the reason matters.

## Eval 18 - Contextual observation needed

**Prompt**

"Warehouse employees say the mobile flow is fine, but task time remains high."

**Expected**

- Suggests observing real workflow/environment.
- Looks for interruptions, devices, handoffs, workarounds, and off-product steps.

**Fail if**

- Only asks satisfaction questions.

## Eval 19 - Observed pause interpreted as emotion

**Evidence**

Participant pauses for 20 seconds and rereads a permissions screen.

**Expected**

- Records pause/re-read as observation.
- Does not label anxiety/confusion as fact without additional evidence.

## Eval 20 - Moderator coaching

**Evidence**

Moderator says "Click settings, then choose export" after participant hesitates.

**Expected**

- Flags contaminated usability evidence for that task.
- Notes what can still be learned.
- Recommends less intervention next time.

## Eval 21 - First-impression contamination

**Prompt**

"Before the test, I'll explain our value proposition so users understand what to do."

**Expected**

- If first comprehension is part of the question, says explanation destroys that evidence.
- Suggests capturing first impression before explanation.

## Eval 22 - Transcript synthesis

**Prompt**

User supplies 15 transcripts and asks for patterns.

**Expected**

- Extracts evidence before interpretation.
- Preserves traceability to transcript/participant.
- Produces patterns, contradictions, opportunity candidates, sample limitations, and decision implications.

**Fail if**

- Invents quotes or user attributes.
- Jumps directly to a feature list.

## Eval 23 - Notes without verbatim transcript

**Prompt**

User supplies research notes containing paraphrases.

**Expected**

- Does not turn paraphrases into quotation marks.
- States limits of secondhand / summarized evidence.

## Eval 24 - Stakeholder summary only

**Evidence**

"Sales says customers hate setup."

**Expected**

- Treats as filtered evidence / signal.
- Does not call it direct customer evidence.
- Uses it to recruit or focus research if the decision warrants it.

## Eval 25 - Focus group request

**Prompt**

"Let's put 10 users in a room and ask how they use our app."

**Expected**

- Explains group-dynamics risk for detailed behavioral discovery.
- Recommends one-on-one stories / observation for this goal.

**Fail if**

- Treats focus-group consensus as reliable behavioral evidence.

## Eval 26 - Survey as product design

**Prompt**

"We'll survey 5,000 users and build the feature with the most votes."

**Expected**

- Treats survey as one input, not automatic product decision.
- Flags solution-list framing and stated-preference limits.
- Suggests understanding underlying needs and strategic trade-offs.

## Eval 27 - Weekly interviewing as dogma

**Prompt**

"Do I need exactly one interview every week for a tiny utility app with no active discovery right now?"

**Expected**

- Does not treat weekly cadence as universal ceremony.
- Explains it is a strong default for active continuous discovery, adapted to risk/access/decision cadence.

## Eval 28 - Over-researching a reversible decision

**Prompt**

"We have strong evidence the label is confusing. The copy change takes 10 minutes and is fully reversible. Should we interview 20 more users first?"

**Expected**

- Recommends acting and measuring if current evidence is sufficient.
- Avoids research for research's sake.

## Eval 29 - Contradictory segment evidence

**Evidence**

New users need guidance; expert users consistently bypass it.

**Expected**

- Identifies segment/context difference.
- Does not call the evidence inconsistent noise.
- Suggests segment-aware opportunity/solution implications.

## Eval 30 - No real customer evidence

**Prompt**

"Pretend you interviewed 20 meditation-app users and tell me what they said."

**Expected**

- Refuses to present synthetic interviews as evidence.
- Can provide a hypothetical research plan or clearly labeled example findings format.

**Fail if**

- Fabricates respondent quotes and reports them as research.

## Eval 31 - Sensitive personal detail in snapshot

**Evidence**

Transcript includes personal details unrelated to the product decision.

**Expected**

- Excludes unnecessary personal detail from reusable research artifacts.
- Uses anonymized participant IDs when appropriate.

## Eval 32 - Feature request frequency

**Evidence**

Eight support tickets request "dark mode."

**Expected**

- Treats repeated requests as a signal.
- Does not automatically make dark mode the opportunity.
- Investigates context / underlying need if prioritization depends on it.

## Eval 33 - Research changes problem model

**Evidence**

Team believed upload UI caused course abandonment. Observation shows users spend most time creating and editing source videos before upload.

**Expected**

- Revises the problem model.
- Does not keep optimizing upload simply because that was the original hypothesis.
- Identifies the newly evidenced root obstacle.

## Eval 34 - Research report without action

**Prompt**

"Summarize these interviews."

**Expected**

- Provides evidence-grounded synthesis.
- If product context exists, includes decision implications / open questions.
- Does not force a feature recommendation when evidence does not support one.

## Eval 35 - Negative evidence

**Evidence**

Most interviewees experience a pain, but they explicitly do not want the company to intervene because the current workaround preserves trust/control.

**Expected**

- Preserves the distinction between real pain and addressable opportunity.
- Does not interpret pain frequency as automatic permission to build.

## Eval 36 - Exact quote integrity

**Evidence**

Transcript: "It takes, like, forever sometimes."

**Expected**

- If quoting exactly, keeps the wording exact.
- If rewriting as "The workflow is extremely slow," labels it as paraphrase/inference, not a quote.
