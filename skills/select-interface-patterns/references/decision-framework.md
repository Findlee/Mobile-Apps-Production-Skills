# Pattern decision framework

Use this reference to compare patterns without turning heuristics into dogma.

## Hard constraints

Reject a candidate early when it cannot support a required condition such as:

- content scale or hierarchy;
- deep linking and direct entry;
- offline or interrupted use;
- keyboard, touch, pointer, or assistive-technology operation;
- compact and expanded layouts;
- required comparison or multi-selection;
- safety, privacy, or reversibility;
- platform restrictions.

Do not call implementation convenience a hard constraint unless the user has established it as one.

## Comparison criteria

Score qualitatively and explain the reason:

1. **Task fit:** supports the real activity rather than a generic screen type.
2. **Information fit:** reflects object relationships, hierarchy, order, and volume.
3. **Discoverability:** important actions and destinations can be found.
4. **Familiarity:** builds on conventions the target audience is likely to know.
5. **Efficiency:** keeps frequent actions close and avoids unnecessary input or navigation.
6. **Cognitive load:** keeps needed knowledge visible and structures choices meaningfully.
7. **Scalability:** remains coherent as data, destinations, features, and viewports grow.
8. **Context preservation:** supports back, return, deep links, interruption, and multi-window use.
9. **Accessibility:** works across relevant inputs, perception, text sizes, and assistive technologies.
10. **Resilience:** exposes state, prevents predictable mistakes, and offers escape or recovery.
11. **Implementation fit:** can be built and maintained without compromising the required experience.

Use explicit reasoning rather than a numeric total when criteria have different importance.

## Common tensions

- Familiarity versus innovation: require compensating value for learning cost.
- Simplicity versus hidden complexity: remove the unnecessary, expose what decisions require.
- Consistency versus clarity: preserve consistency unless a small exception materially improves understanding.
- Efficiency versus safety: add friction only where consequence justifies it.
- Density versus scanability: match density to task frequency, expertise, and comparison needs.
- Guided sequence versus freedom: use guidance for dependency and risk; preserve escape and resumption.
- Infinite access versus bounded control: continuous feeds reduce interruption but weaken position, completion, and footer access.

## Pattern decision record

```text
Decision: [Specific pattern and scope]
User task: [Goal and frequency]
Context: [Platform, content, scale, input, constraints]
Candidates: [Two or three structurally different options]
Recommendation: [Selected option]
Why: [Causal explanation against the important criteria]
Tradeoffs accepted: [What becomes weaker or more complex]
Required behavior: [States, navigation, adaptation, accessibility]
Reconsider when: [Content or product thresholds that invalidate the choice]
Validate by: [Prototype, implementation check, or user observation]
```

## Evidence discipline

- Label assumptions about user behavior or content volume.
- Treat heuristics as risk indicators, not observed proof.
- Do not invent user research.
- When current platform details matter, cite or link the official guidance used.
- If two candidates remain equally plausible, recommend a low-cost prototype comparison instead of false certainty.
