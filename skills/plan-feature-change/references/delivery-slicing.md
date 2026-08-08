# Delivery Slicing

## Build vertical slices

A useful slice crosses the necessary UI/API/domain/data boundaries and produces an observable outcome. A layer-complete slice such as "build all repositories" creates inventory without validating the flow.

Prefer slices based on:

- one actor and one goal;
- one happy-path scenario;
- one data source or integration;
- one platform or channel;
- one policy variant;
- one risk or learning question.

Then expand across errors, scale, variants, and polish.

## Distinguish three slices

### Learning slice

Use the cheapest artifact that can invalidate the riskiest assumption: interview, prototype, spike, fake door, data analysis, or technical experiment. Do not harden it by default.

### First useful release

Deliver the narrowest coherent outcome a real user can complete. Include the minimum reliability, security, support, and data integrity required for responsible use.

### Development slice

Create a thin walking skeleton through the real architecture, then layer behavior onto it. Do not release an unsafe skeleton merely because it compiles.

## Slicing questions

1. If this slice succeeds, what becomes true for the user?
2. Which assumption or risk does it retire?
3. Can it be demonstrated independently?
4. Does it postpone a hard decision, or accidentally make one?
5. What is the smallest next slice that changes what can be learned?

## Warning signs

- Slices are named after technical layers or team specialties.
- Every slice requires every planned component.
- "MVP" means low quality rather than narrow scope.
- Prioritization ranks isolated features instead of complete outcomes.
- Unknown work is hidden inside estimates instead of exposed as learning.

Conceptual lineage: story mapping, walking skeletons, outcome prioritization, and incremental architecture.
