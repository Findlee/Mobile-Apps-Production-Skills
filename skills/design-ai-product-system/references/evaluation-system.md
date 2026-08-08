# AI Evaluation System

## Contents

1. Levels
2. Criteria and rubrics
3. Data
4. Methods
5. Reliability and gates

## 1. Levels

Evaluate component, turn, task, session/journey, and production outcome. Task evaluation is primary for product value; component evaluation makes failure diagnosable.

## 2. Criteria and rubrics

Choose task-specific correctness, relevance, completeness, provenance, policy adherence, usefulness, uncertainty, tone, accessibility, safety, privacy, fairness, tool/action correctness, latency, cost, and correction effort. Define good, borderline, bad, and unacceptable anchors. Validate rubrics with qualified humans.

## 3. Data

Maintain production-representative tasks, known failures, high-consequence cases, noisy/multilingual/ambiguous input, material slices, adversarial/prompt-injection cases, out-of-scope/refusal behavior, dependency failures, and repeated-use scenarios. Record provenance, permission, version, expected behavior, and disagreement. Avoid eval/tuning contamination.

## 4. Methods

- Deterministic checks for schema, constraints, permissions, state, and known facts.
- Integration tests/simulators for multi-step behavior.
- Qualified humans for subjective, domain, and high-stakes judgment.
- AI judges only after calibration for agreement, position/verbosity bias, prompt sensitivity, and variance.
- Behavioral evidence for completion, correction, abandonment, escalation, and outcome.

## 5. Reliability and gates

Check repeatability, evaluator agreement, sample stability, outcome correlation, metric conflict, evaluation cost, regression sensitivity, slice floors, and worst-case severity. Averages cannot compensate for unacceptable high-risk slices.

Never invent percentages because a template expects them. Until calibrated from current performance, user tolerance, severity, operational capacity, contractual constraints, and ownership, use `TBD`, a decision question, or an explicitly provisional range.
