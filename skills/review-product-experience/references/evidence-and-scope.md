# Evidence and scope

## Evidence ladder

Record every source and its limits:

| Evidence | Supports | Does not establish |
|---|---|---|
| Running product observed directly | Actual behavior in tested environment | Other devices, accounts, networks, or production scale |
| Repository and tests | Implemented logic, contracts, coverage, probable states | Runtime usability or production correctness by itself |
| Screenshots or recordings | Visible state, hierarchy, content, observed sequence | Hidden interaction, complete state model, user understanding |
| Prototype/design file | Intended flow and presentation | Implemented behavior or technical constraints |
| Requirements and tickets | Intended outcome and constraints | Actual use or quality |
| Analytics/logs | Defined observed events for measured population | Motivation or causality without valid design |
| Experiment results | Comparative causal evidence if trustworthy | Unmeasured outcomes or other populations/time horizons |
| Research recordings/notes | Participant behavior in studied tasks | Population prevalence or unobserved tasks |
| Expert heuristic review | Plausible issue and design risk | Real-user failure rate or compliance certification |

## Confidence labels

- **Confirmed:** directly reproducible or supported by reliable supplied evidence.
- **Supported inference:** multiple facts support the explanation, but direct validation is absent.
- **Hypothesis:** plausible question requiring user research, telemetry, experiment, or specialist verification.

Do not convert a hypothesis into a defect count. Put it in the research section with the decision it would inform.

## Scope record

State:

- review question and release/decision context;
- product, build/commit, environment, accounts and data used;
- target users, platforms, markets, languages, assistive contexts;
- journeys and states reviewed;
- supplied evidence and missing evidence;
- external systems intentionally not exercised;
- time or access constraints;
- applicable current standards and policies requiring verification.

## Safe inspection

Prefer read-only inspection and test/sandbox accounts. Do not create real payments, publish content, send messages, change production data, grant permissions, or contact people unless explicitly authorized. When an external action is unnecessary, inspect code, mock it, or stop before commitment.

## Sampling

For a large product, prioritize critical outcomes, high traffic, high consequence, recent change, known support burden, shared foundations, and representative device/state variation. State which surfaces remain unreviewed instead of implying exhaustive coverage.
