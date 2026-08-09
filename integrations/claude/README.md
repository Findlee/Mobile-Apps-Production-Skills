# Claude Code Integration

This integration packages three reusable Claude Code subagents around the portable skills in this repository. The agent files define roles, permissions, and handoffs; the skills remain the source of procedural knowledge.

## Included agents

| Agent | Purpose | Product-code access |
|---|---|---|
| `feature-tester` | Test each non-trivial feature and document reproducible defects | Read-only |
| `e2e-test-runner` | Execute authorized critical journeys against a runnable environment | Read-only |
| `code-simplifier` | Simplify the current change and remove accidental AI residue without changing behavior | Edit authorized scope |

The [feature quality gate](workflows/feature-quality-gate.md) defines when to invoke each role. The main Claude session remains the sole coordinator.

## Install in a project

Claude Code discovers project agents from `.claude/agents/` and project skills from `.claude/skills/`.

1. Copy the three files from `integrations/claude/agents/` into the target project's `.claude/agents/` directory.
2. Copy or link the required skills into the target project's `.claude/skills/` directory. Installing the whole library allows conditional routing; the minimum set is listed below.
3. Copy the ready-to-use rule from `workflows/feature-quality-gate.md` into the target project's `CLAUDE.md` when the gate should apply to every non-trivial feature.
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
```

## Invoke

```text
@agent-feature-tester test the current feature against its acceptance criteria

@agent-code-simplifier simplify the current feature diff without changing behavior

@agent-e2e-test-runner run the authorized critical journey on staging and return evidence
```

The full message still goes to the main Claude session, which prepares the subagent handoff. Include the intended behavior, relevant diff, environment, test data, checks already run, and authority boundaries.

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
