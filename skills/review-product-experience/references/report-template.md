# Integrated review report

Adapt depth to the request; do not fill sections with ceremony.

## 1. Executive verdict

- readiness or overall assessment;
- most important user/product risk;
- highest-leverage next action;
- what should not ship or should not change yet.

## 2. Scope and confidence

- product/build/environment and review decision;
- critical journeys and specialist lenses covered;
- evidence used;
- important assumptions, exclusions, and confidence limits.

## 3. Critical-journey health

| Journey | Outcome | Main risk | Evidence/confidence | Recommendation |
|---|---|---|---|---|

Use `healthy`, `at risk`, `broken`, or `not assessed`; do not create a decorative numerical score without a defined model.

## 4. Priority findings

Present P0/P1 first with the full finding schema. Compress P2/P3 where appropriate. Link exact files, screens, states, recordings, or metric definitions.

## 5. Strengths to preserve

List validated patterns, clear behaviors, reusable foundations, and changes that must not regress them.

## 6. Remediation roadmap

### Now

Release blockers, harm, broken critical tasks, required instrumentation or evidence.

### Next

Root-cause and shared-foundation work; order dependencies and name owner disciplines.

### Later

Measured optimization, lower-risk polish, and experiments after trust/readiness gates.

## 7. Validation plan

Map each important correction to acceptance criteria, automated/manual checks, environments, real-participant research, telemetry, or trustworthy experiment. Preserve baseline evidence for comparison.

## 8. Research questions

List hypotheses separately with the decision they inform and the smallest credible study/data needed.

## 9. Unreviewed risk

Name unsupported platforms, locales, accounts, permissions, assistive technologies, network states, external integrations, production scale, policies, or legal/security domains. State who should verify them.

## Backlog-ready compact row

`[Priority] Finding — journey/state — evidence — consequence — correction — owner — acceptance — validation`
