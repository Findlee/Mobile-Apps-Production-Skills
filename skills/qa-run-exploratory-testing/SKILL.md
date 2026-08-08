---
name: qa-run-exploratory-testing
description: Plan, guide, execute, or report focused exploratory testing of a running product, build, API, workflow, or unfamiliar system. Use for reconnaissance, test charters, session-based testing, investigation of uncertain behavior, rapid learning, bug discovery, or deciding what to explore next. Do not use when the user only needs a static predetermined test-case suite.
---

# Run Exploratory Testing

Treat exploration as simultaneous learning, test design, and execution. Maintain a clear mission while adapting to observations from the system.

## Operating rules

- Match the user's language.
- Confirm that a runnable target or sufficiently rich evidence exists. If not, produce a charter and preparation plan rather than pretending to execute.
- Separate observation from interpretation. Record what happened, the suspected meaning, and what evidence would confirm it.
- Keep the session focused enough to explain what was and was not explored.
- Follow promising evidence, but record major departures from the charter.
- Capture reproducible evidence without exposing secrets or personal data.
- Never equate “no bugs found” with “no bugs exist.” Report coverage and residual uncertainty.

## Workflow

### 1. Define the mission

Set the target, information goal, relevant risks, constraints, available tools, environment, build/version, and timebox. A useful charter is:

> Explore [target] with [resources or tactics] to discover [information or risks].

Keep one primary mission per session. Split unrelated goals into later charters.

### 2. Reconnoiter an unfamiliar target

Map users, surfaces, features, data, states, dependencies, configuration, platform, observability, and recent changes. Note what appears important, complex, changing, failure-prone, or poorly understood.

If the system cannot be accessed, inspect supplied logs, screenshots, code, specifications, and past defects, then clearly label the output as planning rather than execution.

### 3. Choose exploration dimensions

Select relevant dimensions instead of applying every heuristic:

- inputs, boundaries, types, and representations;
- states, transitions, sequences, retries, and interruptions;
- personas, permissions, accounts, and data ownership;
- time, locale, network, device, load, and environment;
- dependencies, trust boundaries, failure injection, and recovery;
- consistency across screens, endpoints, clients, and versions;
- observability through UI, responses, logs, events, metrics, and storage.

Read `references/exploration-heuristics.md` for tactics and oracle ideas.

### 4. Explore adaptively

Begin with a baseline success path, then vary one meaningful dimension at a time until interactions become important. Use discoveries to update the model and choose the next experiment. Revisit suspicious behavior from a different state, account, sequence, or observation channel.

When tools are available and authorized, collect relevant logs, network traces, screenshots, timestamps, identifiers, and state snapshots. Avoid changing external production state unless the user authorized it.

### 5. Evaluate findings

Compare observations with explicit requirements and multiple implicit oracles: consistency, user expectations, comparable products, history, standards, claims, purpose, and absence of severe side effects. Label uncertain findings as questions or risks until enough evidence supports a defect claim.

For each defect candidate, capture the shortest reliable reproduction, expected versus actual behavior, impact, frequency, environment, evidence, and useful diagnostic clues.

### 6. Debrief and report

Use `references/session-report-template.md`. Include:

1. charter and timebox;
2. environment and data;
3. areas and dimensions explored;
4. discoveries, defects, questions, and opportunities;
5. coverage achieved and meaningful omissions;
6. blockers and evidence quality;
7. residual risks and recommended next charters.

Distinguish session time spent on setup, testing/design, defect investigation, and reporting when useful. Recommend follow-up based on new information, not a fixed script.
