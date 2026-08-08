---
name: analyze-architecture-tradeoffs
description: Analyze and compare software architecture options using domain context, architecturally significant requirements, quality characteristics, constraints, data and team topology, operational risk, and explicit trade-offs. Use when choosing or reviewing an architecture style, comparing monolithic and distributed options, designing a system topology, evaluating scalability or reliability implications, creating an ADR, or assessing whether an architecture fits its context.
---

# Analyze Architecture Trade-offs

Treat every architecture as a contextual set of trade-offs. Start with the domain and success conditions, not a preferred style or technology.

## Establish context

1. Inspect the current system and decision scope.
2. Capture domain workflows, external systems, data constraints, regulatory needs, team structure, delivery process, budget, and operational maturity.
3. Separate hard constraints from preferences and inherited assumptions.
4. State the expected lifetime and change horizon of the decision.

## Identify architecturally significant requirements

1. Extract quality-characteristic scenarios from business and operational concerns.
2. Prioritize the few characteristics that could shape structure; normally keep the leading set to three.
3. Express each important characteristic with a stimulus, environment, affected artifact, response, and measurable response target.
4. Do not use technology names as characteristics.

Read [architecture-characteristics.md](references/architecture-characteristics.md) to identify and sharpen quality scenarios.

## Model structure and behavior

1. Identify logical components by domain capability and workflow.
2. Map data ownership, consistency needs, transaction boundaries, and sensitive data.
3. Map synchronous and asynchronous interactions, failure propagation, and external contracts.
4. Check whether different areas genuinely need different operational characteristics.

Read [component-and-data-analysis.md](references/component-and-data-analysis.md) when decomposition, data topology, or communication style drives the decision.

## Generate and compare options

1. Create at least two credible candidates, including the simplest viable option.
2. Compare how each candidate supports the prioritized characteristics in this context.
3. Include build, deploy, operate, evolve, debug, and team coordination costs.
4. Mark decisions that are reversible, expensive to reverse, or safe to defer.
5. Prefer hybridization only when it addresses a named mismatch.

Read [style-tradeoffs.md](references/style-tradeoffs.md) as a candidate catalog, never as a universal ranking.

## Analyze risk

Run a focused risk-storming pass for each leading characteristic. Convert hot spots into design changes, experiments, monitoring, or explicit acceptance.

Read [risk-storming.md](references/risk-storming.md) for the procedure.

## Decide and protect

Produce:

- context and hard constraints;
- architecturally significant requirements;
- component, data, and interaction model;
- candidate options and a contextual trade-off matrix;
- recommendation, consequences, and conditions that would invalidate it;
- unresolved risks and validation work;
- an ADR using [adr-template.md](assets/adr-template.md) when requested;
- fitness functions using [fitness-functions.md](references/fitness-functions.md) when important properties can drift.

Use [architecture-assessment-template.md](assets/architecture-assessment-template.md) for a complete assessment.

Do not recommend distribution for hypothetical scale. Do not claim precision unsupported by evidence. Do not hide organizational or operational costs behind a technology diagram.
