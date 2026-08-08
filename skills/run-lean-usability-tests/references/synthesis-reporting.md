# Synthesis and reporting

Use this reference to create findings that remain traceable to real sessions.

## Evidence chain

Every finding should connect:

```text
Observed event(s) → affected task and consequence → interpretation of cause → design response → validation plan
```

If the cause is uncertain, preserve competing explanations and recommend the smallest discriminating test.

## Finding template

```text
Finding: [User harm in concrete terms]
Observed evidence: [Sessions, tasks, behaviors, and short quotes]
Impact: [Outcome, time, errors, recovery, trust, or exclusion]
Interpretation: [Likely design cause, labeled as inference]
Scope: [Who and what was actually tested]
Recommendation: [Change addressing the cause]
Confidence: [High | Medium | Low, with reason]
Retest: [Task and evidence that would show improvement]
```

Use participant identifiers that protect privacy. Keep quotations short, accurate, and necessary.

## Clustering

Cluster by the underlying user problem, not by screen ownership or component name. Preserve evidence that supports or contradicts the cluster. One root cause may appear across several tasks; several causes may produce superficially similar hesitation.

## Frequency language

Use exact sample descriptions such as:

- “3 of 5 tested participants…”
- “Observed in both novice sessions…”
- “One participant encountered…”

Do not write “60% of users” or imply population prevalence unless the study was designed for that inference.

## Reporting structure

1. decision and scope;
2. participants, artifact, method, and limitations;
3. most serious findings;
4. recommended changes and owners;
5. unresolved questions;
6. next iteration and retest plan;
7. appendix or links to raw evidence when permitted.

Lead with action, not a chapter-length methodology recap.

## From findings to changes

- Fix causes before symptoms.
- Prefer the smallest change likely to remove serious task harm.
- Preserve parts of the design that supported successful behavior.
- Separate usability findings from product strategy, preference, and feature demand.
- Record which recommendation the team accepted, changed, or rejected and why.

## Retesting

Use new participants when possible. Repeat the critical task without teaching the changed solution. Compare the presence and nature of the original problem, not only completion time. Watch for transferred problems, new misunderstandings, and accessibility regressions.

## No-evidence condition

When supplied material contains no real session evidence, stop before synthesis. Return a study plan, an evidence-capture template, or heuristic hypotheses explicitly labeled as such.
