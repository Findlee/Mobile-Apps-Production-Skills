---
name: design-trustworthy-consent-experiences
description: Design clear, fair privacy, consent, permission, subscription, deletion, and data-choice experiences without coercion or deceptive patterns. Use when asked to create or audit consent flows, cookie or tracking choices, permission education, data export or deletion, account closure, subscription cancellation, privacy notices, or preference controls. Do not use to provide legal advice, certify regulatory compliance, or optimize acceptance at the expense of informed and voluntary choice.
---

# Design Trustworthy Consent Experiences

Help people understand and control consequential choices about data, money, access, and ongoing commitments. Optimize for informed agency and durable trust, not maximum opt-in.

## Core rules

- Make acceptance and refusal comparably understandable and reasonably easy.
- Explain purpose, consequence, parties, duration, and reversibility before commitment.
- Request only what is necessary, at the moment it becomes relevant.
- Separate required processing from optional purposes and avoid bundled choices.
- Never use false urgency, obstruction, confirmshaming, disguised controls, hidden costs, forced continuity, or repeated pressure.
- Preserve service where a declined optional choice does not make the core task impossible.
- Record consent state and allow later review, change, withdrawal, export, or deletion as applicable.
- Distinguish product guidance from legal review; laws and platform policies require current jurisdiction-specific verification.

## Workflow

### 1. Frame the decision and data lifecycle

Identify the user goal, requested data or commitment, purpose, necessity, recipients, retention, downstream use, consequences of yes/no, and available alternatives. Read [privacy-framing.md](references/privacy-framing.md).

If the team cannot explain why a datum or permission is necessary, flag the collection itself rather than designing more persuasive copy.

### 2. Separate choices and lawful/product constraints

Classify essential, optional, personalized, marketing, sharing, and future-use purposes. Confirm which choices are truly independent. Record the jurisdictions and platform policies that require specialist review without presenting this skill as legal authority.

### 3. Design the choice architecture

Use [consent-choice.md](references/consent-choice.md) to define layered explanation, symmetric actions, defaults, granular settings, timing, confirmation, receipts, withdrawal, and denied-state behavior. Do not place material consequences only in secondary text.

### 4. Run a deceptive-pattern review

Inspect wording, visual weight, order, defaults, repetition, navigation, price disclosure, cancellation, scarcity, countdowns, and interruption. Use [deceptive-patterns.md](references/deceptive-patterns.md) as a red-team checklist.

### 5. Design the full lifecycle

Read [data-lifecycle.md](references/data-lifecycle.md). Specify first request, refusal, limited access, later change, expiry or renewal, new purpose, policy change, export, deletion, account closure, subscription cancellation, and post-action confirmation. Define what remains available at every state.

### 6. Write plain-language content

Use concrete verbs and specific consequences. State what happens now, what remains optional, and how to change the decision. Avoid euphemisms, double negatives, legalistic compression, and emotional judgment.

### 7. Validate fairness and comprehension

Test whether people can accurately explain the choice, locate refusal and withdrawal, predict consequences, and complete both acceptance and refusal paths. Compare effort, prominence, and time across alternatives. Accessibility and localization are required, not later polish.

## Boundaries with related skills

- Use `design-native-mobile-interactions` for mechanics of an OS permission prompt; this skill owns the broader fairness and data-choice model.
- Use `design-resilient-interactions` for transaction and recovery state modeling.
- Use `define-product-metrics-experiments` for ethical measurement; do not experiment toward coerced consent.
- This skill does not replace counsel, a privacy professional, or current regulator/platform guidance.

## Default output

Lead with trust risks. Provide a purpose-and-necessity table, choice architecture, complete consent/data lifecycle, plain-language copy, deceptive-pattern findings, acceptance criteria, and items requiring current legal or policy review.

## Sources

Read [source-map.md](references/source-map.md) when regulatory or platform-sensitive guidance is involved.
