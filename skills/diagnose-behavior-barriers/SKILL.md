---
name: diagnose-behavior-barriers
description: Diagnose why a specific intended behavior is not occurring or why people abandon a journey. Use for activation, onboarding, conversion, adherence, retention, completion, adoption, habit, or real-world follow-through problems; for behavioral journey audits; and whenever a team is tempted to explain failure as low motivation. Produces ranked, falsifiable barrier hypotheses using COM-B, optional TDF, CREATE, B=MAP, friction, context, prior experience, and decision-quality checks.
---

# Diagnose Behavior Barriers

Find the earliest consequential barrier in a concrete behavioral path. Diagnose mechanisms, not character flaws.

## Define the diagnostic unit

Require or infer:

- one actor segment;
- one observable target behavior;
- the moment and context in which it should occur;
- the current or competing behavior;
- current rate, desired rate, and relevant time window;
- known qualitative and quantitative evidence.

If the input is an aspiration such as "be healthier" or a metric such as "increase retention," first translate it into a specific behavior. Keep multiple segments separate when their context or prior experience differs.

## Build the behavioral map

List every observable micro-behavior from the current state to completion. Include noticing, understanding, deciding, locating resources, waiting, authentication, handoffs, offline actions, and confirmation.

For each step record:

- what happens now;
- evidence of completion or abandonment;
- context and competing action;
- friction, uncertainty, and prior experience;
- whether the step is automatic or deliberative.

Start diagnosis at the first large drop or consequential failure. Do not optimize a later step while an earlier one blocks most actors.

## Diagnose with complementary lenses

Read [barrier-taxonomy.md](references/barrier-taxonomy.md). Use:

1. **COM-B** to identify the system condition that must change: physical or psychological capability, physical or social opportunity, reflective or automatic motivation.
2. **CREATE** to explain where the specific journey step fails.
3. **B=MAP** to check whether motivation, ability, and a prompt converge at the action moment.

Use the Theoretical Domains Framework only when a broad COM-B category is too coarse to guide evidence collection. Do not produce a domain checklist when the existing evidence already isolates the barrier.

For every candidate barrier:

1. Name the observable signal.
2. Name the proposed mechanism.
3. Cite supporting evidence or label it as an inference.
4. State what evidence would contradict it.
5. Predict what would change if the barrier were removed.

Use cognitive-bias labels only when the situation, predicted error, and evidence match. Never use a bias name as the diagnosis by itself.

## Rank hypotheses

Score each barrier qualitatively on:

- reach: how many actors encounter it;
- severity: how strongly it prevents action;
- confidence: strength of evidence;
- addressability: whether the team can change it;
- welfare relevance: whether removing it helps the actor.

Rank by expected behavioral impact, not by novelty. Prefer ordinary explanations such as missing cues, unclear value, excessive effort, bad timing, missing resources, or a negative prior experience before exotic psychological explanations.

## Recommend learning, not premature solutions

For the top barriers, propose the smallest evidence-gathering step:

- event or funnel analysis;
- session observation or usability test;
- contextual interview about a recent real episode;
- support-log or search-log review;
- prototype comparison;
- field experiment.

Read [research-guide.md](references/research-guide.md) when evidence is weak or contradictory.

## Deliver the diagnosis

Use the user's language and return:

1. Target behavior and scope
2. Behavioral map
3. Evidence inventory
4. Ranked barrier table: step, signal, mechanism, evidence, confidence, falsifier
5. Primary diagnosis and competing explanations
6. Next evidence to collect
7. COM-B component and intervention constraints, without designing a full solution unless asked

End with a one-sentence causal hypothesis in this form:

> In [context], [actor] does [current behavior] instead of [target behavior] mainly because [barrier], as indicated by [evidence]; if [barrier] changes, we expect [observable effect].
