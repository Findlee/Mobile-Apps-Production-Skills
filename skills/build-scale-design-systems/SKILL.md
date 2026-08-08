---
name: build-scale-design-systems
description: Build, evolve, and govern a scalable design system as connected product infrastructure and organizational practice. Use when asked to audit repeated interface patterns, define system principles and vocabulary, choose a pilot, extract components and tokens, design component APIs, plan documentation and contribution, manage versions, improve adoption, or measure system value. Do not use for a one-off style guide, isolated visual polish, or creating components without product evidence and ownership.
---

# Build Scale Design Systems

Create a shared system of interconnected patterns, implemented assets, and working practices that helps product teams ship coherent experiences. Treat the system as a product serving internal users, not as a static library.

## Core rules

- Anchor the system in product purpose, design principles, and real recurring needs.
- A component library, token file, or documentation site is one facet—not the whole system.
- Build buy-in through a useful pilot tied to product work; avoid a long isolated “system first” program.
- Extract and abstract from evidence across contexts rather than guessing a universal component.
- Name patterns by purpose and behavior, not by accidental appearance.
- Include code, design, content, accessibility, data, states, and usage guidance in the contract.
- Make ownership, contribution, release, deprecation, and support explicit.
- Measure value for adopters and customers, not component count as a vanity metric.

## Workflow

### 1. Frame the system and its users

Define product scope, teams and disciplines served, platforms and stacks, expected outcomes, constraints, ownership, and the problems a shared system should solve. Read [system-framing-inventory.md](references/system-framing-inventory.md).

### 2. Inventory the existing landscape

Collect representative production interfaces, code, design files, content patterns, tokens, accessibility behavior, and team practices. Group functional and perceptual patterns by purpose. Record duplicates, intentional variants, failures, dependencies, and adoption barriers.

### 3. Define principles, language, and system shape

Use [principles-language.md](references/principles-language.md) to create memorable decision principles, shared names, taxonomy, and an appropriate strict/loose and centralized/distributed model. Match the library architecture to the mental model of its users.

### 4. Choose a product-linked pilot

Select a bounded product initiative with visible value, representative patterns, committed partners, and measurable outcomes. Work collaboratively with the product team. Avoid promising universal coverage from the first pilot.

### 5. Extract, abstract, and specify contracts

Read [pilot-components-apis.md](references/pilot-components-apis.md). For each candidate, define purpose, anatomy, tokens, content, variants, states, responsive behavior, accessibility, interaction, data constraints, platform adaptations, composition, API, defaults, escape hatches, and anti-patterns. Test the abstraction in multiple real contexts before promotion.

### 6. Connect implementation and documentation

Version and distribute code, tokens, design assets, and documentation as connected releases. Show real product outcomes and usage before exhaustive property tables. Provide examples, non-examples, status, ownership, support, migration, and changelog.

### 7. Establish governance and contribution

Use [documentation-governance.md](references/documentation-governance.md). Define intake, triage, contribution levels, review disciplines, decision rights, quality gates, release cadence, deprecation, migration, and feedback. Prefer partnership and clear incentives over policing.

### 8. Drive adoption and measure value

Use [adoption-metrics.md](references/adoption-metrics.md). Start with useful incremental adoption. Measure reach and coverage alongside delivery efficiency, coherence, defect reduction, accessibility, team satisfaction, support burden, and product/customer outcomes. Revisit principles and patterns as products and organizations change.

## Boundaries with related skills

- Use `craft-visual-ui` to design a specific interface; use this skill when reusable infrastructure and operating practice are the goal.
- Use `select-interface-patterns` to choose a pattern for one context; use this skill to formalize and govern repeated patterns.
- Use `design-inclusive-accessible-experiences` to define accessibility contracts and validation for system assets.

## Default output

Provide the system charter, inventory and prioritization, principles and taxonomy, pilot plan, component/token/API contract, documentation and governance model, release path, adoption strategy, and outcome-oriented metrics.
