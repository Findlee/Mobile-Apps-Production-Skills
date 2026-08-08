# Experiment readiness and design

## Readiness gate

Confirm:

- a consequential decision and falsifiable causal hypothesis;
- stable random assignment and enough independent randomization units;
- trustworthy eligibility, exposure, outcome, and assignment logging;
- measurable outcome within a useful horizon;
- ability to ship variants, ramp, monitor, stop, and recover;
- no unacceptable interference, leakage, or ethical constraint;
- traffic and effect size support useful precision;
- teams agree on metrics and decisions before results.

If these fail, prescribe the prerequisite rather than an underpowered or misleading test.

## Design record

| Item | Decision |
|---|---|
| Population and eligibility | |
| Unit of randomization | |
| Assignment and allocation | |
| Trigger/exposure rule | |
| Control and treatment | |
| Primary/guardrail metrics | |
| Minimum meaningful effect | |
| Precision/sample rationale | |
| Duration and full cycles | |
| Exclusions and missing data | |
| Multiple testing | |
| Ramp/stop criteria | |
| Validity and ethics risks | |
| Ethical verdict and accountable approver | allow / redesign / prohibit |

## Triggering

Analyze units according to the predeclared estimand. Triggered analysis can improve sensitivity when only a subset can encounter the change, but triggering must be measurable, unaffected by treatment in a biased way, and consistently implemented.

## Ramp

Start with safe internal or small traffic where appropriate, validate telemetry and severe guardrails, then increase according to precommitted gates. Peeking for ordinary significance and stopping at a convenient moment inflates error unless a valid sequential method was specified.

## Alternatives

Use qualitative research for understanding needs, logging for descriptive behavior, surveys for attitudes, prototypes for comprehension, and causal/quasi-experimental methods appropriate to constraints. Experiments complement these; they do not replace them.
