---
name: map-product-scope
description: Turn product ideas, requirements, feature lists, or flat backlogs into shared understanding through outcome framing, user story mapping, scenario flows, discovery questions, MVP and experiment slicing, release planning, and acceptance conversations. Use when clarifying what to build, mapping a user journey, finding missing scenarios, defining an MVP, reducing scope, or turning a backlog into coherent product increments.
---

# Map Product Scope

Treat stories and maps as tools for conversation and shared understanding, not as substitutes for it. Separate observed evidence from assumptions.

## Frame the opportunity

Capture:

- who experiences the problem;
- what they do today;
- what outcome should improve;
- why the opportunity matters now;
- which user and business signals would indicate progress.

If the request starts with a proposed solution, restate the underlying problem before mapping it.

Read [discovery-conversations.md](references/discovery-conversations.md) when users, needs, or evidence are uncertain.

## Build the map

1. Tell the main usage story from left to right in the user's language.
2. Distill the top row into major activities: the backbone.
3. Place tasks and steps below the relevant activities.
4. Add variations for different users, contexts, errors, recovery, and continuation.
5. Mark assumptions, unknowns, constraints, and risks visibly.
6. Prefer breadth before depth so the whole journey remains visible.

Use [story-map-model.md](references/story-map-model.md) for structure and [story-map-template.md](assets/story-map-template.md) for a reusable output.

## Find gaps

Walk the map through:

- first use and returning use;
- happy path, cancellation, failure, retry, and recovery;
- permissions, empty states, interrupted work, and handoffs;
- accessibility and differing user capabilities;
- alternate channels, devices, or roles when relevant;
- post-action confirmation, support, and correction.

Do not add every edge case to the first release. Make it visible, then decide.

## Slice by outcomes

1. Prioritize a target outcome, not isolated features.
2. Create the cheapest learning slice for the riskiest assumption.
3. Cut the first useful release horizontally across the map.
4. Ensure the release supports a coherent end-to-end journey.
5. Place later capability, variants, and polish in subsequent slices.

Read [slicing-heuristics.md](references/slicing-heuristics.md) when defining an experiment, MVP, release roadmap, or development sequence. Use [experiment-slice-template.md](assets/experiment-slice-template.md) when the goal is learning rather than delivery.

## Prepare the next conversation

For near-term stories, capture examples of success, boundaries, and failure. Do not attempt to perfect every card. List the people who must discuss product value, usability, feasibility, and verification.

## Produce the result

Include:

- opportunity, users, current behavior, and evidence status;
- target outcomes and signals;
- story map with backbone, tasks, variations, and unknowns;
- missing scenarios and decisions;
- learning slice, first useful release, and later slices;
- non-goals;
- questions for discovery and acceptance conversations.

Read [common-failure-modes.md](references/common-failure-modes.md) before finalizing a large map or transforming an existing backlog.
