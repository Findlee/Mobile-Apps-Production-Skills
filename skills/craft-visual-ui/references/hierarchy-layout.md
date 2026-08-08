# Hierarchy and layout

Use this reference to organize content before styling details.

## Define visual priority

- Identify the screen's primary content, primary action, supporting content, and utilities.
- Use strong emphasis sparingly; multiple dominant elements cancel one another.
- Build hierarchy with size, weight, contrast, position, whitespace, depth, and motion in that approximate order.
- Use motion only when it explains change, preserves context, or acknowledges interaction.
- Apply a squint or blur check: the intended focal point and content groups should remain apparent.

## Group by relationship

- Place related elements close together and unrelated groups farther apart.
- Make inner spacing smaller than outer spacing.
- Use alignment and whitespace before adding borders, cards, backgrounds, or shadows.
- Do not wrap every group in a container; containment is useful when it clarifies boundaries, interaction, or independent movement.
- Keep labels, values, controls, help, and errors visually attached to the object they describe.

## Use a spacing system

- Choose a small base scale appropriate to the platform and existing codebase.
- Map tokens to relationships such as inline gap, control gap, group gap, section gap, and page margin.
- Avoid values that differ by only a negligible amount without a semantic reason.
- Increase whitespace around important or conceptually separate regions; do not use empty space to hide weak hierarchy.
- Preserve comfortable target separation for touch and motor accessibility.

## Align intentionally

- Use as few alignment axes as the content permits.
- Align repeated content and controls so users can scan by position.
- Prefer start alignment for multi-line text in the reading direction.
- Align numbers and comparable values for comparison, not merely aesthetics.
- Treat a grid as a coordination tool. Do not force every interface into a fixed column count.

## Control width and density

- Set readable text measures instead of letting paragraphs span the viewport.
- Match density to task frequency and expertise; operational tools may justify more density than occasional consumer flows.
- Keep frequent tools available without crowding the primary task.
- Use progressive disclosure for secondary complexity, while keeping current state and escape routes visible.
- Avoid both extremes: cluttered comprehensiveness and minimalism that removes meaning.

## Design for real content

- Test long names, large values, missing images, variable list lengths, and mixed content types.
- Avoid fixed heights where text or localization can grow.
- Define wrapping, truncation, expansion, and overflow behavior deliberately.
- Keep critical content and actions visible or provide strong cues that more content exists.
- Preserve spatial context when content expands, collapses, filters, or reorders.

## Adapt rather than shrink

- Reflow, reveal, or change presentation when space changes; do not merely scale a desktop canvas down.
- Prioritize the mobile user's most important activity, but do not remove essential capability solely to achieve minimalism.
- Use larger screens to improve comparison, context, and parallel work instead of stretching content.
- Account for system bars, cutouts, virtual keyboards, pointer versus touch, and orientation.
