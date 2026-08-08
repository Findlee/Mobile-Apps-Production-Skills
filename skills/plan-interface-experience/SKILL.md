---
name: plan-interface-experience
description: Turn a product idea, feature request, or vague interface brief into a user-centered experience plan before visual design or implementation. Use when asked to design the UX of an app or feature; identify users and their goals; challenge the problem statement; define activities, objects, content, primary and alternative flows, information architecture, screen inventory, state inventory, assumptions, and validation needs; or determine which screens and capabilities are required. Do not use for detailed component-pattern selection, visual styling, audits of an existing UI, or implementation-level error and recovery design.
---

# Plan Interface Experience

Define the right problem and a complete experience model before generating screens. Produce enough structure for pattern selection, prototyping, and implementation without pretending that assumptions are research findings.

## Core rules

- Treat the initial feature request as a hypothesis, not a final problem statement.
- Model the user's real activity and desired outcome, not only product functions.
- Separate user needs, business goals, implementation constraints, and proposed solutions.
- Design the main path together with meaningful alternatives, interruptions, and permission boundaries.
- Keep assumptions and unknowns visible.
- Prefer direct observation and real evidence; never fabricate research, personas, quotes, or behavioral data.
- Avoid premature visual detail and component selection.
- Make the plan proportional: a small feature needs a compact brief, not a product-design ceremony.

## Workflow

### 1. Parse the brief

Extract:

- proposed product or feature;
- target users and stakeholders;
- desired user and business outcomes;
- known context, constraints, and platforms;
- provided evidence;
- embedded solution assumptions;
- unanswered decisions.

If a missing decision would materially alter the experience, surface it. Otherwise make a labeled working assumption and continue.

### 2. Reframe the problem

Read [problem-framing.md](references/problem-framing.md). Trace the request to the underlying activity, cause, and outcome. Consider alternative problem statements before converging.

Produce a concise statement:

```text
[User or actor] needs to [achieve outcome] in [context], while [important constraint], because [underlying motivation or consequence].
```

Do not force every project into this sentence when another format is clearer.

### 3. Model users and context

Read [users-activities.md](references/users-activities.md). Identify relevant differences in knowledge, frequency, capability, motivation, environment, device, and collaboration. Describe activities and jobs without inventing demographic detail that does not change the design.

### 4. Define the product model

List:

- primary domain objects and their relationships;
- important object states and ownership;
- user capabilities and permission boundaries;
- content required for recognition and decision-making;
- system responsibilities that should not be shifted onto users;
- vocabulary users are likely to understand.

Check whether the proposed system image supports a coherent conceptual model.

### 5. Design flows and architecture

Read [flows-architecture.md](references/flows-architecture.md). Define the primary flow first, then relevant alternatives such as first use, return use, cancellation, missing prerequisites, interrupted progress, collaboration, and completion.

Organize content and capabilities into a coherent information architecture. Keep navigation structure distinct from later visual treatment.

### 6. Build the screen and state inventory

Read [screen-state-inventory.md](references/screen-state-inventory.md). Map each screen or surface to a user purpose, entry conditions, required content, actions, exits, and state families. Avoid one screen per backend endpoint or one screen per minor state.

Flag stateful or high-consequence flows for later work with `design-resilient-interactions`.

### 7. Define success and validation

Read [validation-handoff.md](references/validation-handoff.md). Separate:

- facts supported by evidence;
- design assumptions;
- riskiest hypotheses;
- measurable product outcomes;
- usability questions requiring observation;
- technical feasibility questions.

Choose the smallest prototype or research step that can reduce the most consequential uncertainty.

### 8. Hand off without overdesigning

Provide enough detail for the next decision:

- use `select-interface-patterns` for navigation, list, form, layout, and component-model choices;
- use `craft-visual-ui` after structural decisions exist;
- use `design-resilient-interactions` for detailed states and recovery;
- use `run-lean-usability-tests` to validate behavior with people.

## Quality checks

- Every major capability supports a user or business outcome.
- The plan covers entry, progress, completion, return, and escape.
- The information architecture reflects user concepts rather than team structure.
- The primary path is not burdened by rare expert or administrative needs.
- Novices can discover the flow while frequent users can become efficient.
- Assumptions are labeled and paired with a validation method.
- The plan does not prescribe visual components prematurely.

## Default output

Lead with the reframed problem and experience strategy. Then provide users and context, activity model, domain objects and permissions, primary and alternative flows, information architecture, screen/state inventory, assumptions and risks, and a validation/handoff plan. Use diagrams only when relationships or sequences are materially clearer than prose.
