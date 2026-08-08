---
name: qa-investigate-defect
description: Investigate a product failure, crash, incorrect result, flaky test, CI failure, performance anomaly, intermittent incident, or suspected regression and turn it into an evidence-backed defect report. Use when reproduction is unclear, the failing layer is unknown, logs or traces need correlation, variables must be minimized, competing root-cause hypotheses exist, severity and priority must be separated, or a fix needs confirmation and focused regression. Do not present an inferred cause as proven.
---

# Investigate Defects

Transform an observation into reproducible evidence and a useful explanation. Preserve uncertainty and distinguish symptom, failure mechanism, and root cause.

## Operating rules

- Match the user's language and incident context.
- Preserve original evidence before rerunning, restarting, cleaning data, changing configuration, or rebuilding.
- Separate observed facts, reliable reproduction, hypotheses, conclusions, and unanswered questions.
- Classify the failing surface before blaming product code: product, test, environment, data, dependency, observability/oracle, or unknown.
- Change one meaningful variable at a time when learning causality. Record deviations and negative results.
- Avoid destructive or privacy-sensitive investigation in shared or production environments without explicit authorization.
- Redact credentials, tokens, personal data, and sensitive payloads from reports and artifacts.
- Do not claim root cause from correlation or a plausible code path alone. State confidence and evidence against alternatives.

## Workflow

### 1. Capture the initial failure

Record the first observed behavior, expected behavior and oracle, timestamp, version/build/commit, environment, device or host, account/data identifiers, preceding actions, frequency, and user/business impact. Preserve relevant logs, traces, crash data, screenshots, video, network evidence, test output, seeds, and artifact links.

If immediate mitigation is required, separate service restoration from root-cause investigation and preserve as much evidence as safety permits.

### 2. Classify and bound the problem

Determine what is known to fail and what remains healthy. Compare product output, test harness, environment, data, dependency, and oracle. Identify the earliest trustworthy divergence rather than focusing only on the final visible symptom.

Read `references/defect-investigation-heuristics.md` for variable families, intermittent-failure tactics, and hypothesis discipline.

### 3. Establish and minimize reproduction

Reproduce with the original conditions before simplifying. Then reduce actions, data, state, dependencies, and environment while preserving the failure. Find the smallest reliable distinction between passing and failing cases.

Vary relevant dimensions such as account, permissions, data history, order, concurrency, time, locale, network, device, process, version, configuration, dependency response, and test runner. Record both positive and negative outcomes.

Do not normalize a flaky failure with blind retries. Capture recurrence rate, distribution, seeds, timing, ordering, shared-state clues, resource pressure, and correlation across workers or hosts.

### 4. Build and test hypotheses

For each hypothesis, state:

- mechanism that could produce the observation;
- evidence supporting and contradicting it;
- a discriminating experiment;
- experiment result;
- updated confidence.

Prefer experiments that separate competing explanations. Use logs, traces, code history, configuration diffs, data inspection, and controlled substitution when available. Mark unverified source-code reasoning as inference.

### 5. Determine impact and scope

Assess affected users, data, platforms, versions, workflows, frequency, recoverability, security/privacy implications, and workarounds. Separate severity—the consequence of the defect—from priority, which also depends on business timing, exposure, cost, and alternatives.

Search for sibling failure modes and adjacent paths without turning the investigation into an unlimited regression effort.

### 6. Produce the report

Use `references/output-template.md`. Write a concise summary that states the affected condition, failure, and consequence. Include minimal reproduction, expected and actual results, frequency, environment, impact, evidence, hypotheses/root-cause confidence, workaround, and unresolved questions.

If the issue is not reproducible, report the strongest evidence and missing capture needed next. Do not discard it or fabricate deterministic steps.

### 7. Confirm the fix

After a fix is available, reproduce the original failure on the unfixed version when practical, verify the same conditions on the fixed version, and run focused regression around the mechanism, boundaries, state, and related workflows. Confirm diagnostic and monitoring changes when relevant.

Report whether the fix was confirmed, not reproduced, partially verified, or blocked. Keep broader residual risk explicit.
