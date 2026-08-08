# Error prevention and recovery

Use this reference to choose prevention and recovery according to the cause and consequence.

## Diagnose before choosing a pattern

- **Slip:** improve target separation, mode visibility, mapping, feedback, or undo.
- **Mistake:** improve the conceptual model, decision information, terminology, preview, or explanation.
- **Invalid input:** accept reasonable formats, constrain impossible values, and explain remaining requirements.
- **System failure:** preserve work, communicate scope, provide honest retry or fallback, and expose status.
- **Interruption:** autosave or checkpoint, retain context, and make resumption obvious.

Do not respond to every category with a generic modal.

## Prevention hierarchy

Prefer, in order when appropriate:

1. remove the hazard or unnecessary step;
2. make the correct action natural through mapping and defaults;
3. constrain impossible or unsafe actions;
4. separate easily confused actions;
5. preview consequences;
6. make the action reversible;
7. ask for confirmation only when it adds real decision value.

Constraints must not trap users who have a legitimate alternative path.

## Reversibility and escape

- Prefer undo after a reversible action over confirmation before every action.
- Make cancel available during long work only when the system can honor it.
- Clarify whether cancellation stops future work, rolls back completed work, or merely hides progress.
- Preserve a draft or checkpoint when losing work would be disproportionate.
- Provide a visible escape from modal, guided, or nested flows.
- Keep history or version recovery when errors may be discovered later.

## Retry

- Retry only when the operation is safe to repeat or protected by idempotency.
- State what will be retried: the whole operation, failed items, or the current step.
- Avoid automatic retries that create duplicate charges, posts, messages, or records.
- Use bounded backoff for background retries and expose unresolved status.
- Offer an alternative path when repeated retry cannot plausibly help.

## Error messages

An actionable error explains:

- what failed or remains incomplete;
- which object or field is affected;
- whether any work succeeded or was saved;
- what the user can do next;
- whether retry is safe;
- where to get help if self-recovery is impossible.

Avoid blame, humor in stressful moments, unexplained codes, false certainty, and instructions the user cannot perform.

## Recovery quality

Evaluate recovery by:

- data preserved;
- steps repeated;
- time lost;
- uncertainty remaining;
- access to alternatives;
- ability to verify final state.

The interface is not resilient merely because it displays an error screen.
