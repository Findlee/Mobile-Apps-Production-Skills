---
name: review-mobile-application
description: Perform a comprehensive, evidence-based, read-only review of an existing Flutter or React Native application and consolidate findings across product flows, framework implementation, architecture, module boundaries, testing, offline data and synchronization, performance, native integrations, privacy-sensitive behavior, and release readiness. Use when auditing a mobile codebase, assessing application health, preparing a modernization roadmap, identifying technical debt and risks, reviewing an app before release or further development, or asking what should be improved. Do not edit code unless the user explicitly requests implementation after the review.
---

# Review a Mobile Application

Act as the audit coordinator. Inspect the actual repository, select only the relevant specialist lenses, and return one deduplicated improvement report. Remain read-only unless the user explicitly expands the task to implementation.

## Orchestration safety

When invoked directly for a mobile-engineering audit, this skill is the active orchestrator. When invoked by `product-review`, it operates as a bounded suite pass:

- inspect only the engineering question, journeys, repository surfaces, and release risks supplied by the parent;
- return scoped findings, evidence, confidence, limitations, and handoff recommendations;
- do not invoke `product-review` or claim global product priority;
- return unresolved product semantics to the parent instead of silently deciding strategy, scope, or behavior;
- load engineering specialists lazily and only when they can materially change the bounded answer.

Only one skill owns final synthesis and the user-facing backlog at a time.

## Establish the audit boundary

1. Confirm the repository root, requested depth, target platforms, and whether the goal is general health, release readiness, modernization, or a particular risk.
2. Detect Flutter or React Native from manifests and project structure. Record framework, language, package-manager, mobile-platform, build-configuration, test, CI, and release evidence.
3. Inspect working-tree state before relying on generated results. Preserve all user changes.
4. Separate repository facts, command results, reasonable inferences, and unknowns. Do not present missing evidence as a defect.
5. Select two or three representative journeys that cover a core flow, data or recovery behavior, and a platform edge when present.

Read [review-checklist.md](references/review-checklist.md) to inventory evidence and avoid blind spots. Adapt the depth to the repository and the user's goal.

## Trace behavior before judging structure

For each selected journey, trace:

- entry, navigation, and user-visible states;
- state ownership and dependency direction;
- data source, persistence, network, serialization, and error handling;
- cancellation, retries, lifecycle transitions, and process restoration;
- permissions or native boundaries;
- tests, logging, release configuration, and recovery controls.

Prefer complete change and failure paths over sampling isolated files. Use searches to locate entry points, then read the implementation and its callers, tests, and configuration.

## Route to specialist lenses

Read [review-routing.md](references/review-routing.md), then apply only the relevant procedures from the installed bundle. If the environment supports loading named skills, use those skills directly. Otherwise, use their `SKILL.md` workflows and relevant references as audit lenses. Do not claim that a specialist was applied unless its instructions were available.

Always consider framework implementation, module boundaries, testing, and release controls. Conditionally examine product scope, system architecture, synchronization, performance, native integration, and refactoring safety when repository evidence or the user's goal makes them relevant.

Do not run every specialist mechanically. In particular:

- classify performance concerns as risks or measurement needs unless reproducible measurements demonstrate a bottleneck;
- activate synchronization analysis only for offline behavior, queued mutations, replicated state, or eventual consistency;
- activate product discovery only when missing or contradictory user journeys prevent judging value or completeness;
- recommend refactoring only when a concrete change driver or risk justifies it;
- avoid framework, state-management, or architecture migrations based on preference alone.

## Consolidate evidence

Create a candidate finding only when it has a concrete consequence. Deduplicate symptoms that share one cause. For every retained finding, provide:

- a stable ID, finding type, priority, and confidence;
- exact evidence using repository-relative `file:line` references, test or command output, or an explicitly labeled absence check;
- affected journey or operational capability;
- impact and the conditions under which it occurs;
- the smallest proportionate recommendation;
- a validation method and the specialist lens responsible for the recommendation.

Read [severity-and-evidence.md](references/severity-and-evidence.md) before assigning priorities. Do not use numeric health scores, invent precision, or inflate style preferences into defects.

## Build the improvement roadmap

Order work by risk retired and dependency, not by file or architectural layer:

1. **Immediate** — confirmed release blockers, security or privacy exposure, data loss, crashes, and broken core journeys.
2. **Near-term** — high-value reliability, testing, compatibility, accessibility, or observability improvements that fit a normal delivery cycle.
3. **Structural** — justified boundary, state, data, or migration work that should proceed in safe increments.
4. **Measure or decide** — experiments, profiling, product decisions, and missing evidence required before prescribing a change.

For each roadmap item, link the finding IDs, dependencies, expected outcome, verification, and rough size (`S`, `M`, or `L`). Use `plan-feature-change` after the review when the user wants an implementation-ready plan for accepted recommendations.

## Deliver one report

Use [mobile-application-review.md](assets/mobile-application-review.md) as the output structure. Include:

- an executive verdict and the most important next move;
- scope, evidence inspected, commands run, and limitations;
- a qualitative area scorecard;
- prioritized findings with detailed evidence;
- an ordered remediation roadmap;
- strengths and areas that should not be changed without new evidence;
- validation steps and unanswered questions.

If no high-priority defect is supported, say so directly and still identify residual risks and unassessed areas. Keep the final report self-contained; do not return separate specialist reports.

## Guardrails

- Do not edit code, dependencies, generated files, or configuration during the audit.
- Do not expose secrets encountered during inspection; report their location and category without reproducing values.
- Do not run destructive commands or operations that contact production services.
- Do not treat successful compilation, static analysis, or test execution as proof of complete correctness.
- Do not recommend a rewrite without evidence, migration increments, compatibility constraints, and stop criteria.
- Do not hide tool failures or uninspected areas; label them as limitations.
