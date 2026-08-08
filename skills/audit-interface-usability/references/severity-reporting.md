# Severity and reporting

Use this reference to turn observations into a concise, actionable audit.

## Evidence labels

- **Observed:** directly visible or reproducible in the supplied artifact.
- **Inferred:** a likely consequence supported by the artifact and a clear causal model.
- **Unknown:** cannot be determined without missing behavior, implementation, context, or user evidence.

Never phrase an inference as an observed user failure.

## Severity rubric

### Blocker

Prevents an essential task, creates serious safety or data-loss risk, or excludes a required user group with no workable alternative. Release should normally stop until addressed.

### High

Causes likely failure, major delay, repeated error, lost work, or loss of control on an important path. Recovery is difficult or the impact is broad.

### Medium

Creates noticeable confusion, inefficiency, or avoidable error, but most users can recover and complete the task.

### Low

Produces minor friction, inconsistency, or craft weakness with limited task impact. Do not elevate a taste preference to this level without user harm.

Severity is not certainty. Report confidence separately as high, medium, or low.

## Finding template

Use this compact structure:

```text
[Severity] User harm in concrete terms
Evidence: What is visible or reproducible.
Impact: Which goal, users, or context is affected.
Cause: Why the design creates the risk.
Fix: The smallest concrete change that addresses the cause.
Validate: What to inspect or test if uncertainty remains.
Confidence: High | Medium | Low.
```

Avoid vague titles such as “Bad UX,” “Inconsistent design,” or “Violates Fitts's law.”

## Report structure

1. **Outcome:** overall usability risk and the three highest-value actions.
2. **Scope and assumptions:** artifacts, flow, platform, and missing evidence.
3. **Findings:** blocker to low, merging duplicates by root cause.
4. **Preserve:** successful patterns at risk of being broken by redesign, only when useful.
5. **Validation plan:** questions requiring implementation checks or user observation.

## Prioritization checks

- Prefer critical-path failures over peripheral polish.
- Prefer repeated harm over rare annoyance.
- Prefer fixes that remove a root cause across screens.
- Consider the cost and reliability of recovery.
- Separate “easy to fix” from “important to fix.”
- Stop when the team has a realistic set of next actions; a longer report is not inherently better.
