---
name: audit-interface-usability
description: Evidence-based usability review of interface screenshots, prototypes, running apps, UI code, and described user flows. Use when asked to audit, review, critique, or diagnose UI/UX; explain why an interface is confusing; identify release risks; prioritize interface problems; or review an implemented UI change. Distinguish observable evidence from inference, produce severity-ranked fixes, and identify questions that require user testing. Do not use for visual styling alone, greenfield product planning, or formal legal accessibility certification.
---

# Audit Interface Usability

Audit an interface through the user's goal, not the reviewer's taste. Produce a small set of traceable, prioritized findings that a product team can act on.

## Core rules

- Establish the user, context, goal, and critical path before judging the interface.
- Separate observed facts, reasoned inferences, and unsupported unknowns.
- Treat conventions and heuristics as risk indicators, not proof that users will fail.
- Prefer the smallest fix that removes the cause; mention deeper redesigns separately.
- Rank issues by task impact, likely frequency, and recoverability.
- Do not report aesthetic preferences as usability defects.
- Do not claim conformance from screenshots alone or fabricate user-test evidence.
- Verify current platform and accessibility requirements in official sources when exact thresholds or normative claims matter.

## Workflow

### 1. Frame the audit

Record what is known about:

- target users and important differences in capability or experience;
- platform, device, input methods, and environment;
- primary task and success condition;
- business or safety constraints;
- artifact completeness and unavailable evidence.

If context is missing, infer only what is necessary, label the assumption, and continue unless the missing choice would materially change the audit.

### 2. Inspect the strongest available evidence

- For screenshots, inspect the original images at readable resolution.
- For a prototype or running interface, exercise the critical path and important branches.
- For code, inspect rendered behavior when possible, then verify responsive rules, semantics, focus, state handling, and content overflow in code.
- For a written flow, audit the model and state coverage without pretending to have seen a rendered interface.

Do not infer interaction behavior from a static image when it can be checked directly.

### 3. Walk the critical path

For each step, ask:

1. Can the user tell what this screen is for?
2. Can the user discover the next valid action?
3. Does the control suggest what will happen?
4. Is the result visible and understandable?
5. Can the user recover, go back, or change course?
6. Does the interface preserve context across transitions and interruptions?

Read [interaction-models.md](references/interaction-models.md) when the problem involves discoverability, mental models, navigation, control mapping, cognitive load, or choice.

### 4. Apply only relevant audit lenses

- Read [clarity-visual-content.md](references/clarity-visual-content.md) for scanning, hierarchy, layout, navigation, controls, copy, or visual clarity.
- Read [resilience-accessibility.md](references/resilience-accessibility.md) for forms, asynchronous work, destructive actions, errors, incomplete states, keyboard/touch use, responsiveness, or accessibility risk.
- Do not load every reference when the request is narrowly scoped.

### 5. Form findings

Each finding must contain:

- a concrete title describing the user harm;
- evidence from the artifact or flow;
- the affected user goal;
- the causal principle, explained in plain language;
- severity and confidence;
- a specific fix;
- a validation method when the conclusion remains uncertain.

Read [severity-reporting.md](references/severity-reporting.md) before assigning severity or producing the final report.

### 6. Check the whole report

Before delivery:

- merge findings with the same root cause;
- remove speculative or purely stylistic complaints;
- confirm that high-severity findings block or endanger an important task;
- distinguish accessibility risks from verified failures;
- ensure recommendations do not conflict across findings;
- include positive observations only when they help preserve something a redesign might break;
- identify the smallest set of next actions with the highest expected impact.

## Boundaries with related skills

- Use `craft-visual-ui` when the primary goal is to restyle or visually refine the interface, not diagnose it.
- Use `design-resilient-interactions` when the primary goal is to design missing states, error handling, or recovery behavior.
- During an audit, recommend those deeper workflows when appropriate without silently expanding the task into a redesign.

## Default output

Lead with the overall risk and the three most important actions. Then provide severity-ranked findings, assumptions and unverified areas, and a short validation plan. For code review, attach findings to the smallest relevant line ranges when the environment supports inline comments.
