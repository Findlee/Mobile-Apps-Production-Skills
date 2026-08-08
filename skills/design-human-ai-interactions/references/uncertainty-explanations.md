# Uncertainty, explanation, and provenance

## Decision-relevant uncertainty

Show uncertainty when it changes what the user should do: verify, provide more information, choose among options, delay action, or escalate. Do not add a confidence badge merely to look transparent.

Possible forms:

- calibrated probability or range when validated and interpretable;
- ranked alternatives with reasons and tradeoffs;
- explicit missing or conflicting information;
- unsupported or out-of-distribution notice;
- source freshness and coverage;
- request for human confirmation at a consequential step.

## Explanation goal

Choose explanation by the user’s question:

- “What happened?” — summarize output and state.
- “Why?” — relevant evidence or factors, not a fabricated internal narrative.
- “What did you use?” — sources, inputs, transformations, and freshness.
- “What can I change?” — controllable inputs and constraints.
- “How do I challenge it?” — correction, appeal, override, or human review.

An explanation should support a decision or correction. Longer is not automatically better.

## Provenance

Distinguish user input, retrieved source, tool result, model inference, generated content, and independently verified information. Preserve citations through transformations where feasible. Expose when sources are missing, stale, contradictory, or low quality.

Never invent citations or imply that a generated explanation reveals the model’s true causal reasoning. A model’s self-description can itself be generated and unreliable.

## Presentation

Keep essential caveats near the output/action, use plain language, make details inspectable, and maintain accessibility. Avoid using color alone for confidence. Test whether people interpret uncertainty correctly and change behavior appropriately.
