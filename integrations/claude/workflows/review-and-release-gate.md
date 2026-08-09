# Specialist Review and Release Gate

Use this workflow for periodic health reviews, major product decisions, and release candidates. The main Claude session is the sole coordinator. Specialists do not call one another and do not produce competing global backlogs.

For ordinary feature delivery, start with [feature-quality-gate.md](feature-quality-gate.md). This workflow adds project-level and release-level review without repeating the feature gate.

## Ownership map

| Question | Owner | Explicit exclusion |
|---|---|---|
| Does the changed feature meet its approved behavior? | `feature-tester` | whole-project QA and critical multi-system journeys |
| Does the critical journey work across app, services, and persisted effects? | `e2e-test-runner` | UX quality, security probing, and test-strategy audit |
| Is the changed code unnecessarily complex? | `code-simplifier` | behavior changes and project-wide cleanup |
| Is mobile implementation technically healthy? | `mobile-reviewer` | feature acceptance, security, UX, and product value |
| Is the experience understandable, accessible, and recoverable? | `experience-reviewer` | functional PASS, architecture, and business strategy |
| Is the quality evidence system trustworthy and sufficient? | `qa-reviewer` | routine rerun of feature or E2E suites |
| Are threats and security controls handled? | `security-reviewer` | happy-path functional testing and store declarations |
| Do behavior, declarations, and current store rules agree? | `store-compliance-reviewer` | functional, security, architecture, and legal certification |
| Is the product solving the right problem with credible evidence? | `product-auditor` | specialist implementation and release audits |

Do not add a separate `product-lead` subagent. The main Claude session already owns routing, conflict resolution, final synthesis, and user communication.

## Non-duplication contract

1. **One question, one owner.** Every handoff names the question and its owner from the table.
2. **Consume before repeating.** Give each agent current reports, logs, artifacts, findings, and checks. Reuse trustworthy evidence.
3. **Same journey requires a different oracle.** E2E checks completion and effects; UX checks comprehension and recovery; security checks unauthorized outcomes; compliance checks declaration agreement.
4. **One shared finding ID.** When agents observe the same underlying problem, the coordinator merges it and preserves lens-specific consequences instead of counting duplicates.
5. **Narrow confirmation only.** A reviewer may repeat a check only to verify a disputed claim that could change its own conclusion. It states the hypothesis and limitation first.
6. **No recursive delegation.** Specialists return handoffs to the main session; they never invoke one another.
7. **No competing final priority.** Each specialist prioritizes only its owned domain. The coordinator resolves cross-domain order using consequence, evidence, dependencies, and release context.
8. **No concurrent product edits.** Review agents are read-only. Only `code-simplifier` edits, and only after feature behavior passes within the authorized diff.

## Shared handoff

Give every selected agent:

- decision or question it owns and explicit exclusions;
- reviewed repository, branch, diff, build, platform, and environment;
- approved behavior, critical journeys, product context, and release stage;
- existing specialist reports and shared finding IDs;
- evidence sources, freshness, and known limitations;
- accounts, test data, commands, artifact locations, and authority boundaries;
- required output and stop conditions.

## Routing

### Every non-trivial feature

Use `feature-tester`. Add `code-simplifier` only for evidence-backed complexity or accidental residue. Add `e2e-test-runner` only for critical or cross-system journeys.

### Periodic project health

Select only agents whose answer can change a decision:

- `mobile-reviewer` for engineering health;
- `experience-reviewer` for cross-journey UX/UI;
- `qa-reviewer` for the evidence and test system;
- `product-auditor` for product value, scope, metrics, or learning.

### Release candidate

Use the feature gate results as inputs, then select:

- `e2e-test-runner` for critical journeys;
- `security-reviewer` for relevant threats and security controls;
- `store-compliance-reviewer` for each target store;
- `mobile-reviewer`, `experience-reviewer`, or `qa-reviewer` only when their domain evidence is stale, missing, or material to the release decision.

Do not run every reviewer automatically. Record `NOT SELECTED` with a reason when existing evidence is sufficient or the domain is not material.

## Coordinator synthesis

The main session:

1. verifies each report's scope, version, evidence, and limitations;
2. merges shared causes and preserves specialist lens tags;
3. resolves conflicts using direct evidence, safety, broken core value, current policy, and explicit product decisions;
4. separates confirmed defects, risks, unknowns, and decisions;
5. returns one ordered backlog, required gates, residual risk, and unverified areas.

A required `BLOCKED` result remains blocked until evidence is supplied or the user explicitly accepts the documented residual risk.
