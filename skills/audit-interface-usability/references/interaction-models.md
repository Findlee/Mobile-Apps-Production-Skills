# Interaction and cognition audit

Use this reference to diagnose whether the interface matches how people understand goals, actions, and results.

## Goal and activity

- Identify the user's real-world activity, not just the screen-level task.
- Check whether the interface exposes internal product structure instead of the user's language and goals.
- Trace the complete activity when success depends on discovery, setup, execution, confirmation, and later retrieval.
- Flag features that add steps or choices without advancing the user's outcome.

## Execution and evaluation

Audit both sides of every important action:

- **Execution:** Can the user discover possible actions, locate the control, understand its label, and predict its effect?
- **Evaluation:** Can the user perceive the result, interpret the new state, and tell whether the goal was achieved?

Use these diagnostic concepts:

- **Discoverability:** available actions and current state can be found.
- **Signifiers:** visible or audible cues communicate where and how to act.
- **Mapping:** controls, labels, placement, and results have an understandable relationship.
- **Constraints:** invalid actions are prevented or made clearly unavailable for a reason.
- **Feedback:** the system communicates the action's receipt, progress, result, and consequences.
- **Conceptual model:** the interface tells a coherent story about objects, rules, and state.

Do not use terminology as decoration. Name a concept only when it explains the observed failure.

## Familiarity and conventions

- Prefer established platform and product-category conventions for common actions.
- Treat divergence as a learning cost that needs compensating value.
- Check whether a custom control is immediately understandable, clearly signified, and worth replacing a familiar pattern.
- Preserve working conventions during redesigns; novelty is not automatically improvement.
- Let clarity override minor internal consistency when the two genuinely conflict.

## Attention, memory, and choice

- Reduce information the user must remember between screens; keep task-relevant knowledge visible.
- Group related items into meaningful chunks instead of enforcing arbitrary item counts.
- Reduce or structure choices when quick decisions matter.
- Break genuinely complex decisions into understandable steps without hiding essential context.
- Highlight a recommended path when it is honest and useful, while keeping alternatives available.
- Avoid multiple competing points of emphasis.
- Account for distraction, interruption, limited attention, and differences in experience.

## Interaction cost and target acquisition

- Count taps, clicks, typing, scrolling, precision, waiting, and context switches on the critical path.
- Make frequent and important actions easy to reach and operate.
- Give interactive targets sufficient size and separation for the actual platform and input method.
- Keep related actions near their objects while separating easily confused or dangerous actions.
- Do not minimize interaction cost when deliberate friction protects the user from serious harm.

## Experience over time

- Inspect the highest-stress moment and the end of the journey, not only the average screen.
- Check whether success, failure, cancellation, and return visits leave the user oriented.
- Treat trust as cumulative: hidden costs, repeated questions, lost work, and unexplained failures deplete it.
- Use delight to reinforce the product's purpose; do not let decoration obstruct the task.
