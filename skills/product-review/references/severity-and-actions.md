# Product Review Severity and Actions

## Contents

1. Finding eligibility
2. Finding types
3. Priority
4. Confidence
5. Action types
6. Dependency order
7. Numeric provenance
8. Finding quality checks

## 1. Finding eligibility

Create a material finding only when it has:

- a specific observed, evidenced, or clearly inferred condition;
- a precise artifact location, journey point, system boundary, or operating scope;
- an affected actor and scenario;
- a meaningful consequence;
- a proportionate correction or evidence step;
- an honest confidence level.

Use an evidence-gap finding when a decision is blocked by missing evidence. Do not manufacture product defects to fill a report.

## 2. Finding types

Use one primary type:

- `PRODUCT DEFECT` - behavior is broken relative to intended or required behavior;
- `PRODUCT RISK` - likely to limit a customer or business outcome;
- `EVIDENCE GAP` - an important decision lacks sufficient evidence;
- `MEASUREMENT GAP` - an outcome cannot be reliably observed or interpreted;
- `SCOPE COMPLEXITY` - unnecessary breadth, depth, or architecture harms speed or coherence;
- `UX QUALITY` - expert-inspection experience issue;
- `PLATFORM QUALITY` - platform convention, lifecycle, or quality issue;
- `ACCESSIBILITY` - barrier for people with relevant access needs;
- `AI QUALITY/RISK` - AI-specific capability, evaluation, trust, or operational issue;
- `PROCESS/BUILD-TRAP` - operating conditions reward output over outcomes and learning.

Name secondary affected lenses without duplicating the finding.

## 3. Priority

Assign priority from consequence, reach/likelihood, reversibility, and detectability. Keep confidence separate.

### P0 - Blocker

Use sparingly when the issue can:

- cause serious harm, privacy/security exposure, destructive loss, or material compliance risk;
- make the core journey unusable for the target scenario;
- make payment, entitlement, or consequential action materially unsafe;
- invalidate a critical decision because evidence or instrumentation cannot be trusted;
- make the stated release fundamentally non-viable.

### P1 - High

Materially limits primary value, outcome, monetization, retention, trust, or release quality and should precede lower-value optimization.

### P2 - Medium

Creates meaningful friction, ambiguity, inefficiency, or risk but does not dominate the current outcome.

### P3 - Low

Local optimization, polish, or low-impact process improvement.

Do not inflate priority because the topic is AI, accessibility, strategy, or security. Follow the concrete consequence.

## 4. Confidence

Use:

- `HIGH` - directly observed or strongly supported by task-relevant evidence;
- `MEDIUM` - several signals support the finding but material uncertainty remains;
- `LOW` - expert inference, partial artifacts, or weak evidence.

A high-priority, low-confidence risk usually calls for targeted verification rather than immediate implementation.

Confidence belongs to the finding, not the entire product. Overall review confidence summarizes coverage and does not erase local variation.

## 5. Action types

Give every material finding one primary action:

- `FIX` - repair behavior that is clearly broken and sufficiently understood;
- `SIMPLIFY` - reduce friction or scope while preserving value;
- `REMOVE` - eliminate harmful or weak-value complexity;
- `INSTRUMENT` - add or repair measurement before deciding;
- `RESEARCH` - obtain customer context or problem evidence;
- `DISCOVER` - explore opportunity or solution direction;
- `EXPERIMENT` - test a specific risky assumption;
- `SPECIFY` - resolve behavior, rules, states, or ownership;
- `KEEP` - preserve defensible behavior and avoid unnecessary change;
- `DEFER` - postpone work that should not distract now;
- `STOP` - discontinue work when evidence and risk justify it.

Avoid vague actions such as "improve UX", "increase retention", "add personalization", or "make AI safer". State the decision/action, why it is next, and how to verify it.

## 6. Dependency order

Prioritize in this order unless evidence supports a different sequence:

1. Safety, privacy, security, destructive behavior, and material compliance.
2. Broken core value delivery.
3. Evidence or measurement gaps blocking correct decisions.
4. High-impact causal bottlenecks supported by evidence.
5. High-risk assumptions that can be resolved cheaply.
6. Scope simplification that accelerates the above.
7. Secondary experience/platform quality.
8. Polish and future options.

Fix the earliest causal bottleneck. For example:

- repair activation-event semantics before running an activation experiment;
- diagnose first value before optimizing downstream retention;
- establish safe AI action confirmation before expanding autonomy;
- define rollback and owner before broadening rollout.

## 7. Numeric provenance

At the first occurrence of every decision-relevant number, classify it:

### Supplied constraint

Use when the user or an authoritative artifact supplied it. Cite the source.

### Derived value

Use when calculated from supplied data. State the method, denominator, time window, exclusions, and uncertainty needed to reproduce it.

### Provisional proposal

Use for a useful recommendation not yet calibrated. State:

- that it is provisional;
- who must calibrate or approve it;
- what evidence should determine the final value;
- what decision it supports.

Do not disguise a remembered heuristic as a requirement. Verify current external thresholds from primary sources when they materially affect release or compliance.

Use qualitative expected impact when data does not support a numeric estimate.

## 8. Finding quality checks

Before including a finding, verify:

- basis and location are precise;
- observation is not mixed with interpretation;
- consequence names the affected actor and scenario;
- priority and confidence are justified independently;
- action is proportionate and decision-relevant;
- owner and dependency are identified when known;
- verification demonstrates resolution;
- no unsupported number or causal claim appears;
- the same root cause is not reported elsewhere.
