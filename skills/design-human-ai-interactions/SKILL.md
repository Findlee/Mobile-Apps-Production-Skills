---
name: design-human-ai-interactions
description: Design transparent, controllable, and resilient experiences around probabilistic or generative AI. Use when asked to define AI capability framing, uncertainty and explanation, human review and confirmation, feedback and correction, automation levels, provenance, recovery from wrong output, AI-specific states, or evaluation and safety acceptance criteria. Do not use to claim model certainty, hide AI involvement, automate irreversible high-impact decisions without accountable human control, or perform model engineering unrelated to user experience.
---

# Design Human AI Interactions

Design the relationship between people and an imperfect adaptive system. Set accurate expectations, make uncertainty actionable, preserve human agency, and plan for learning and failure throughout the product lifecycle.

## Core rules

- Make clear what the AI can do, cannot do, and what information it uses when that matters to the decision.
- Match automation and required review to consequence, reversibility, uncertainty, and user expertise.
- Do not present fluent output as verified truth or a probability as an explanation by itself.
- Give people meaningful ways to inspect, edit, reject, retry, compare, undo, and escalate.
- Ask for confirmation at the point of consequential external action, not for every harmless generation.
- Explain changes in capability or behavior and avoid silently shifting the human’s responsibility.
- Collect feedback with context and purpose; do not imply every correction retrains the model immediately.
- Evaluate unequal failure, abuse, privacy, and downstream harm—not only average task success.

## Workflow

### 1. Frame the task, actors, and consequences

State the user goal, AI role, user role, affected people, data sources, output consumers, decision rights, consequence, reversibility, time pressure, and escalation path. Read [capabilities-expectations.md](references/capabilities-expectations.md).

Decide whether AI is appropriate. Prefer deterministic behavior when the task requires guaranteed repeatability or exact rule compliance.

### 2. Define the capability contract

Describe supported inputs and outputs, boundaries, freshness, known failure modes, prohibited uses, privacy assumptions, and what must be independently verified. Design onboarding and just-in-time expectation setting without overwhelming the user.

### 3. Choose the human–AI control model

Select among suggestion, drafting, ranking, constrained automation, or autonomous execution. Tie the level to risk. Define review, approval, override, cancellation, undo, audit trail, and fallback. Read [control-feedback-recovery.md](references/control-feedback-recovery.md).

### 4. Communicate uncertainty and provenance

Use [uncertainty-explanations.md](references/uncertainty-explanations.md) to decide what uncertainty is decision-relevant, how to show sources or transformations, when to state limitations, and how to distinguish generated, retrieved, inferred, and verified content. Avoid decorative confidence indicators that users cannot act on.

### 5. Model AI-specific states and failures

Cover unavailable, slow, partial, low-confidence, conflicting, unsafe, stale, unsupported, rate-limited, interrupted, corrected, and externally acted states. Preserve user input. Provide a non-AI or human path when the consequence warrants it.

### 6. Design feedback and adaptation

Let people correct the output, specify intent, constrain regeneration, and report harm. Explain what feedback changes now versus later. Guard against personalization that traps users in past behavior or exposes sensitive inferences.

### 7. Review risk and inclusion

Use [risk-inclusive-ai.md](references/risk-inclusive-ai.md). Analyze affected non-users, representation gaps, accessibility, language variation, power imbalance, automation bias, overreliance, abuse, security, privacy, and recourse. Assign accountable owners for monitoring and incidents.

### 8. Define evaluation and launch gates

Use [evaluation-handoff.md](references/evaluation-handoff.md). Combine task quality, calibration, human understanding, correction success, time/effort, accessibility, fairness slices, harmful-output rates, override/recovery, and downstream outcomes. Specify offline tests, scenario reviews, staged release, live monitoring, stop conditions, and post-launch learning.

## Boundaries with related skills

- Use `design-resilient-interactions` for general state and recovery logic; this skill adds probabilistic-system behavior and human oversight.
- Use `design-trustworthy-consent-experiences` for data choice and permission fairness.
- Use `define-product-metrics-experiments` to design causal product experiments after AI safety and quality gates are defined.

## Default output

Provide the AI capability contract, automation and human-control decision, uncertainty/provenance behavior, AI state and recovery model, feedback loop, risk register, evaluation metrics, launch gates, and acceptance criteria.
