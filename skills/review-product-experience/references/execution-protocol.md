# Execution protocol

## Pass 1: Product and journey structure

Map actors, critical outcomes, product objects, navigation, entry/exit, and complete state families. Identify missing screens/states, dead ends, conflicting product models, and unsupported assumptions before visual critique.

## Pass 2: Runtime and visible experience

When a safe runnable build exists, exercise representative journeys using appropriate devices, windows, input methods, text sizes, locales, account states, networks, and permissions. Capture exact reproduction and state. Inspect screenshots only for what they can show.

Review clarity, hierarchy, discoverability, feedback, prevention, recovery, continuity, content, responsiveness, and equivalent operation. Preserve successful patterns.

## Pass 3: Implementation evidence

Trace accepted candidate findings to code, semantics, state ownership, components, tokens, content resources, API contracts, tests, telemetry, and platform integration. Distinguish a systemic root cause from repeated symptoms.

Do not turn code style into UX priority unless it causes inconsistency, inaccessible behavior, incorrect state, high regression risk, or delivery burden.

## Pass 4: Specialist risk

Execute selected mobile, localization, consent, experimentation, design-system, or AI lenses with their current-source requirements. Cross-check critical recommendations against accessibility, user agency, failure recovery, and localization.

## Pass 5: Challenge

For each proposed finding ask:

- What was observed, and where?
- Which user goal fails or becomes harder?
- Could this be a prototype/test-data limitation?
- Is the inferred cause supported?
- Does the recommendation solve the cause or only restyle the symptom?
- What new harm or regression might the fix create?
- What evidence would change the priority?

## Parallel review package

When independent agents are available, give each selected lens the same concise package: product goal, users, platforms, critical journeys, evidence locations, environment, constraints, and requested finding schema. Do not pass other reviewers’ conclusions until the independent pass is complete.

Require each reviewer to return candidate findings, evidence, consequence, confidence, recommended change, acceptance criteria, unresolved questions, and strengths to preserve. The orchestrator—not the reviewer—owns final priority and deduplication.
