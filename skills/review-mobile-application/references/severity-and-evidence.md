# Severity and evidence model

## Finding types

- **Confirmed defect** — repository or execution evidence demonstrates incorrect, unsafe, or unsupported behavior.
- **Design risk** — a concrete structure or control creates a plausible failure under stated conditions, but the failure has not been reproduced.
- **Missing evidence or control** — the review could not verify a control required by the stated goal, such as an upgrade test or release recovery path.
- **Improvement opportunity** — a proportionate change would improve delivery or quality, without indicating current failure.

## Priority

- **P0 — stop and address:** active security or privacy exposure, credible data loss or corruption, unusable critical journey, or production/release blocker with no safe workaround.
- **P1 — address next:** likely core-flow failure, major compatibility or operational risk, serious accessibility barrier, costly regression path, or high-impact missing control.
- **P2 — schedule deliberately:** significant maintainability, testing, observability, resilience, or user-experience weakness with bounded current impact.
- **P3 — optional:** local simplification, polish, or future-facing improvement whose deferral has little present cost.

Priority combines impact, likelihood, reach, detectability, and recovery cost. Do not assign P0 or P1 from code style, preference, or an unmeasured performance concern.

## Confidence

- **High:** directly demonstrated by code plus an execution result, or by multiple independent pieces of repository evidence.
- **Medium:** strongly supported by a complete code/configuration path, but not reproduced in the target environment.
- **Low:** a plausible risk based on partial evidence; present it as a question, experiment, or inspection need rather than a definitive defect.

## Required finding fields

Use this structure for each finding:

```text
[ID] Concise consequence-oriented title
Type: Confirmed defect | Design risk | Missing evidence/control | Improvement opportunity
Priority: P0 | P1 | P2 | P3
Confidence: High | Medium | Low
Area and lens: ...
Evidence: path/file.ext:line; command/test result; or explicit absence search
Affected journey: ...
Impact and conditions: ...
Recommendation: smallest proportionate action
Validation: observable check that can confirm the fix
Effort: S | M | L
```

Use repository-relative paths in the reusable report. Include a short relevant command result rather than a complete log. For missing evidence, state where and how it was searched for.

## Consolidation rules

1. Merge repeated symptoms with a shared cause into one finding.
2. Split a finding only when priorities, owners, or validation methods materially differ.
3. Keep framework idioms as observations unless they create a concrete cost or risk.
4. Record strengths that invalidate a candidate finding.
5. Move uncertain performance or product claims to “Measure or decide.”
6. Downgrade priority when a reliable recovery mechanism bounds the impact.
7. Never increase priority merely to attract attention.
