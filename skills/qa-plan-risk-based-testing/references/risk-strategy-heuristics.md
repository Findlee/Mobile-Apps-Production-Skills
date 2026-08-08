# Risk strategy heuristics

Load this reference when building or revising the risk model. Select useful prompts; do not turn every category into mandatory work.

## Write actionable risk statements

Use a structure such as:

> Because of **condition or uncertainty**, **failure event** may occur, causing **consequence** for **affected party or asset**.

Prefer “a retry creates a second charge after a network timeout” over “payments may fail.” Link each risk to evidence or label it as a hypothesis.

## Discover quality risks

Explore relevant sources:

- user goals, accessibility needs, harmful misuse, and support history;
- money, safety, personal data, legal obligations, trust, and irreversible actions;
- complex rules, state transitions, boundaries, concurrency, time, and migration;
- changed, new, inherited, poorly understood, or historically defective code;
- integrations, third parties, platforms, devices, networks, and operational dependencies;
- capacity, performance, recovery, compatibility, security, privacy, and observability;
- weak requirements, unavailable environments, unrealistic data, missing skills, and schedule pressure.

Product risks concern harm from product behavior. Project and test risks concern the team's ability to obtain evidence. Keep them distinct because their mitigations differ.

## Compare priorities

Use qualitative tiers or a simple ordinal scale unless credible numerical data exists. Consider:

- severity and breadth of consequence;
- exposure and frequency of the affected workflow;
- technical likelihood from complexity, novelty, coupling, change, and fault history;
- ability to detect the failure before harm;
- ability and time to recover;
- confidence in the estimate.

Do not rely on multiplying arbitrary ordinal scores. Do not demote catastrophic risks merely because historical frequency is low. Record disagreements and uncertainty.

## Select evidence

Ask what observation would change the decision. Match the method to the risk:

- examples and model reviews for misunderstood behavior;
- focused automated checks for stable repeatable rules;
- integration and contract tests for boundary assumptions;
- exploratory sessions for unknown behavior and interacting conditions;
- accessibility or usability evaluation with representative users and assistive technology;
- threat modeling and security testing for assets and abuse paths;
- workload, endurance, capacity, and recovery tests for operational risk;
- staged rollout, telemetry, and synthetic checks for risks best evaluated in production.

A test activity can address several risks, and one severe risk usually needs evidence from several scopes or methods.

## Balance the strategy

Use the agile testing quadrants as prompts:

- technology-facing checks that support development;
- business-facing examples that support development;
- business-facing evaluation that critiques the product;
- technology-facing evaluation that critiques the product.

Do not force equal effort into every quadrant. Allocate effort according to the risk model.

## Plan feedback timing

Seek the cheapest useful evidence early. Consider requirement/example review, pre-commit checks, pull-request checks, build qualification, scheduled suites, exploratory sessions, release evidence, rollout observation, and post-release learning. Late evidence may be high quality but arrive too late to change the decision economically.

## Report release evidence

Avoid a single pass percentage. Report:

- evidence obtained and its reliability;
- material defects and their user impact;
- important risks with strong, weak, or missing evidence;
- environment and data differences;
- mitigations, feature flags, rollout safeguards, and recovery options;
- residual risk owners and monitoring;
- recommendation with conditions, not an unconditional certification.
