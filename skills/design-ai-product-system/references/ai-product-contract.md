# AI Product Contract

## Contents

1. Use-case test
2. Human and AI roles
3. Autonomy and consequence
4. Experience contract
5. Usefulness gates

## 1. Use-case test

Ask whether the task is ambiguous/generative/unstructured enough for AI, what AI adds over rules/search/templates/humans, whether value survives realistic error/delay/cost, whether users can detect error before harm, whether context and authority exist, and how provider capability change affects the product.

## 2. Human and AI roles

| Role | AI | Human | Suitable condition |
|---|---|---|---|
| Assist | Draft, rank, summarize | Review and decide | Quality varies or stakes matter |
| Triage | Handle bounded cases | Resolve exceptions | Scope/escalation are detectable |
| Collaborate | Propose and revise | Direct, edit, verify | Iteration creates value |
| Act | Use tools/change state | Confirm or supervise | Evidence/controls match consequence |

Human-in-the-loop is not protection if the person cannot realistically catch errors.

## 3. Autonomy and consequence

Increase safeguards with financial, employment, medical, legal, safety, identity, public, irreversible, third-party, hidden, delayed, high-volume, weakly detectable, or broad-access consequences.

Use preview, bounded scope, parameter validation, limits, idempotency, confirmation, undo, audit, and escalation. Default to drafts for high-consequence actions.

## 4. Experience contract

Define supported/unsupported tasks, variability/freshness, data/sources, required verification, correction/fallback, timing, privacy/training use, and whether output is saved/shared/acted upon. Communicate limits at the decision point.

## 5. Usefulness gates

Set gates by task/risk tier for end-to-end completion, critical/harmful errors, correction effort, refusal/fallback, latency, cost per successful task, material slice floors, and escalation capacity. Derive them from baseline, consequence, tolerance, operations, and ownership; label provisional numbers.
