# Finding and priority schema

## Finding record

| Field | Requirement |
|---|---|
| ID and title | Stable, outcome-focused, no vague “bad UX” |
| Priority | P0–P3 with rationale |
| Journey/state | Exact user activity and point of failure |
| Location | Screen, route, component, file/line, build and environment |
| Observation | Reproducible fact, separate from interpretation |
| Evidence | Source and confidence label |
| Consequence | User harm, blocked goal, risk, cost, or lost agency |
| Affected contexts | Users, platforms, locales, inputs, states |
| Root cause | Supported inference or explicitly marked hypothesis |
| Recommendation | Smallest sound correction and structural option if different |
| Owner/dependencies | Responsible discipline and prerequisites |
| Acceptance criteria | Observable post-change behavior |
| Validation | Retest, automated check, user study, metric, or specialist review |

## Priority levels

- **P0 — Stop/repair now:** essential outcome blocked broadly; severe safety, financial, privacy, data-loss, inaccessible, deceptive, or irreversible harm; or release would create unacceptable exposure.
- **P1 — High:** critical journey frequently fails or creates substantial error, exclusion, mistrust, support cost, or repeated product inconsistency; recovery is poor.
- **P2 — Medium:** meaningful friction, comprehension, accessibility, consistency, or maintainability problem with a workaround and moderate consequence.
- **P3 — Low:** bounded polish, efficiency, or clarity improvement with low consequence; never label a taste preference as a defect.

Priority can rise with consequence, breadth, recurrence, inability to detect/recover, shared-component reach, approaching release, or strong direct evidence. It can fall when evidence is weak, consequence is small, the path is rare, recovery is easy, or the issue is a prototype artifact.

## Effort is separate

Estimate effort/dependency as small, medium, large, or unknown, but do not lower severity because a fix is expensive. Use impact and effort to order work within a priority band.

## Deduplication

Merge repeated symptoms when one root correction and owner resolves them. Keep examples under the parent finding. Split when consequences, owners, standards, or release decisions differ. Cross-reference supporting skills instead of creating duplicate tickets.

## Hypotheses

Questions such as “users may not trust this” belong in a research queue unless behavioral, support, or metric evidence exists. Include the decision, target participants/data, task or metric, and result that would trigger action.
