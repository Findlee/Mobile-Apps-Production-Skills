# AI Skills

Reusable AI skills for Claude Code, Codex, and other agentic coding environments.

The skills are organized around repeatable tasks rather than individual books. Their core instructions are tool- and framework-neutral, so the underlying workflows can be adapted for Codex, Claude Code, and other agents that support skill-style context packages.

## Product Management skills

### Start with product work or a full product audit

- [`product-manager`](skills/product-manager/SKILL.md) — default Product Management entry point that identifies the highest-risk unknown and routes only to the workflow needed next.
- [`product-review`](skills/product-review/SKILL.md) — audits product and business performance across strategy, customer evidence, opportunity quality, scope, behavior, measurement, and learning, then returns one Product Improvement Backlog.

Use `product-manager` for ordinary product decisions, planning, ambiguous feature requests, and post-launch learning. Use `product-review` for a full product/business audit. Product review may request bounded UX/UI, behavioral-design, or mobile-engineering suite passes, but remains the sole active orchestrator and owns final priority.

### Strategy and discovery

- [`product-strategy`](skills/product-strategy/SKILL.md) — defines target customers, value proposition, outcomes, strategic trade-offs, principles, and non-goals.
- [`product-discovery`](skills/product-discovery/SKILL.md) — decides which opportunity and solution direction deserves greater commitment.
- [`customer-research`](skills/customer-research/SKILL.md) — plans and synthesizes decision-oriented qualitative customer evidence without fabricating participants or findings.

### Validation and delivery definition

- [`product-experiment`](skills/product-experiment/SKILL.md) — exposes risky assumptions and selects the smallest credible learning method before unnecessary investment.
- [`mvp-scope`](skills/mvp-scope/SKILL.md) — owns the smallest coherent release boundary, quality floor, non-goals, and change-control rules.
- [`product-spec`](skills/product-spec/SKILL.md) — converts approved scope into an implementation-ready behavioral contract without inventing product decisions.

### Measurement

- [`product-metrics`](skills/product-metrics/SKILL.md) — connects customer value, outcomes, activation, retention, instrumentation, experiments, and post-launch decisions into one measurement system.

### AI products and product teams

- [`design-ai-product-system`](skills/design-ai-product-system/SKILL.md) — designs an AI product as one capability, human-control, architecture, evaluation, data, feedback, guardrail, observability, and staged-release system.
- [`operate-product-team`](skills/operate-product-team/SKILL.md) — assesses or establishes team charters, decision rights, outcome-led discovery/delivery, stakeholder collaboration, commitments, cadence, and bounded operating-model pilots.

These are specialist workflows. `product-manager` may call them for a bounded decision, while `product-review` retains ownership of final audit synthesis and priority.

The suite-wide orchestration contract, ownership boundaries, Evidence Model, and system evals live in [`product-management/`](product-management/ORCHESTRATION.md).

## Choosing a review entry point

| Primary question | Entry point |
|---|---|
| What is limiting the product or business overall, and what should happen next? | [`product-review`](skills/product-review/SKILL.md) |
| What is wrong with the UX/UI experience and critical journeys? | [`review-product-experience`](skills/review-product-experience/SKILL.md) |
| Why is behavior occurring, and is the intervention effective and ethical? | [`review-behavioral-design`](skills/review-behavioral-design/SKILL.md) |
| What is wrong with Flutter/React Native engineering health or release readiness? | [`review-mobile-application`](skills/review-mobile-application/SKILL.md) |
| Where is QA evidence weak across requirements, risks, tests, automation, defects, and production readiness? | [`qa-review-project`](skills/qa-review-project/SKILL.md) |

Only one reviewer owns orchestration, final synthesis, and priority at a time. A parent may request a bounded pass from another review suite; that child returns scoped findings and does not produce a competing final backlog.

## UI/UX skills

### Start with an experience review

- [`review-product-experience`](skills/review-product-experience/SKILL.md) — inspect a whole application, route evidence through the relevant specialist skills, deduplicate findings, and return one prioritized remediation roadmap.

Use this orchestrator when the primary request concerns UX/UI quality across an application, release candidate, or multiple journeys. Use `product-review` when the question also spans product strategy, customer evidence, business viability, scope, and product-level measurement. Use one of the specialist skills below for a narrow experience question.

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
- [`define-product-metrics-experiments`](skills/define-product-metrics-experiments/SKILL.md) — narrow controlled-experiment scorecards, readiness, trust checks, validity, and interpretation.
- [`build-scale-design-systems`](skills/build-scale-design-systems/SKILL.md) — system charter, inventory, pilots, tokens, component APIs, governance, adoption, and value measurement.
- [`design-human-ai-interactions`](skills/design-human-ai-interactions/SKILL.md) — capability framing, uncertainty, provenance, human control, recovery, risk, and AI launch gates.

## Behavioral design skills

### Start with a behavioral review

- [`review-behavioral-design`](skills/review-behavioral-design/SKILL.md) — audit how a product shapes behavior, route evidence through the relevant behavioral specialists, and return one prioritized improvement backlog.

Use this orchestrator when the request concerns activation, follow-through, retention, repeated behavior, consequential choices, incentives, behavioral ethics, or whether an intervention will work beyond a pilot. It complements `review-product-experience`: the experience orchestrator covers the UX/UI system, while the behavioral orchestrator goes deeper on why behavior occurs and how an intervention should be validated.

### Diagnose and design behavior

- [`design-behavior-change`](skills/design-behavior-change/SKILL.md) — run an ethical behavior-change project from outcome and COM-B diagnosis through intervention, implementation, and measurement.
- [`diagnose-behavior-barriers`](skills/diagnose-behavior-barriers/SKILL.md) — find the earliest consequential barrier using behavioral maps, COM-B, CREATE, B=MAP, and falsifiable evidence.
- [`design-choice-architecture`](skills/design-choice-architecture/SKILL.md) — structure option sets, defaults, order, descriptions, friction, feedback, and choice engines for fluency, accuracy, and agency.
- [`design-healthy-habit-loop`](skills/design-healthy-habit-loop/SKILL.md) — design beneficial repetition through context, low friction, reward, and recovery without compulsive engagement.
- [`design-behavioral-incentives`](skills/design-behavioral-incentives/SKILL.md) — align rewards, penalties, pricing, quotas, and performance metrics with the outcome the system claims to value.

### Audit decisions, ethics, evidence, and scale

- [`audit-decision-quality`](skills/audit-decision-quality/SKILL.md) — detect and reduce unwanted noise and bias in repeated human or AI-assisted judgments.
- [`audit-behavioral-ethics`](skills/audit-behavioral-ethics/SKILL.md) — identify manipulation, sludge, compulsion, incentive conflicts, autonomy loss, and harm.
- [`design-behavior-experiments`](skills/design-behavior-experiments/SKILL.md) — test behavioral causal chains with user outcomes, mechanism metrics, guardrails, and trustworthy experiment checks.
- [`assess-intervention-scale`](skills/assess-intervention-scale/SKILL.md) — assess transfer, voltage drops, last-yard delivery, spillovers, cost, and safe rollout.

## Software and mobile development skills

### Start with an engineering review

- [`review-mobile-application`](skills/review-mobile-application/SKILL.md) — audit an existing Flutter or React Native application, route repository evidence through the relevant engineering specialists, and return one prioritized remediation roadmap.

Use this orchestrator for application health, technical debt, modernization, or release-readiness reviews. It is read-only by default and complements `review-product-experience`: the experience orchestrator evaluates UX/UI quality, while the mobile orchestrator evaluates implementation, architecture, data, testing, performance evidence, native boundaries, and delivery controls.

### Plan and shape software changes

- [`plan-feature-change`](skills/plan-feature-change/SKILL.md) — turn a feature or behavior change into safe vertical increments, tests, rollout, and completion criteria.
- [`map-product-scope`](skills/map-product-scope/SKILL.md) — organize ideas and flat backlogs around users, journeys, learning slices, and coherent releases.
- [`analyze-architecture-tradeoffs`](skills/analyze-architecture-tradeoffs/SKILL.md) — compare system architectures through quality scenarios, constraints, operating cost, and explicit trade-offs.
- [`design-module-boundaries`](skills/design-module-boundaries/SKILL.md) — define enforceable source-code boundaries, public surfaces, and dependency direction.
- [`design-valuable-tests`](skills/design-valuable-tests/SKILL.md) — build a risk-based test portfolio with appropriate test levels and doubles.
- [`refactor-safely`](skills/refactor-safely/SKILL.md) — improve code structure through behavior-preserving, verified increments and clear stop criteria.

### Build and operate mobile applications

- [`implement-flutter-feature`](skills/implement-flutter-feature/SKILL.md) — deliver Flutter features across widgets, state, navigation, data, async behavior, and tests without imposing a new state library.
- [`implement-react-native-feature`](skills/implement-react-native-feature/SKILL.md) — deliver typed React Native features across React state, effects, navigation, lists, native lifecycle, and tests.
- [`design-mobile-sync`](skills/design-mobile-sync/SKILL.md) — design explicit offline behavior, durable operations, idempotency, conflict handling, and recovery.
- [`diagnose-mobile-performance`](skills/diagnose-mobile-performance/SKILL.md) — investigate jank, startup, input, memory, CPU, or battery symptoms through measurements and controlled experiments.
- [`integrate-native-capability`](skills/integrate-native-capability/SKILL.md) — integrate permissions, device capabilities, plugins, and custom native APIs through typed, lifecycle-safe boundaries.
- [`prepare-mobile-release`](skills/prepare-mobile-release/SKILL.md) — prepare signed Android and iOS candidates, migrations, staged rollout, monitoring, and recovery.

## QA and software testing skills

### Start with a full QA audit

- [`qa-review-project`](skills/qa-review-project/SKILL.md) — inspect a whole application, repository, or service across all relevant QA lenses and return one evidence-based prioritized improvement plan.

Use this orchestrator when the primary question is whether the project has enough trustworthy quality evidence and what should be improved across requirements, risk, test design, platform coverage, testability, automation, defects, and production operation. It reviews all eleven specialist lenses for applicability, deepens only the relevant ones, and remains read-only unless implementation is requested separately.

Use `review-mobile-application` when the primary question is Flutter or React Native engineering health. Use `review-product-experience` for UX/UI quality and `product-review` for product and business performance. Only one reviewer should own final synthesis and priority; another review suite may return a bounded pass.

### Requirements, risk, and test design

- [`qa-clarify-requirements`](skills/qa-clarify-requirements/SKILL.md) — turn ambiguous requirements into behavioral models, concrete examples, decisions, and testable acceptance criteria.
- [`qa-plan-risk-based-testing`](skills/qa-plan-risk-based-testing/SKILL.md) — map product and project risks to proportionate evidence, feedback timing, omissions, and residual-risk reporting.
- [`qa-design-tests`](skills/qa-design-tests/SKILL.md) — derive focused tests using boundaries, partitions, decisions, states, sequences, properties, structural gaps, and explicit oracles.
- [`qa-run-exploratory-testing`](skills/qa-run-exploratory-testing/SKILL.md) — plan, execute when a target is available, and report focused exploratory sessions without treating a checklist as exploration.

### Mobile and API testing

- [`qa-test-mobile-app`](skills/qa-test-mobile-app/SKILL.md) — design mobile QA coverage across devices, lifecycle, interruptions, networks, permissions, accessibility, security, performance, and release evidence.
- [`qa-test-web-api`](skills/qa-test-web-api/SKILL.md) — review and test HTTP APIs across contracts, workflows, authorization, resilience, performance, security, and operations.

### Testability, automation, and test code

- [`qa-improve-testability`](skills/qa-improve-testability/SKILL.md) — improve controllability, observability, isolation, deterministic execution, and diagnostic power without insecure test backdoors.
- [`qa-build-test-automation`](skills/qa-build-test-automation/SKILL.md) — decide what to automate and design suite scopes, data, dependencies, CI feedback, failure evidence, ownership, and maintenance policy.
- [`qa-write-maintainable-tests`](skills/qa-write-maintainable-tests/SKILL.md) — write, review, repair, and refactor trustworthy test code, fixtures, assertions, doubles, isolation, and diagnostics.

`design-valuable-tests` remains the compact software-engineering entry point for choosing a valuable automated-test portfolio. Use `qa-design-tests` when systematic test-case derivation is the main task, and `qa-build-test-automation` when suite architecture and delivery feedback are the main task.

### Defects and production operation

- [`qa-investigate-defect`](skills/qa-investigate-defect/SKILL.md) — preserve failure evidence, minimize reproduction, test competing hypotheses, and produce a defensible defect report.
- [`qa-assess-production-readiness`](skills/qa-assess-production-readiness/SKILL.md) — assess failure chains, bounded work, capacity, recovery, observability, rollout safeguards, and residual operational risk.

## Structure

Every skill contains `SKILL.md` and Codex-facing metadata. Skills add references, assets, sources, or evals only when needed:

```text
skill-name/
├── SKILL.md
├── agents/
│   └── openai.yaml
├── references/             # optional focused guidance
├── assets/                 # optional reusable templates
├── SOURCES.md              # optional source map
└── EVALS.md                # optional evaluation scenarios
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

The architecture, book analysis, source boundaries, and design rationale are documented in:

- [`ui-books-skill-architecture.md`](ui-books-skill-architecture.md) for the UI/UX suite;
- [`behavioral-design-skill-architecture.md`](behavioral-design-skill-architecture.md) for the behavioral-design suite;
- [`mobile-development-skill-architecture.md`](mobile-development-skill-architecture.md) for the software and mobile-development suite;
- [`product-management-skill-architecture.md`](product-management-skill-architecture.md) for the Product Management suite, with runtime behavior in [`ORCHESTRATION.md`](product-management/ORCHESTRATION.md), ownership in [`BOUNDARIES.md`](product-management/BOUNDARIES.md), and epistemic rules in [`EVIDENCE-MODEL.md`](product-management/EVIDENCE-MODEL.md).
