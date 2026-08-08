---
name: review-product-experience
description: Orchestrate an evidence-based end-to-end review of a digital application or product by routing work through the relevant UX, UI, interaction, accessibility, mobile, localization, privacy, behavioral-design, experimentation, design-system, and human-AI skills, then deduplicating findings into one prioritized improvement plan. Use when asked to review an entire app, repository, prototype, release candidate, or product experience; identify what should be improved; run a cross-disciplinary UX audit; assess readiness; or produce a remediation roadmap. Do not use for a narrow single-component question when one specialist skill is sufficient, to fabricate user or production evidence, or to modify the product unless implementation is explicitly requested.
---

# Review Product Experience

Act as the review lead. Establish evidence, select the necessary specialist lenses, coordinate their analysis, reconcile overlaps and conflicts, and deliver one decision-ready backlog. Do not dump thirteen independent audits on the user.

## Core rules

- Inspect the actual product evidence before applying heuristics.
- Separate observed facts, supported inferences, and hypotheses requiring research or metrics.
- Route by product risk and available evidence; do not invoke every specialist mechanically.
- Match review depth to the decision and available time; a rapid review must remain decision-useful rather than expanding into release assurance.
- Always screen critical journeys for usability, interaction resilience, and exclusion.
- Use current standards and platform guidance when a specialist marks knowledge as version-sensitive.
- Deduplicate by underlying user problem, not by screen, component, or skill name.
- Prioritize task failure, harm, loss of agency, inaccessible outcomes, and data or financial consequences ahead of visual polish.
- Do not claim legal compliance, accessibility certification, causal impact, or user validation without the required evidence.
- Review is read-only by default. Do not edit code, data, production configuration, analytics, or external systems unless the user explicitly asks for implementation.

## Workflow

### 1. Establish scope and evidence

Identify product type, target users, platforms, markets, critical activities, high-consequence actions, release stage, and the decision this review must support. Inventory the supplied repository, running build, screenshots, prototype, requirements, analytics, experiment results, design system, and research.

Read [evidence-and-scope.md](references/evidence-and-scope.md). State what can and cannot be concluded from the available evidence. Make reasonable assumptions for reversible review choices, but flag assumptions that could change priority or specialist routing.

Choose and state a review depth:

- **Rapid:** one or two critical journeys, core screening, and at most two deep specialist passes;
- **Standard (default):** three to five representative journeys, core pass, and at most four additional deep specialist passes;
- **Release gate:** all material journeys and specialists required by risk; use only when the user asks for release readiness and sufficient evidence/access exists.

A screening observation can route future work without loading a specialist's full reference set. Expand the depth only when the additional pass could change a release decision, `P0`/`P1` priority, or shared remediation.

### 2. Build the critical-journey map

Select a representative set of journeys rather than reviewing screens in isolation:

- first use and value discovery;
- primary recurring task;
- input, save, payment, publish, share, or other commitment;
- error, interruption, denial, cancellation, and recovery;
- settings, privacy, account, and exit where applicable;
- a specialist journey such as AI action, localization, or cross-device adaptation.

For each journey identify entry, success, failure consequence, important states, and evidence available.

### 3. Route specialist reviews

Read [review-routing.md](references/review-routing.md) and create a routing record containing selected skill, reason, scope, inputs, and expected output. Apply the smallest set that covers material risk.

The core pass normally includes:

- `audit-interface-usability` as the general evidence and severity lens;
- `design-resilient-interactions` for critical states and recovery;
- `design-inclusive-accessible-experiences` for exclusion and accessibility screening.

Add planning, patterns, visual design, usability testing, mobile, internationalization, consent, behavioral design, metrics/experiments, design systems, or human-AI review only when the product and evidence warrant them.

Within the selected depth budget, prefer specialists most likely to change the decision. Record other applicable lenses as screened, deferred, or unassessed with a reason.

If nested skill invocation is supported, invoke the selected skills. Otherwise locate each selected sibling skill, read its `SKILL.md` and only the references needed for this review, then apply its workflow. Run independent lenses in parallel when agents are available; keep journey context and evidence identical enough to compare results.

### 4. Execute evidence-first passes

Use [execution-protocol.md](references/execution-protocol.md). Begin with product structure and critical journeys, then inspect runtime behavior and visual states, followed by code/contracts and specialized risks. A code smell becomes a product finding only when its user or delivery consequence is explained.

For every candidate issue capture location, journey/state, observation, evidence, consequence, affected people, confidence, source lens, and possible correction. Keep successful patterns worth preserving so remediation does not regress them.

### 5. Challenge and consolidate

Before prioritizing:

- merge findings with the same root cause and consequence;
- split findings that need different owners or validation;
- discard pure preference without task or system consequence;
- distinguish product defects from prototype limitations and missing evidence;
- reconcile conflicts using direct evidence, user safety and agency, current platform/standard requirements, product purpose, then general heuristics;
- record unresolved tradeoffs rather than hiding disagreement;
- ensure proposed fixes do not create accessibility, privacy, localization, platform, or recovery regressions.

### 6. Prioritize and define remediation

Read [finding-priority-schema.md](references/finding-priority-schema.md). Assign `P0`–`P3` from consequence, reach, recoverability, evidence, and release context—not stakeholder volume or cosmetic visibility.

For every accepted finding provide the smallest sound correction, deeper structural correction when different, owner discipline, dependencies, acceptance criteria, and validation method. Separate:

- **Now:** release blockers, harm, broken critical outcomes;
- **Next:** structural issues with high recurring cost;
- **Later:** measured optimization and polish;
- **Research:** hypotheses that cannot yet enter the defect backlog.

### 7. Deliver one integrated report

Use [report-template.md](references/report-template.md). Lead with the decision, critical risks, and highest-leverage work. Link to exact files, screens, states, or evidence when available. Include review coverage and unreviewed risk so a polished report is not mistaken for complete assurance.

If implementation was requested, obtain agreement on any scope-changing product choices, then convert accepted findings into an execution plan and make changes using the relevant specialist skills. Preserve the original findings as the validation baseline.

## Quality gate

Do not finish until:

- every `P0`/`P1` finding has concrete evidence, consequence, correction, owner type, acceptance criteria, and retest;
- duplicate findings and contradictory recommendations are resolved or explicitly documented;
- facts, inferences, and research hypotheses are visibly separated;
- current-source dependencies and review limitations are stated;
- the plan is ordered by user/product outcome rather than by skill;
- real user research and experiment evidence have not been simulated.

## Boundaries

- Use a specialist skill directly when the request concerns one narrow domain or component.
- Use this orchestrator for whole-product, release, cross-journey, or cross-disciplinary reviews.
- A review can recommend usability studies or experiments; it cannot manufacture their results.
- A review can identify likely accessibility, privacy, security, legal, or statistical risk; formal assurance belongs to qualified owners and appropriate testing.

## Default output

Return an executive verdict, scope and confidence, critical-journey assessment, prioritized deduplicated findings, strengths to preserve, staged remediation roadmap, acceptance and validation plan, research questions, and unreviewed risks. Keep specialist working notes subordinate to the integrated report.
