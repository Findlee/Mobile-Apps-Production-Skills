# AI Skills

Reusable AI-agent skills for designing, building, reviewing, and validating digital product experiences.

The skills are organized around repeatable tasks rather than individual books. Their core instructions are tool- and framework-neutral, so the underlying workflows can be adapted for Codex, Claude Code, and other agents that support skill-style context packages.

## UI/UX skills

### Start with an end-to-end review

- [`review-product-experience`](skills/review-product-experience/SKILL.md) — inspect a whole application, route evidence through the relevant specialist skills, deduplicate findings, and return one prioritized remediation roadmap.

Use this orchestrator when the request concerns an entire product, repository, release candidate, or multiple journeys. Use one of the specialist skills below for a narrow question.

### Product and interaction foundations

- [`plan-interface-experience`](skills/plan-interface-experience/SKILL.md) — turn a product idea into user activities, flows, information architecture, screens, states, and validation questions.
- [`select-interface-patterns`](skills/select-interface-patterns/SKILL.md) — compare and select navigation, layout, form, collection, and data-display patterns.
- [`design-resilient-interactions`](skills/design-resilient-interactions/SKILL.md) — define complete states, errors, interruptions, critical actions, and recovery.

### Visual design and evaluation

- [`craft-visual-ui`](skills/craft-visual-ui/SKILL.md) — improve hierarchy, layout, typography, color, content, components, and adaptive behavior.
- [`audit-interface-usability`](skills/audit-interface-usability/SKILL.md) — produce an evidence-based, severity-ranked interface audit.
- [`run-lean-usability-tests`](skills/run-lean-usability-tests/SKILL.md) — plan and synthesize small qualitative usability studies without fabricating participant evidence.

### Inclusive, mobile, and international experiences

- [`design-inclusive-accessible-experiences`](skills/design-inclusive-accessible-experiences/SKILL.md) — inclusive discovery, accessibility requirements, implementation contracts, and layered validation.
- [`design-native-mobile-interactions`](skills/design-native-mobile-interactions/SKILL.md) — current iOS and Android behavior, adaptive layout, gestures, keyboard/focus, permissions, and lifecycle.
- [`internationalize-interface-experience`](skills/internationalize-interface-experience/SKILL.md) — localization architecture, locale-aware data, RTL/bidi behavior, and linguistic QA.

### Trust, measurement, systems, and AI

- [`design-trustworthy-consent-experiences`](skills/design-trustworthy-consent-experiences/SKILL.md) — privacy, consent, subscriptions, deletion, and deceptive-pattern prevention.
- [`define-product-metrics-experiments`](skills/define-product-metrics-experiments/SKILL.md) — decision metrics, trustworthy controlled experiments, guardrails, validity, and interpretation.
- [`build-scale-design-systems`](skills/build-scale-design-systems/SKILL.md) — system charter, inventory, pilots, tokens, component APIs, governance, adoption, and value measurement.
- [`design-human-ai-interactions`](skills/design-human-ai-interactions/SKILL.md) — capability framing, uncertainty, provenance, human control, recovery, risk, and AI launch gates.

## Structure

Each skill contains:

```text
skill-name/
├── SKILL.md
├── agents/
│   └── openai.yaml
└── references/
    └── focused guidance loaded when needed
```

`SKILL.md` defines when the skill should activate, its workflow, safety boundaries, and default output. Detailed knowledge is split into focused reference files to avoid loading an entire knowledge base for every request.

## Using a skill

Copy a skill directory into the location expected by your agent, or keep it inside a project for inspection and explicit invocation. For Codex-compatible invocation, use the skill name shown in its `agents/openai.yaml`, for example:

```text
Use $review-product-experience to review this application end to end
and produce a prioritized improvement plan.
```

Check current official standards and platform documentation whenever a skill marks guidance as version-sensitive. The skills do not replace legal review, accessibility certification, security review, qualified statistics, or research with real participants.

## Research basis

The full architecture, book analysis, source boundaries, and design rationale are documented in [`ui-books-skill-architecture.md`](ui-books-skill-architecture.md).
