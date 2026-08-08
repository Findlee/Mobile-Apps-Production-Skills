# Ethics and decision interpretation

## Ethical review

Ask:

- Are participants exposed to material risk, manipulation, discrimination, financial loss, or privacy harm?
- Is data collection proportionate and covered by the appropriate notice/consent and governance?
- Could treatment affect people who are not randomized or not users?
- Does any group bear harm hidden by the average?
- Can the team stop, remediate, notify, or compensate if harm appears?
- Would the experiment still be defensible if its mechanism and result were public?

Do not experiment on making refusal harder, obscuring costs, exploiting vulnerability, or bypassing required protections.

## Decision table

Predefine likely outcomes:

| Primary result | Guardrails | Validity | Action |
|---|---|---|---|
| meaningful benefit | pass | trusted | ship/ramp with monitoring |
| small or uncertain | pass | trusted | iterate, gather precision, or stop |
| benefit | harmed | trusted | do not ship as-is; resolve tradeoff |
| any | any | untrusted | diagnose; no causal decision |
| meaningful harm | any | trusted | stop/rollback and follow up |

## Interpretation narrative

State what changed, for whom, over what period, with what uncertainty; whether the effect is practically meaningful; which guardrails moved; plausible mechanism; validity threats; what remains unknown; and the recommended reversible next step.

Avoid “no effect” when the interval includes meaningful benefit and harm. Avoid generalizing outside the tested population, product, season, or duration without evidence.

## Long term

Short tests may miss learning, habit, fatigue, market equilibrium, trust, retention, and delayed harm. Use follow-up cohorts, holdouts, repeated measures, complementary research, and operational monitoring as appropriate.
