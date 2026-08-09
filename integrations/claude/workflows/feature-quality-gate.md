# Feature Quality Gate

Use this workflow after implementing a non-trivial feature or behavior change. Keep the main Claude session as the sole coordinator. The three specialists return bounded results and do not call one another.

For periodic product, engineering, UX, QA, security, or store reviews, use [review-and-release-gate.md](review-and-release-gate.md). Those reviewers consume this gate's evidence and do not repeat it by default.

## Route by risk

| Situation | Required specialist |
|---|---|
| Any non-trivial feature or behavior change | `feature-tester` |
| Avoidable complexity or accidental AI residue in the changed code | `code-simplifier` after feature behavior passes |
| Critical journey, release candidate, authentication, payment, synchronization, migration, permission, or destructive action | `e2e-test-runner` |
| Trivial copy, formatting, or mechanically verified metadata change | Proportional direct checks; specialists optional |

## Handoff contract

Give every specialist:

- approved user outcome and behavior;
- acceptance criteria and non-goals;
- repository root, current branch, and relevant diff;
- environment, account, test-data, and command information;
- known limitations, existing failures, and checks already run;
- explicit authority for files and external systems.

Do not ask a specialist to infer product rules from implementation when an authoritative specification exists.

## Sequence

1. Implement the smallest coherent feature slice in the main session.
2. Invoke `@agent-feature-tester` with the handoff. The tester returns `PASS`, `FAIL`, `PASS WITH WARNINGS`, or `BLOCKED` and does not edit code.
3. For `FAIL`, have the main session verify evidence, fix confirmed defects, and invoke the same tester for focused retest. Do not silently convert product decisions into bug fixes.
4. After feature behavior passes, invoke `@agent-code-simplifier` only when the diff has a concrete simplification target or accidental residue. Review its diff and rerun the feature checks.
5. Invoke `@agent-e2e-test-runner` when the route table requires it. A missing runnable target produces `BLOCKED`, not a simulated pass.
6. Report one completion summary with specialist results, checks run, artifacts, residual risk, and anything not verified.

## Stop conditions

Stop and request a decision when:

- expected behavior is materially ambiguous;
- testing would affect production, real payments, real users, or irreversible data without explicit authorization;
- required environment, account, device, service, or data cannot be prepared safely;
- a simplification would change public behavior or overwrite unrelated work;
- the same failure remains unexplained after focused investigation.

## Ready-to-copy project rule

Add the following to the target project's `CLAUDE.md` when every non-trivial feature must pass the workflow:

```markdown
## Feature quality gate

Before declaring a non-trivial feature complete:

1. Give `feature-tester` the approved behavior, acceptance criteria, current diff, environment, and checks already run.
2. Fix only confirmed defects and have `feature-tester` retest them.
3. Use `code-simplifier` after behavior passes when the changed code has evidence-backed complexity or accidental AI residue. Review its diff and rerun relevant tests.
4. Use `e2e-test-runner` for critical journeys and release-sensitive changes.
5. Report `BLOCKED` rather than claiming execution when a runnable target or trustworthy oracle is missing.
6. Do not declare completion until required gates pass or the user explicitly accepts the documented residual risk.
```

For deterministic enforcement, connect project test commands to Claude Code hooks or CI. Do not rely on an agent's judgment alone for formatting, lint, type checks, test execution, or protected-branch policy.
