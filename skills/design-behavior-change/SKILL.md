---
name: design-behavior-change
description: Design an ethical, evidence-aware behavior-change product, feature, service, communication, or policy from problem framing through COM-B diagnosis, intervention selection, implementation, measurement, and scale assessment. Use when a user asks to change an observable behavior, improve activation or follow-through, convert a broad aspiration into a behavioral plan, create a behavioral product brief, or apply behavioral science across an end-to-end project. Do not use for persuasion whose primary purpose conflicts with the affected person's interests.
---

# Design Behavior Change

Turn a desired real-world outcome into a specific, voluntary behavior-change plan. Treat every behavioral explanation and intervention as a hypothesis until supported by user evidence.

## Establish the mandate

1. Identify the affected person, the requesting organization, and any other stakeholders.
2. State the outcome in observable real-world terms. Do not use engagement, motivation, awareness, or a company metric as the sole outcome.
3. Confirm that the affected person is likely to value the outcome by their own lights.
4. Decline to optimize covert coercion, addiction, deceptive consent, or obstruction. Route questionable work through `$audit-behavioral-ethics` when available.
5. If details are missing, proceed with clearly labeled assumptions unless the missing choice would materially change the project.

## Follow the DECIDE workflow

Read [blueprint.md](references/blueprint.md) before executing a complete project.

### 1. Define

Create a behavioral project brief containing:

- actor: one behaviorally meaningful population;
- user-valued outcome and measurable outcome indicator;
- initial target behavior stated as actor + action + context;
- current behavior or competing alternative;
- organizational objective, kept separate from user welfare;
- scope, constraints, and non-goals.

Generate multiple candidate behaviors before selecting one. Prefer behavior that is effective, wanted by the actor, and feasible on a difficult but realistic day.

### 2. Explore

Map the sequence from the actor's current state to the outcome as observable micro-behaviors. Include offline steps, waiting, handoffs, and current workarounds. Mark assumptions and evidence.

Find the first consequential point where the desired path breaks. Diagnose it with `$diagnose-behavior-barriers` when available. Do not produce a generic list of biases.

### 3. Craft

Use the least intrusive effective intervention:

1. Remove the need for action through safe automation.
2. Remove unnecessary steps or make the action easier.
3. Restructure the environment, defaults, timing, cues, feedback, or choices.
4. Prepare the actor with skills, information, planning, or rehearsal.

Match each intervention to a diagnosed COM-B component and step-level barrier. Select among education, persuasion, incentivisation, coercion, training, restriction, environmental restructuring, modelling, and enablement; exclude functions that fail ethics or feasibility gates. Include a plausible mechanism, an alternative explanation, and a testable prediction.

Use `$design-choice-architecture` for consequential choices, `$design-healthy-habit-loop` only when repetition is genuinely required, and `$design-behavioral-incentives` when rewards, penalties, pricing, quotas, or performance metrics shape behavior.

### 4. Implement

Translate the behavioral specification into product requirements without pretending it is a visual design. Define:

- trigger and eligibility;
- user-visible behavior;
- state changes and edge cases;
- error recovery and exit;
- accessibility and vulnerable-user considerations;
- telemetry needed from the first implementation;
- guardrails that prevent misuse.

Apply APEASE before committing: affordability, practicability, effectiveness and cost-effectiveness, acceptability, side effects and safety, and equity.

### 5. Determine impact

Use `$design-behavior-experiments` when available. Measure the real-world outcome where feasible, the target behavior, the proposed mechanism, and harm guardrails. Do not equate clicks or retention with successful behavior change.

### 6. Evaluate

Compare results with the predeclared decision rule. Combine quantitative evidence with qualitative evidence about why the path worked or failed. Update the behavioral map and diagnosis before proposing another intervention.

Before copying a finding to a new context or broad rollout, use `$assess-intervention-scale` when available. Treat transfer and durability as new hypotheses.

## Apply mandatory quality gates

- **Specificity:** Require an observable action in a defined context.
- **Evidence:** Separate facts, inferences, assumptions, and unknowns.
- **Competition:** Account for what the actor currently does instead.
- **Autonomy:** Preserve an understandable, accessible choice and exit.
- **Welfare:** Track user outcomes and possible harm, not engagement alone.
- **Causality:** Avoid claiming impact from before/after correlation alone.
- **Restraint:** Prefer one or two targeted interventions over a bundle of behavioral tricks.
- **Deployability:** Reject an intervention that cannot be delivered acceptably, safely, equitably, or affordably in the target context.

## Deliver the result

Use the user's language. Produce these sections unless a narrower output was requested:

1. Behavioral project brief
2. Evidence and assumptions
3. Behavioral map
4. Barrier diagnosis
5. Candidate target behaviors and selection
6. Intervention specification
7. Ethics and safety review
8. Measurement and experiment plan
9. Transfer and scale risks
10. Open questions and next decision

Keep the chain explicit: **evidence -> diagnosis -> intervention -> predicted behavior -> metric**.
