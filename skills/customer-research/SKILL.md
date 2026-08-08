---
name: customer-research
description: Plan, conduct, and synthesize decision-oriented product research about real customer behavior, context, needs, pain points, desires, workarounds, and solution use. Use for generative interviews, contextual observation, research planning, participant criteria, interview scripts, transcript analysis, interview snapshots, experience-map updates, opportunity extraction, evaluative usability/value sessions, and qualitative evidence synthesis. Distinguish observed or specific past behavior from opinions and future predictions, and never fabricate participants, quotes, patterns, or prevalence.
---

# Customer Research

## Mission

Create decision-useful customer evidence while minimizing the risk of learning the wrong thing from polite opinions, leading questions, hypothetical behavior, biased recruiting, or AI-generated stories.

Customer research is not a ceremony and it is not a way to outsource product decisions to customers.

Use it to improve the team's model of:

`Customer context -> Actual behavior -> Need / pain / desire -> Current workaround -> Opportunity -> Solution response -> Product decision`

The goal is not "collect feedback." The goal is to reduce a specific product uncertainty with evidence strong enough for the decision being made.

Optimize for:

- real behavior and concrete context;
- clear research questions;
- relevant participants;
- direct exposure to customers when possible;
- fast synthesis while memory and context are fresh;
- explicit evidence quality and limitations;
- traceability from insight back to source material;
- shared understanding across product, design, and engineering;
- research effort proportional to the cost of being wrong.

Do not optimize for:

- interview count for its own sake;
- long discussion guides;
- impressive research reports;
- getting customers to approve a feature;
- confirming the team's preferred idea;
- turning small qualitative samples into population statistics.

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

## Core principles

### 1. Start with the decision, not the interview script

Before choosing a method or drafting questions, identify:

1. What product decision is blocked?
2. What do we need to learn to make that decision better?
3. What evidence already exists?
4. What uncertainty remains?
5. What is the cheapest credible way to reduce that uncertainty?

Bad objective:

`Talk to users about onboarding.`

Better objective:

`Understand why new users who intend to complete setup abandon before connecting their first data source.`

Better research questions:

- What is the user trying to accomplish when setup begins?
- What happened the last time a relevant user attempted setup?
- Where did uncertainty, friction, or competing priorities appear?
- What did the user do instead?

Do not start by asking what questions the stakeholder would "like to ask users." Start from what the team needs to learn.

### 2. Distinguish generative from evaluative research

#### Generative research

Purpose: understand the problem space and customer context.

Use it to learn:

- what people are trying to accomplish;
- what triggers the situation;
- what actually happens today;
- what current alternatives and workarounds exist;
- what gets in the way;
- what trade-offs people make;
- which needs, pains, desires, and barriers appear;
- how the problem fits into the broader experience.

Typical methods:

- story-based interviews;
- contextual observation;
- field visits;
- workflow walkthroughs using the customer's real artifacts or tools;
- analysis of existing behavioral evidence combined with customer conversations.

#### Evaluative research

Purpose: evaluate a proposed solution or product experience.

Use it to learn:

- whether people understand the value proposition;
- whether they can figure out what to do;
- whether they can complete important tasks;
- where the mental model and product model conflict;
- what creates hesitation, confusion, abandonment, or mistrust;
- whether the solution appears to address the intended opportunity;
- what assumptions about usability or value remain risky.

Typical methods:

- prototype testing;
- usability testing;
- realistic task observation;
- concept testing when used with explicit evaluation criteria;
- limited live-product observation.

Important:

`Usable != Desirable`

and

`Positive reaction to a solution != Evidence that the underlying problem is important`

Do not use evaluative research to compensate for missing problem understanding.

### 3. Prefer specific behavior over abstract self-report

For questions about behavior, evidence from a concrete recent situation is generally more useful than a person's generalized description of what they "usually" do.

Prefer:

`Tell me about the last time you...`

or:

`Tell me about a specific time when...`

over:

`How do you normally...?`

Prefer:

`Walk me through what happened from the beginning.`

over:

`What factors matter to you?`

When the participant moves from a specific story into generalization, gently return to the concrete instance:

`In that specific case, what happened?`

Do not treat confidence, eloquence, or a coherent explanation as proof that the participant accurately remembers why they behaved that way.

### 4. Customers reveal problems; they do not own the product solution

Customers are valuable sources of evidence about:

- their context;
- goals;
- behavior;
- pain;
- workarounds;
- constraints;
- reactions to product behavior.

They are not automatically the right people to specify:

- the feature;
- the architecture;
- the interaction model;
- the roadmap;
- the business trade-off.

When a participant requests a feature, treat it as a clue.

Example:

`I need voice search.`

Follow with:

- `What would voice search let you do?`
- `Tell me about the last time this problem happened.`
- `What did you do instead?`

Capture the underlying opportunity separately from the requested solution.

### 5. Direct exposure beats filtered summaries when the decision is important

Support tickets, sales notes, research reports, survey summaries, and account-manager feedback can all be useful evidence.

But for important product decisions, do not let them become a permanent substitute for direct customer exposure when direct access is feasible.

Whenever practical, involve the people making the product decision in interviews or observations.

For an AI-assisted product team, use three lenses when reviewing the same customer evidence:

#### Product lens

Look for:

- goals;
- needs;
- business relevance;
- trade-offs;
- segment differences;
- opportunity implications.

#### Design lens

Look for:

- context;
- mental models;
- comprehension;
- decision moments;
- workarounds;
- usability friction;
- emotional or practical consequences that are actually evidenced.

#### Engineering lens

Look for:

- real workflow constraints;
- technical environment;
- integrations;
- failure conditions;
- data dependencies;
- feasibility clues;
- unexpected system interactions.

Different lenses may notice different evidence. Preserve the differences before synthesizing them.

### 6. Research artifacts are memory and thinking aids, not truth

Experience maps, interview snapshots, personas, journey maps, and research summaries are representations of what the team currently believes it has learned.

They are not self-validating evidence.

Every material insight should be traceable to one or more of:

- observed behavior;
- a specific customer story;
- a transcript or recording;
- analytics or operational data;
- support / sales evidence;
- a documented experiment;
- another explicit source.

Update artifacts as evidence changes.

### 7. Synthesize continuously when research is continuous

Do not wait for a large batch of interviews to remember what everyone said.

After each meaningful interview or observation:

1. capture the specific story;
2. identify evidence;
3. extract possible opportunities;
4. record surprises and contradictions;
5. update the team's customer model if warranted;
6. record the next question that became more important.

A short current synthesis is more useful than an impressive report created weeks later after interviews blur together.

### 8. Research does not need to be perfect; it needs to fit the risk

Do not chase methodological perfection when a small amount of evidence is enough to change a reversible decision.

Increase rigor when:

- the decision is expensive to reverse;
- the customer segment is narrow or heterogeneous;
- the product is safety-, trust-, privacy-, or regulation-sensitive;
- the consequences of a false conclusion are material;
- the result will be generalized to a large population;
- a major strategic investment depends on the conclusion.

For low-risk product questions, a few well-chosen conversations may be enough to reveal the next learning step.

For evaluative testing, small iterative waves can be useful, but do not treat any fixed sample size as a universal law.

## Evidence discipline

When uncertainty matters, classify information as:

- `OBSERVATION` - directly observed action, context, artifact, or interaction.
- `CUSTOMER STORY` - participant account of a specific past event.
- `QUOTE` - exact participant language available in the source.
- `SELF-REPORT` - participant statement about general behavior, preference, or belief.
- `PREDICTION` - what a participant says they would do in the future.
- `INFERENCE` - researcher's interpretation of the evidence.
- `PATTERN` - recurring evidence across multiple relevant sources.
- `CONTRADICTION` - evidence that conflicts across participants or with the team's prior model.
- `ASSUMPTION` - claim not yet supported strongly enough for the current decision.
- `OPEN QUESTION` - uncertainty that could materially change the decision.

Rules:

- Never invent participants, quotes, behaviors, frequencies, demographics, emotions, sample sizes, or research results.
- Never rewrite a paraphrase as a direct quote.
- Never turn "3 of 5 interviewees mentioned this" into "60% of users have this problem."
- Never label a repeated answer as a pattern if the same leading question may have produced it.
- Never treat a feature request as proof of the underlying need.
- Never treat a positive usability result as proof of value.
- Never treat a stated intention as equivalent to future behavior.
- Never turn stakeholder intuition or AI-generated reasoning into customer evidence.
- Preserve conflicting evidence instead of averaging it away.

## Research state triage

Before running a full workflow, determine the state internally.

1. What decision is the research meant to support?
2. Is this a problem-space or solution-space question?
3. What evidence already exists?
4. What customer role or segment is relevant?
5. Does the question require understanding context, behavior, usability, value, or prevalence?
6. Is direct observation possible?
7. Is the team asking about actual behavior or hypothetical future behavior?
8. What recruiting bias could distort the result?
9. How much evidence is enough for this decision?
10. How will findings be synthesized and handed back into product work?

Do not interrogate the user with all ten questions. Infer what you can and ask only for missing information that materially changes the research design.

## Choose the narrowest research mode

### Mode A: Analyze supplied customer evidence

Use when the user provides:

- interview transcripts;
- call notes;
- support conversations;
- sales-call excerpts;
- usability notes;
- research summaries;
- customer feedback exports.

Do not create a new research plan unless needed.

Workflow:

`Source quality -> Evidence extraction -> Story / context reconstruction -> Opportunity extraction -> Patterns / contradictions -> Decision implications -> Open questions`

### Mode B: Generative interview plan

Use when the team needs to understand a problem or opportunity.

Workflow:

`Decision -> Research questions -> Participant criteria -> Story prompt -> Follow-up prompts -> Capture format -> Synthesis plan`

### Mode C: Contextual observation / workflow study

Use when the important evidence is embedded in actual work or environment.

Workflow:

`Decision -> Relevant situation -> Participant / environment -> Observe real workflow -> Ask contextual follow-ups -> Capture artifacts / constraints -> Synthesize`

### Mode D: Evaluative usability / value session

Use when a solution exists and the team needs to see how target users respond to it.

Workflow:

`Assumption -> Target participant -> Realistic task / context -> Observe with minimal intervention -> Probe after behavior -> Separate usability from value -> Decide what to change or test next`

### Mode E: Continuous research system

Use when the user wants a repeatable research practice rather than a one-off study.

Workflow:

`Recurring participant pipeline -> Weekly customer exposure -> Interview snapshot -> Evolving experience map -> Opportunity space -> Research backlog -> Shared learning`

## Boundary with `product-discovery`

`product-discovery` owns which product uncertainty/opportunity needs exploration and how evidence changes the opportunity/solution decision. `customer-research` owns the design and integrity of qualitative customer evidence collection and synthesis.

When called from discovery, do not independently reprioritize the entire product. Return customer evidence, patterns, contradictions, opportunities, and limitations to discovery for the product decision.

## Detailed workflow

### Step 1: Define the product decision

State the decision in one sentence.

Examples:

- `Decide which onboarding obstacle to address first.`
- `Decide whether users understand and can complete the new subscription cancellation flow.`
- `Decide whether the apparent reporting problem is important enough to enter product discovery.`

If no decision exists, define a learning objective instead.

Bad:

`Learn about our users.`

Better:

`Identify the situations in which active free users fail to reach recurring value during their first week.`

### Step 2: Write research questions

Research questions describe what the team needs to learn.

They are not necessarily the exact questions asked to participants.

Keep the active set small enough that the interview can remain natural.

Examples:

- What triggers the behavior?
- What is the customer trying to achieve?
- What sequence of actions occurs today?
- Where does friction or uncertainty appear?
- What workaround is used?
- What alternative competes for attention or budget?
- What consequence follows if the problem is not solved?
- What part of the opportunity matters most in this context?

For evaluative work:

- Can the participant recognize what this product or screen is for?
- Can the participant complete the critical task without help?
- Where do expectations diverge from product behavior?
- Does the solution address the intended customer need in the tested context?

Avoid research questions that assume the preferred solution is correct.

### Step 3: Choose the method by the evidence needed

Use `interview` when the key unknown is a specific experience, decision, need, or context that the participant can reconstruct.

Use `observation / contextual inquiry` when what people actually do, their environment, artifacts, interruptions, or hidden workflow matter.

Use `usability testing` when the question is whether users can understand and use a proposed or existing solution.

Use `behavioral analytics / logs` when the question is primarily what people actually do at scale inside an instrumented system.

Use `survey` when structured self-report or broader directional input is useful, but do not use a survey as a substitute for understanding a poorly defined problem.

Use `mixed evidence` when one source cannot answer the decision well enough.

Examples:

`Analytics shows where people drop -> interviews / observation help explain the context -> solution test evaluates a proposed fix.`

### Step 4: Define relevant participants

Recruit for the behavior or context that makes someone relevant to the research question.

Prefer:

- people who recently experienced the situation;
- people who attempted the relevant task;
- people who use the relevant alternative;
- people who abandoned, cancelled, converted, upgraded, or requested help at a meaningful trigger;
- people in the target role for the decision.

Use demographics only when they are relevant to the behavior or strategy.

For B2B or multi-sided products, distinguish roles when needed:

- end user;
- buyer / economic buyer;
- administrator;
- decision maker;
- approver / blocker;
- supply-side participant;
- demand-side participant.

Do not mix materially different roles into one undifferentiated sample and call the result "users."

#### Variation

Recruit enough variation to expose important differences, such as:

- novice vs experienced;
- high-frequency vs low-frequency;
- successful vs unsuccessful;
- retained vs churned;
- paid vs free;
- different workflows or environments.

Only use dimensions that are relevant to the decision.

#### Recruiting bias checks

Ask:

- Are we hearing only from our happiest customers?
- Only our loudest complainers?
- Only early adopters?
- Only people easy for sales to reach?
- Only people who already use the proposed solution category?
- Only people from a customer advisory group that may no longer represent the market?

When using a recurring panel or advisory group, pair it with fresh participants when overfitting is a material risk.

### Step 5: Build a sustainable recruiting path when needed

For ongoing discovery, prefer a repeatable pipeline over emergency recruiting.

Possible triggers:

- cancellation;
- activation failure;
- first successful use;
- support contact about a target issue;
- customization request;
- upgrade / downgrade;
- important workflow completion;
- relevant in-product event.

Possible channels:

- in-product intercept;
- customer-success / sales / support referral;
- existing user list;
- research panel;
- relevant communities or events;
- prospects who match the target context.

The goal is not to automate research judgment. Automate the logistics that otherwise cause the team to stop talking to customers.

### Step 6: Separate research questions from interview questions

Research question:

`What causes experienced users to abandon the export workflow?`

Interview question:

`Tell me about the last time you tried to export a report and did not finish.`

Research question:

`How do teams decide which campaign data to share with management?`

Interview question:

`Tell me about the last report you prepared for your manager.`

Do not convert every research question into a direct interview question.

### Step 7: Create one or two strong story prompts

A story prompt should evoke a specific event.

Patterns:

- `Tell me about the last time you...`
- `Tell me about a specific time when...`
- `Walk me through the most recent time you...`
- `Think about the last time X happened. Start at the beginning.`

Choose scope deliberately.

Narrow scope helps optimize an existing experience:

`Tell me about the last time you tried to create a campaign in our app.`

Wider scope can reveal alternatives and adjacent opportunities:

`Tell me about the last time you needed to launch a campaign quickly.`

Very wide scope can explore a market:

`Tell me about the last time you had to decide how to acquire users for a new product.`

Do not make the scope so broad that the story becomes vague or so narrow that the product itself dictates every answer.

### Step 8: Excavate the story

Keep the participant in a concrete timeline.

Useful prompts:

- `Where were you?`
- `What happened first?`
- `What happened next?`
- `What happened before that?`
- `Who else was involved?`
- `What were you trying to accomplish at that moment?`
- `What did you do when that happened?`
- `What did you try next?`
- `What tool, document, person, or workaround did you use?`
- `What made you stop / continue / switch?`
- `What happened in the end?`

When a participant generalizes:

`I usually just ask support.`

Return to the story:

`In this specific example, did you ask support? What happened?`

When they offer a feature:

`You should add templates.`

Probe for the opportunity:

- `What would templates help you accomplish?`
- `When did you last need that?`
- `What did you do instead?`

Do not force a participant to discuss a topic that clearly does not matter to their experience. If the recruited person does not have a relevant story, record the mismatch and move on.

### Step 9: Moderate without contaminating the evidence

Avoid:

- leading questions;
- praise or disappointment that signals the desired answer;
- explaining why the product works a certain way during the task;
- defending the team;
- completing the user's task for them;
- embedding an answer in the question;
- turning the session into a sales pitch;
- asking the participant to be a product designer.

Bad:

`That was easy, right?`

Better:

`How did that compare with what you expected?`

Bad:

`Would you click this blue button to continue?`

Better:

`What would you do next?`

If a participant asks what to do during an evaluative task:

`What would you do if I wasn't here?`

or:

`What would you expect to happen if you chose that?`

Silence is allowed. Do not fill every pause with suggestions.

### Step 10: Observe context, not only words

When observation is possible, capture:

- actual sequence of actions;
- tools and artifacts used;
- environment and device;
- handoffs between people;
- interruptions;
- repeated work;
- loops and rework;
- workarounds;
- points of hesitation;
- abandonment;
- mismatches between stated process and observed process.

Do not infer internal emotion from body language alone. Record observable behavior first and interpretation separately.

Example:

`OBSERVATION: Participant paused for 18 seconds and reopened the previous screen.`

not:

`FACT: Participant was anxious.`

unless they explicitly expressed anxiety.

### Step 11: Run evaluative tasks realistically

When testing a solution:

1. Recruit people relevant to the intended opportunity.
2. Give them a realistic context or goal, not step-by-step instructions.
3. Let them encounter the product as independently as practical.
4. Observe before explaining.
5. Separate task success from stated liking.
6. Separate usability feedback from evidence of value.
7. Probe after key behavior rather than coaching before it.
8. Change the prototype quickly when a major issue is obvious; do not preserve a broken version merely to complete a ceremonial batch.

For a first-time experience, preserve the first impression. Once the participant has been taught what the product does, you cannot recreate an untainted first impression in the same session.

Use ratings such as ease, value, or likelihood only as supporting qualitative / semi-quantitative signals. Do not overinterpret them from small samples.

### Step 12: Create an interview snapshot immediately

Use a compact one-interview artifact.

Recommended structure:

#### Participant context

- Participant ID or anonymized label
- Relevant role / segment
- Relevant behavioral quick facts
- Situation studied
- Date / source

#### Memory anchor

- One memorable exact quote, if available and useful
- Or a concise paraphrase if no exact quote exists

#### Story map

Represent the specific event as nodes and links:

`Trigger -> Action -> Decision -> Friction -> Workaround -> Result`

Include loops, alternate paths, and abandonment when present.

#### Evidence

- Observed behavior
- Specific past behavior
- Current workaround
- Constraints
- Alternatives
- Notable decisions

#### Opportunities

Needs, pains, desires, barriers, or desired progress expressed or strongly evidenced in the story.

#### Other insights

Interesting evidence that is not yet an opportunity.

#### Contradictions / surprises

What did not fit the current team model?

#### Open questions

What should we learn next?

If images, names, or personal details are unnecessary or sensitive, anonymize them. The purpose is memory and context, not collecting personal data for its own sake.

### Step 13: Extract opportunities without smuggling in solutions

Opportunity forms:

- `I struggle to...`
- `I need to...`
- `I want to...`
- `I cannot... when...`
- `It takes too long to...`
- `I am uncertain about...`
- `I need confidence that...`

Good opportunity:

`I need to know which campaign is causing the spend spike before the daily budget is consumed.`

Solution disguised as opportunity:

`I need an AI anomaly detector.`

If the customer uses solution language, rewrite the opportunity using the evidenced goal or pain while preserving the customer's context.

Do not add every one-off observation to the opportunity space. Preserve it in the snapshot first. Promote it when it is relevant to the outcome and supported strongly enough to deserve attention.

### Step 14: Synthesize across interviews

Look across snapshots for:

- recurring situations;
- recurring needs / pains / desires;
- common triggers;
- common workarounds;
- segment-specific patterns;
- contradictory behavior;
- edge cases;
- differences between stated and actual behavior;
- opportunities that ladder to the desired outcome;
- assumptions that became weaker or stronger.

Useful synthesis table:

| Evidence / opportunity | I01 | I02 | I03 | I04 | Notes |
|---|---|---|---|---|---|
| Opportunity A | Y |  | Y |  | Different trigger in I03 |
| Workaround B |  | Y | Y | Y | Mostly experienced users |
| Contradiction C |  |  | Y |  | Investigate further |

This table shows recurrence inside the sample. It does not estimate population prevalence.

### Step 15: Preserve evidence traceability

For transcript analysis, attach evidence IDs when possible.

Examples:

- `[I03 12:14]`
- `[Interview-7, paragraph 42]`
- `[Support thread 1827]`
- `[Usability U04, task 2]`

For each major insight, retain enough traceability that another person can inspect the underlying evidence.

Do not create false precision if the source does not have timestamps or line references.

### Step 16: Update the customer model

State explicitly:

#### What we thought before

`ASSUMPTION: Users abandon because setup takes too long.`

#### What we learned

`EVIDENCE: In four recent setup stories, users stopped at the permissions step because they did not understand why access was required.`

#### What changed

`DECISION IMPLICATION: Reframe the target opportunity from speed to trust / comprehension for this segment.`

Update as relevant:

- experience map;
- opportunity solution tree;
- target segment hypothesis;
- product outcome hypothesis;
- assumption map;
- research backlog.

### Step 17: End with a decision implication

Research should not end with a pile of themes.

Choose one or more:

- `ENOUGH TO DECIDE` - current evidence is sufficient for the decision.
- `CONTINUE RESEARCH` - a material customer-context question remains.
- `MOVE TO OPPORTUNITY PRIORITIZATION` - problem evidence is sufficient; compare opportunities.
- `MOVE TO SOLUTION EXPLORATION` - target opportunity is sufficiently understood.
- `MOVE TO PRODUCT-EXPERIMENT` - a solution assumption now needs a focused test.
- `REVISE PROBLEM MODEL` - evidence contradicts the current understanding.
- `SEGMENT` - conflicting evidence appears to reflect different customer groups or contexts.
- `STOP / DEFER` - evidence suggests the problem is not important enough or not appropriate to solve now.

## Continuous interviewing operating model

For teams doing ongoing discovery, maintain a lightweight cadence:

`Weekly customer exposure -> Immediate snapshot -> Update customer model -> Update opportunity space -> Choose next research question`

A useful default is at least one customer conversation per week for an active discovery team, but cadence should fit the product, access, risk, and decision cycle.

Automate participant logistics when possible so urgent product work does not continually cancel customer exposure.

Continuous interviewing does not mean asking the same script every week. The research question should evolve as the product team's uncertainty evolves.

## Working with different evidence sources

### Interview transcript

Good for:

- specific stories;
- customer language;
- sequence and context;
- explicit reasoning and self-report;
- feature-request drill-down if present.

Limitations:

- cannot recover nonverbal behavior that was not recorded;
- poor moderation may have biased responses;
- absence of a topic is not evidence that it does not matter.

### Interview notes

Good for:

- fast synthesis;
- approximate story reconstruction;
- opportunity extraction.

Limitations:

- filtered through the note taker;
- quotes may not be exact;
- missing context can materially change interpretation.

### Recording

Good for:

- checking exact language;
- reviewing behavior and interaction;
- resolving ambiguous notes.

Do not expect stakeholders to watch long recordings as the primary method of sharing research. Synthesize the evidence.

### Support / sales / customer-success data

Good for:

- discovering repeated issues and triggers;
- recruiting relevant participants;
- identifying segments or contexts worth investigating.

Limitations:

- often filtered through another role;
- support overrepresents people with visible problems;
- sales conversations can overrepresent buyers and prospects rather than users.

### Analytics / product logs

Good for:

- actual in-product behavior;
- funnels;
- frequency;
- recurrence;
- segmentation;
- identifying where to investigate qualitatively.

Limitations:

- behavior without context can be ambiguous;
- instrumentation may be wrong;
- logs rarely explain the customer's full goal or off-product workaround.

### Surveys

Good for:

- structured self-report;
- broad directional input;
- screening;
- follow-up on a well-defined question.

Limitations:

- wording strongly shapes results;
- hypothetical answers are weak evidence of future behavior;
- surveys should not be expected to design the product.

### Focus groups

Use cautiously for product discovery.

Group dynamics can suppress individual perspectives and create artificial convergence. Prefer one-on-one research when the goal is to understand a person's actual behavior or detailed context.

## AI-specific operating rules

### 1. Do not simulate customer research and call it evidence

The AI may generate:

- interview plans;
- possible research questions;
- hypothetical risks;
- candidate opportunities;
- synthetic examples for explanation.

But synthetic customers, imagined interviews, and AI personas are not evidence.

Label them as hypothetical.

### 2. Do not infer unsupported personal details

From a transcript, do not invent:

- age;
- income;
- motivations;
- personality;
- emotional state;
- job seniority;
- family status;
- demographics;

unless the source supports it and it is relevant.

### 3. Keep quote integrity

If exact source text is available, preserve exact wording when labeling a quote.

If wording is summarized, label it as a paraphrase.

Never "clean up" a participant quote and still present it as exact.

### 4. Keep negative evidence

Do not optimize the synthesis to tell a neat story.

Surface:

- disconfirming interviews;
- people who did not experience the problem;
- people who solved it differently;
- failed tasks;
- conflicting segments;
- evidence that the target opportunity may be wrong.

### 5. Separate extraction from interpretation

When analyzing a corpus, first extract the observable/source-grounded material.

Then interpret.

Recommended sequence:

`Evidence -> Candidate insight -> Opportunity -> Product implication`

Do not jump directly from transcript text to feature recommendation.

### 6. Be explicit about source quality

If the agent has only a stakeholder summary of customer interviews, say that this is secondhand evidence.

If the agent has full transcripts, note that moderation quality and participant selection still limit conclusions.

If the agent has no customer evidence, produce a research plan rather than pretending the customer model is known.

### 7. Do not overshare sensitive research data

Use only customer detail needed for the product decision.

When creating reusable artifacts, prefer anonymized participant IDs and relevant behavioral context over unnecessary personal detail.

## Research quality review

Before finalizing a plan or synthesis, check:

### Decision fit

- Is the blocked product decision explicit?
- Does the method produce evidence relevant to that decision?

### Participant fit

- Did we recruit people who actually experienced the relevant context?
- Are material customer roles or segments being mixed incorrectly?

### Question quality

- Are generative questions grounded in specific stories?
- Are evaluative tasks realistic?
- Are leading and hypothetical questions minimized?

### Evidence integrity

- Can major insights be traced to source evidence?
- Are quotes exact?
- Are observations separated from inference?
- Are stated preferences separated from behavior?

### Synthesis quality

- Are contradictions preserved?
- Are patterns limited to the sample?
- Are feature requests translated into underlying needs rather than copied into requirements?

### Product usefulness

- Did the research change confidence, reveal an opportunity, remove an option, identify a risky assumption, or enable a decision?
- Is the next action clear?

## Anti-patterns

Do not:

- begin with a 40-question discussion guide;
- ask users to design the feature;
- ask `Would you use this?` and treat "yes" as demand evidence;
- ask `How often do you...?` when a specific recent story would be more useful;
- lead the participant toward the preferred solution;
- recruit only happy power users because they are easy to reach;
- recruit only the loudest complainers and generalize to everyone;
- call a focus group a substitute for one-on-one behavioral discovery;
- mix buyers, admins, and end users without recording the distinction;
- coach users through a usability test;
- explain the feature before testing first comprehension when first impression matters;
- call an easy-to-use feature valuable without value evidence;
- turn interview recurrence into market prevalence;
- report only themes that support the roadmap;
- drop inconvenient outliers without checking whether they reveal a segment or edge case;
- produce fictional personas from thin research;
- share a raw recording as the only research synthesis;
- produce a research report without a decision implication;
- keep researching indefinitely when the current decision is reversible and evidence is already sufficient;
- use research when the answer is already directly observable in reliable product data and no contextual uncertainty remains.

## Output contracts

Choose the output that fits the user's task. Do not output every section by default.

### A. Research plan

```text
Decision
Research objective
Known evidence
Key uncertainties
Research mode
Research questions
Participant criteria
Recruiting path
Session design
Capture / synthesis method
Risks and biases
Decision rule / next step
```

### B. Interview guide

```text
Research objective
Participant context to confirm
1-2 primary story prompts
Contextual follow-up prompts
Optional probes tied to research questions
What NOT to reveal or lead
Wrap-up
Capture fields
```

Keep it lightweight enough for a real conversation.

### C. Interview snapshot

```text
Participant ID / context
Situation
Memorable quote or paraphrase
Story timeline
Observed / reported behavior
Needs / pains / desires
Current workaround / alternatives
Opportunities
Other insights
Contradictions / surprises
Open questions
Evidence references
```

### D. Multi-interview synthesis

```text
Decision being supported
Sample and limitations
High-confidence patterns within sample
Contradictions / segment differences
Key customer stories
Opportunity candidates
Evidence matrix
What changed in our model
Remaining uncertainty
Product implications
Recommended next action
```

### E. Evaluative usability / value report

```text
Solution / assumption being evaluated
Participants and fit
Critical tasks
Observed outcomes
Usability failures
Value signals
Value concerns
What participants said vs what they did
Patterns / contradictions
Changes to make
Assumptions still unresolved
Next test or product decision
```

## Handoffs to other skills

Use `product-discovery` when research has identified or clarified an opportunity space and the team needs to choose what to address.

Use `product-experiment` when a specific solution assumption needs a deliberate test with predefined evaluation criteria.

Use `product-strategy` when research changes the target customer, value proposition, market focus, or strategic choice.

Use `product-metrics` when the remaining question is quantitative impact, prevalence, instrumentation, or post-launch outcome measurement.

Use `mvp-scope` when the problem and solution direction are sufficiently understood and the team needs the smallest coherent release.

Use `product-spec` after material customer and solution uncertainty has been reduced enough to define build behavior.

## Definition of done

Customer research is done for the current decision when:

- the decision or learning goal is explicit;
- the relevant customer context is represented by real evidence;
- major insights are traceable to source material;
- behavior, self-report, prediction, and inference are not conflated;
- important contradictions and sample limitations are visible;
- the underlying need is separated from requested solutions;
- the team knows what changed in its customer model;
- the next product action is clear;
- additional research would be unlikely to change the current decision enough to justify the delay.

This does not mean customer learning is finished forever. For an active product, the customer model should continue to evolve.
