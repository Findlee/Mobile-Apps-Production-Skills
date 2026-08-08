# Pilot, components, tokens, and APIs

## Pilot selection

Choose current product work with committed partners, representative recurrence, visible customer/team value, achievable scope, and enough variation to test abstractions. Define baseline and success evidence before starting.

Work in a shared design–engineering rhythm: explore in product context, identify repetition, pair on implementation, test in the product, then generalize. Do not hand a finished library to teams and call it collaboration.

## Promotion ladder

1. Product-specific solution.
2. Candidate observed in multiple contexts.
3. Shared pattern with validated contract and owner.
4. Stable release with docs, tests, support, and migration.
5. Deprecated and removed through a versioned path.

## Component contract

Specify purpose, anatomy, semantic structure, tokens, content rules, variants, states, interaction, keyboard/focus, responsive behavior, platforms, localization/RTL, data constraints, loading/error/empty behavior, composition, API, events, defaults, escape hatches, anti-patterns, quality tests, owner, and status.

## API principles

- Model user/product intent, not raw styling knobs.
- Provide safe accessible defaults and composable structure.
- Prevent impossible or contradictory prop combinations where feasible.
- Keep controlled/uncontrolled and state ownership explicit.
- Make escape hatches visible, reviewable, and capable of informing future patterns.
- Version behavior and semantics, not only visual appearance.

Share semantic intent, tokens, state meaning, content, accessibility outcomes, and analytics where they are genuinely common. Do not require web and native implementations to share DOM/view structure, event mechanics, or identical visual behavior when platform conventions differ.

## Tokens

Use semantic tokens to express purpose and allow themes/platforms to map to implementation values. Define types, references, modes, fallbacks, naming, ownership, release, and contrast/state relationships. Prefer interoperable current token formats where they fit the stack.

## Validation

Test the same abstraction in several real contexts, all states, accessibility modes, long/RTL text, windows, themes, and platforms. Split a component when one API hides fundamentally different purposes.

## 30/60/90 pilot skeleton

- **Days 1–30:** charter, product inventory, trust/adoption baseline, partner team, pilot outcome, and candidate contract.
- **Days 31–60:** solve in the pilot product, pair across disciplines, extract candidates, test accessibility and platform variants, and validate in a second real context.
- **Days 61–90:** release the bounded shared assets with docs, support, governance, migration, telemetry, and a pilot outcome review.

At the 60- and 90-day gates, continue, narrow, revise, or stop based on product evidence and partner-team value—not the amount of library code produced.
