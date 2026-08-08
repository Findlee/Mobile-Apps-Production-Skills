# Accessibility Review Reference

Reviewed: 2026-08-08
Primary source: W3C WCAG 2.2 plus native-platform guidance

WCAG is written for web content. Use it as a broad accessibility model for digital products, while native mobile implementation must also follow Apple/Android accessibility guidance.

## WCAG principles

Review the product as:

- Perceivable
- Operable
- Understandable
- Robust

## High-value product-review checks

### Perceivable

- meaningful non-text content has an alternative;
- color is not the only way information is conveyed;
- text/content has sufficient contrast;
- content works with text scaling/zoom where relevant;
- captions/audio alternatives exist when media requires them.

### Operable

- keyboard/focus works on applicable interfaces;
- focus is visible;
- focused content is not obscured;
- touch/pointer targets are usable;
- dragging has an alternative where required;
- interactions do not rely on inaccessible gestures only;
- timing does not unnecessarily block users.

### Understandable

- labels and instructions are clear;
- navigation/controls behave predictably;
- errors are identified and recoverable;
- repeated information is not needlessly re-entered;
- authentication does not impose avoidable cognitive tests.

### Robust

- roles/names/states are available to assistive technologies;
- custom controls expose correct semantics;
- dynamic changes are communicated appropriately.

## WCAG 2.2 additions worth checking

The 2.2 recommendation added criteria including:

- Focus Not Obscured (Minimum);
- Dragging Movements;
- Target Size (Minimum);
- Consistent Help;
- Redundant Entry;
- Accessible Authentication (Minimum).

Use the current normative text for formal conformance decisions.

## Severity guidance

Prioritize by:

- task criticality;
- user exclusion;
- frequency;
- availability of alternative path;
- harm/consequence.

Accessibility is not just a visual-polish category.

## Official source

WCAG 2.2
https://www.w3.org/TR/WCAG22/
