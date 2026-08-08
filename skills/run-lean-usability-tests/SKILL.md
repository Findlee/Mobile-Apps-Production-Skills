---
name: run-lean-usability-tests
description: Plan, facilitate, and synthesize lightweight qualitative usability tests for sketches, wireframes, prototypes, existing products, competitive products, and implemented flows. Use when asked to create a usability study plan, recruit participants, write realistic tasks and a neutral moderator script, run think-aloud sessions, analyze recordings or transcripts, debrief observations, prioritize observed usability problems, or plan iterative retesting. Keep research evidence separate from interpretation and convert findings into concrete fixes. Never simulate participants, fabricate observations or quotes, claim statistical proof from a small qualitative sample, or treat focus groups as usability tests.
---

# Run Lean Usability Tests

Use small, frequent qualitative studies to observe whether people can understand and use an interface. Optimize for early learning and iteration, not performative research ceremony.

## Core rules

- Test the interface, not the participant.
- Observe behavior on realistic tasks; preferences and feature requests are secondary evidence.
- Test early enough that findings can change the design, then repeat.
- Keep tasks neutral and avoid revealing the intended path or interface wording.
- Record behavior, words, and context separately from interpretation.
- Do not generalize prevalence or statistical certainty from a small qualitative sample.
- Never invent participants, sessions, quotes, observations, or results.
- Do not call an expert review, AI simulation, survey, interview, or focus group a usability test.
- Protect consent, privacy, sensitive data, and participant dignity.

## Capability boundary

AI may:

- prepare plans, screeners, tasks, scripts, consent-language drafts, observation forms, and debrief templates;
- help facilitate when the user controls the real session and participant relationship;
- analyze supplied recordings, transcripts, notes, events, and artifacts;
- cluster evidence and draft findings traceable to real observations.

AI may not present generated behavior as user evidence. If no sessions or observations exist, produce a study plan or heuristic hypotheses, not “results.”

## Workflow

### 1. Define the learning objective

Read [study-design.md](references/study-design.md). Clarify:

- product decision the study will inform;
- target activity and critical tasks;
- what is available to test;
- what evidence already exists;
- highest-risk assumptions;
- what the study cannot answer.

Choose qualitative usability testing only when observing interaction can answer the question.

### 2. Select participants and tasks

Read [participants-tasks.md](references/participants-tasks.md). Define meaningful participant characteristics without overfitting recruitment. Write tasks around a goal and scenario, not button labels or implementation steps.

For a lean round, a few representative participants can reveal important problems, but sample size must follow diversity, risk, research question, and saturation rather than a ritual number.

### 3. Prepare the protocol

Read [moderation-session.md](references/moderation-session.md). Prepare:

- consent and recording process appropriate to context;
- session introduction;
- brief context questions;
- first-impression prompt when useful;
- ordered task set with stopping rules;
- neutral follow-up prompts;
- session timing and technical setup;
- observer roles and note structure;
- fallback when the prototype or connection fails.

Pilot the protocol before the first participant.

### 4. Conduct the session

- Explain that the product is being tested and difficulty is useful evidence.
- Ask the participant to think aloud without continuously interrupting.
- Let the participant act independently; avoid hints and leading questions.
- Ask neutral prompts such as “What are you thinking?” or “What would you do next?”
- Help only after the stopping rule is reached, then mark the assistance.
- Observe goal interpretation, path, errors, hesitation, recovery, confidence, and outcome.
- Protect account credentials and personal or sensitive data.

### 5. Debrief promptly

Read [observation-debrief.md](references/observation-debrief.md). After each session, preserve raw observations and have observers independently nominate the most serious problems. Debrief the round while evidence is fresh.

Focus on observed task harm. Do not let easy fixes, stakeholder preferences, or speculative features displace serious problems.

### 6. Synthesize findings

Read [synthesis-reporting.md](references/synthesis-reporting.md). Link every finding to session evidence, affected task, consequence, and design cause. Distinguish:

- observed behavior;
- participant interpretation or quote;
- researcher inference;
- unresolved question.

Use frequency descriptively within the tested sample, not as a population estimate.

### 7. Decide and iterate

- Rank the most consequential issues.
- Choose changes that address root causes.
- Assign an owner and next iteration.
- Keep minor easy fixes separate.
- Retest changed critical tasks with new participants when possible.
- Track whether the problem disappears, changes form, or reveals a deeper issue.

## Boundaries with related skills

- Use `audit-interface-usability` for an expert evidence-based review when no participant sessions are being run.
- Use `plan-interface-experience` to define the product activity and flow before testing a concept.
- Use `select-interface-patterns`, `craft-visual-ui`, or `design-resilient-interactions` to redesign after evidence identifies the problem.

## Default output

When planning, provide learning objectives, participants, tasks, protocol, script, setup, observation form, and analysis plan. When synthesizing real sessions, lead with the most serious observed problems, show traceable evidence and uncertainty, recommend fixes, and define the next test. State clearly when no user evidence has been supplied.
