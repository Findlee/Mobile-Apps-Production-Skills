# Control, feedback, and recovery

## Automation ladder

Choose the lowest level that delivers value:

1. Retrieve or organize information.
2. Suggest options.
3. Draft an artifact for editing.
4. Recommend one option with rationale.
5. Prepare an action for explicit approval.
6. Act within narrow reversible constraints and report.
7. Act autonomously with monitoring and accountable intervention.

Higher consequence, low reversibility, low detectability, novel context, or uncertain capability requires stronger human review and narrower autonomy.

## Control contract

Define preview, edit, constraints, compare, regenerate, stop, cancel, approve, reject, undo, version history, audit, and escalation. Confirmation belongs immediately before a consequential external action and must state the actual target and effect.

Bind confirmation to the exact action payload. Any change to a critical field such as recipient, destination, amount, currency, fee, date, scope, or funding source invalidates prior approval and requires a new explicit preview and confirmation. Confirmation must not be preselected, bundled into unrelated agreement, or replaced by notification after execution.

For high-impact actions, do not silently infer a missing critical field from defaults, history, or a “likely” match. Show the proposed value and provenance, ask for resolution when ambiguous, and verify it through the authoritative system where possible.

## Feedback

Let users identify what is wrong, correct the artifact or intent, and optionally explain the reason. State whether feedback changes the current result, future personal results, global model, or only creates a support report. Never promise learning that is not implemented.

## Failure recovery

For wrong, harmful, partial, slow, unavailable, stale, tool-failed, or interrupted output:

- preserve input and intermediate user edits;
- distinguish model failure from tool/system failure where useful;
- show completed versus uncompleted external actions;
- offer safe retry with idempotency and changed constraints;
- allow manual completion or human escalation;
- support rollback/compensation for actions already taken;
- record evidence for incident review.

Treat an unknown external outcome as distinct from failure. Reconcile with the authoritative service before enabling retry; otherwise a repeated payment, message, deletion, or submission can duplicate the action.

## Overreliance safeguards

Use meaningful review tasks, salient source/uncertainty cues, occasional independent checks, and outcome monitoring. Repeated generic warnings become wallpaper; design the workflow so verification is possible and consequential deviations are visible.
