---
name: qa-clarify-requirements
description: Clarify ambiguous, incomplete, or conflicting product requirements and turn them into testable behavior. Use for feature briefs, PRDs, user stories, acceptance criteria, designs, API contracts, bug-fix descriptions, or implementation plans when the expected behavior, examples, boundaries, states, quality attributes, or open decisions are unclear. Do not use as the primary skill when requirements are already clear and the task is only to generate tests.
---

# Clarify QA Requirements

Turn a vague request into a shared, testable model before implementation or detailed test design. Expose uncertainty rather than silently converting assumptions into requirements.

## Operating rules

- Match the user's language and level of detail.
- Treat provided documents, code, designs, and conversations as evidence, not automatically as complete truth.
- Separate confirmed facts, reasonable assumptions, hypotheses, contradictions, and open questions.
- Ask only questions whose answers materially change behavior, risk, scope, or acceptance. If work can continue safely, state an assumption and proceed.
- Prefer concrete examples and observable outcomes over abstract wording.
- Avoid prescribing UI steps unless the interaction itself is the requirement.
- Never claim the requirements are complete. State remaining ambiguity and residual risk.

## Workflow

### 1. Establish intent and scope

Identify the user or stakeholder, business outcome, trigger, system boundary, in-scope behavior, and explicitly excluded behavior. Distinguish the problem to solve from the proposed implementation.

### 2. Inventory the evidence

Read the supplied artifacts. Record:

- confirmed statements;
- terms needing a definition;
- contradictions between sources;
- missing dependencies or ownership;
- assumptions required to make progress.

Do not merge conflicting statements. Surface the conflict and explain its consequence.

### 3. Build a behavioral model

Model only the dimensions relevant to the change:

- actors, roles, permissions, and personas;
- entities, data, identities, and relationships;
- preconditions, triggers, actions, and observable outcomes;
- states, transitions, reversals, retries, and terminal states;
- time, ordering, concurrency, and interruption;
- external services, devices, networks, and trust boundaries.

Read `references/requirements-heuristics.md` when selecting models and quality lenses.

### 4. Turn rules into examples

Create a small set of realistic examples covering the normal case, meaningful alternatives, rejection/error behavior, and boundaries. Include exact inputs and expected outcomes where possible. Use Given/When/Then only when it improves precision.

Test each example against the stated business goal. If two plausible outcomes remain, mark it as an unresolved decision rather than choosing silently.

### 5. Expose cross-cutting requirements

Check whether the feature has relevant expectations for security, privacy, accessibility, performance, reliability, compatibility, localization, observability, recovery, and maintainability. Do not expand every category mechanically; prioritize by impact and likelihood.

### 6. Prioritize decisions and risks

Rank open questions by how strongly they can cause rework, user harm, data loss, security exposure, release blockage, or untestable behavior. Explain why each high-priority question matters.

### 7. Produce the clarification brief

Use `references/output-template.md`. Keep the result decision-ready:

1. goal and scope;
2. behavioral model;
3. concrete examples;
4. prioritized open questions and contradictions;
5. assumptions used to continue;
6. risks and quality attributes;
7. proposed acceptance criteria;
8. remaining uncertainty and recommended next action.

When the user asks to modify a specification, preserve traceability by showing which statements were added, changed, or left unresolved.

## Handoff

After clarification, recommend `$qa-design-tests` when detailed test design is the next task. Recommend `$qa-run-exploratory-testing` when the product already exists but behavior is poorly understood and learning from the running system is more useful than further document analysis.
