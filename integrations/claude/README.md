# Claude Code Integration

This integration packages nine reusable Claude Code subagents around the portable skills in this repository. The agent files define roles, permissions, and handoffs; the skills remain the source of procedural knowledge. The main Claude session is the sole coordinator.

## Included agents

| Agent | Purpose | Product-code access |
|---|---|---|
| `feature-tester` | Test each non-trivial feature and document reproducible defects | Read-only |
| `e2e-test-runner` | Execute authorized critical journeys against a runnable environment | Read-only |
| `code-simplifier` | Simplify the current change and remove accidental AI residue without changing behavior | Edit authorized scope |
| `mobile-reviewer` | Review mobile implementation, architecture, lifecycle, data, and release controls | Read-only |
| `experience-reviewer` | Review UX/UI, accessibility, interaction resilience, and critical journeys | Read-only |
| `qa-reviewer` | Audit the quality-evidence and testing system without routinely rerunning tests | Read-only |
| `security-reviewer` | Review mobile threats and security controls with authorized evidence | Read-only |
| `store-compliance-reviewer` | Compare behavior and declarations with current Apple and Google requirements | Read-only |
| `product-auditor` | Audit product value, scope, measurement, and learning evidence | Read-only |

The [feature quality gate](workflows/feature-quality-gate.md) defines delivery checks. The [specialist review and release gate](workflows/review-and-release-gate.md) assigns one owner to each review question and prevents duplicate execution.

## Install in a project

Claude Code discovers project agents from `.claude/agents/` and project skills from `.claude/skills/`.

1. Copy the required files from `integrations/claude/agents/` into the target project's `.claude/agents/` directory.
2. Copy or link the required skills into the target project's `.claude/skills/` directory. Installing the whole library allows conditional routing; the minimum set is listed below.
3. Copy the ready-to-use rule from `workflows/feature-quality-gate.md` into the target project's `CLAUDE.md` when the gate should apply to every non-trivial feature. Use `workflows/review-and-release-gate.md` for periodic and release reviews.
4. Restart Claude Code only if the `.claude/agents/` directory did not exist when the current session started.

Minimum skill set:

```text
feature-tester:
  qa-plan-risk-based-testing
  qa-clarify-requirements
  qa-design-tests
  qa-run-exploratory-testing
  qa-investigate-defect
  qa-test-mobile-app or qa-test-web-api

e2e-test-runner:
  qa-test-mobile-app
  qa-design-tests
  qa-investigate-defect

code-simplifier:
  refactor-safely
  clean-ai-code-artifacts
  qa-write-maintainable-tests

mobile-reviewer:
  review-mobile-application

experience-reviewer:
  review-product-experience

qa-reviewer:
  qa-review-project

security-reviewer:
  review-mobile-security

store-compliance-reviewer:
  review-mobile-store-compliance

product-auditor:
  product-review
```

## Invoke

```text
@agent-feature-tester test the current feature against its acceptance criteria

@agent-code-simplifier simplify the current feature diff without changing behavior

@agent-e2e-test-runner run the authorized critical journey on staging and return evidence

@agent-mobile-reviewer review mobile engineering health without repeating feature or E2E tests

@agent-experience-reviewer review the critical journeys for usability and accessibility

@agent-qa-reviewer audit whether the project has sufficient trustworthy quality evidence

@agent-security-reviewer review the authorized mobile attack surface and return security evidence

@agent-store-compliance-reviewer compare this candidate and declarations with current store rules

@agent-product-auditor review product value, scope, measurement, and learning evidence
```

The full message still goes to the main Claude session, which prepares the subagent handoff. Include the owned question, explicit exclusions, intended behavior, relevant diff, environment, test data, existing specialist reports, checks already run, and authority boundaries.

## Environment contract

Agents cannot manufacture a runnable test environment. Before expecting execution, provide:

- documented build and test commands;
- an authorized emulator, simulator, device, browser, or API target;
- test accounts and deterministic data setup/reset;
- a non-production payment, email, notification, or external-service mode where relevant;
- logs and artifact locations;
- stable selectors or accessibility identifiers for UI automation;
- current acceptance criteria and a trustworthy expected-result oracle.

When these are missing, the testing agents must return `BLOCKED` or a test plan rather than claim execution.

## Enforcement

Agent judgment complements deterministic checks; it does not replace them. Keep formatting, lint, type checks, test commands, protected paths, and branch policy in CI or command hooks. Claude Code prompt or agent hooks can add judgment-based gates, but agent hooks are experimental and should not be the sole production control.

## Validate

Use [EVALS.md](EVALS.md) to test activation, role boundaries, protected provenance, environment blockers, and quality-gate sequencing in a disposable project.

Run the dependency-free structural validator from the repository root:

```text
ruby integrations/claude/scripts/validate.rb
```

It validates agent frontmatter, referenced skills, read-only boundaries, skill metadata, and local Markdown links. It does not replace behavioral evals or execution against a real application.
