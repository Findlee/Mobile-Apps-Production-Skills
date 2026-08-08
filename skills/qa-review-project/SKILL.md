---
name: qa-review-project
description: Coordinate a complete evidence-based QA review of an application, repository, service, or multi-component project and return a consolidated prioritized improvement plan. Use for full-project QA audits, release-quality reviews, inherited-codebase assessments, mobile app plus backend reviews, test-strategy gap analysis, or requests to inspect requirements, product risks, test coverage, exploratory needs, mobile/API quality, testability, automation, test code, defects, and production readiness together. Reviews by default and does not modify the project unless explicitly requested.
---

# Review QA Project

Orchestrate the eleven specialist QA skills as review lenses. Inspect every lens for applicability, deepen the relevant ones, and merge their evidence into one decision-ready backlog.

## Operating rules

- Match the user's language and expected technical depth.
- Treat the task as review-only unless the user explicitly requests implementation. Do not edit application code, configuration, tests, CI, or external systems during the review.
- Prefer direct project evidence over generic recommendations. Reference concrete files, lines, configuration, tests, logs, or supplied artifacts.
- Separate verified facts, inferred risks, assumptions, missing evidence, and not-applicable areas.
- Do not claim runtime, device, accessibility, performance, security, resilience, or production behavior was verified from source code alone.
- Do not install dependencies, start external services, alter shared data, run load/failure tests, or access production without explicit authorization.
- Protect credentials and personal data. Report secret locations or exposure patterns without reproducing sensitive values.
- Avoid a universal quality score. Summarize material risks and evidence strength instead.
- Report findings and residual risk even when no immediate fix is known.

## Workflow

### 1. Frame the review

Identify the project or repository, components, target platforms, users, critical business outcomes, release context, review date/version, supplied evidence, and known constraints. Determine whether the available target supports only static review or also includes trusted runtime/test/operational evidence.

Proceed with reasonable assumptions when missing context does not block inspection. Ask only when a choice would materially change scope or safety.

### 2. Inventory the project

Map the repository before judging it:

- requirements, product documentation, designs, ADRs, and domain vocabulary;
- applications, services, libraries, APIs, schemas, data stores, queues, and external dependencies;
- supported mobile/web platforms and release channels;
- production code, test code, fixtures, test data, and generated artifacts;
- build, dependency, lint, coverage, CI/CD, signing, deployment, and environment configuration;
- logging, metrics, tracing, crash reporting, feature flags, runbooks, and incident evidence.

Use fast project search and existing manifests. Respect ignore files and avoid scanning dependency caches, build outputs, binaries, vendored code, or secrets unless a finding requires targeted inspection.

### 3. Build the evidence register

For each important claim, record the evidence source, version or freshness, and confidence. Treat a test file as evidence that a check exists, not that it currently passes. Treat configuration as intended behavior until runtime evidence confirms it.

Read `references/review-heuristics.md` for evidence levels, finding quality, prioritization, and review limitations.

### 4. Route across all specialist lenses

Read `references/routing-map.md`. Evaluate every listed lens and assign one status:

- **Deep review:** relevant and enough evidence exists;
- **Light screen:** relevant but limited evidence or lower risk;
- **Not verifiable:** important but runtime, environment, device, data, or operational evidence is unavailable;
- **Not applicable:** the project lacks the corresponding surface;
- **Blocked:** access or safety prevents review.

Before a deep review, read the sibling specialist's `SKILL.md` completely and load only its relevant reference files. If sibling skills are unavailable, use the routing map as a reduced fallback and disclose the limitation.

Do not force findings from every skill. A lens may legitimately conclude that no material issue is evident from the available evidence.

### 5. Review in four passes

#### Product intent and risk

Apply `$qa-clarify-requirements` where behavior or acceptance is ambiguous. Apply `$qa-plan-risk-based-testing` to establish critical outcomes, product risks, constraints, and required evidence.

#### Coverage and platform behavior

Apply `$qa-design-tests` to important rules and gaps. Apply `$qa-test-mobile-app` and `$qa-test-web-api` when those surfaces exist. Use `$qa-run-exploratory-testing` to assess missing charters or, only with a runnable authorized target, perform exploration.

#### Engineering feedback system

Apply `$qa-improve-testability` to production design and diagnostics, `$qa-build-test-automation` to suite architecture and CI feedback, and `$qa-write-maintainable-tests` to representative test-code risks. Sample strategically; do not pretend every test file was reviewed when only a subset was inspected.

#### Failure and operations

Apply `$qa-investigate-defect` only to supplied or observed failures; do not manufacture defect conclusions. Apply `$qa-assess-production-readiness` to deployable systems, release processes, operational controls, and missing evidence.

### 6. Consolidate findings

Merge duplicate symptoms into one canonical finding when they share a cause or remediation. Preserve lens tags so the user can see cross-cutting impact. Each material finding must include:

- evidence and location;
- affected behavior, users, assets, or delivery feedback;
- consequence and plausible failure mode;
- confidence and important uncertainty;
- concrete remediation or evidence-gathering action;
- validation needed to close the finding.

Do not hide disagreement between evidence sources. Record the conflict and the decision needed.

### 7. Prioritize the backlog

Use P0–P3 according to consequence, exposure, likelihood evidence, irreversibility, detectability, release timing, and dependencies. Keep severity separate from implementation effort. A low-cost improvement is not automatically high priority, and an expensive issue is not automatically deferrable.

Group actions into:

- **Now:** release blockers, unacceptable harm, missing critical evidence, or enabling work;
- **Next:** high-value risk reduction and feedback improvements;
- **Later:** planned hardening, maintainability, and lower-exposure gaps.

### 8. Deliver one review report

Use `references/output-template.md`. Include:

1. executive summary and conditional release view;
2. scope, evidence, assumptions, and limitations;
3. status of all eleven specialist lenses;
4. deduplicated P0–P3 findings;
5. quick improvements and enabling work;
6. ordered remediation roadmap with validation evidence;
7. areas not verified and how to verify them;
8. residual risk and recommended next decision.

Keep the main report concise. Put supporting detail under each finding rather than repeating it in each lens section. After delivery, wait for explicit authorization before implementing fixes.
