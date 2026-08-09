# Product Review Artifact Playbook

## Contents

1. Authority and safe inspection
2. Evidence coverage
3. Shared case brief
4. Concept, PRD, and roadmap
5. Journey, flow, and prototype
6. Screenshots and video
7. Live product
8. Repository and implementation
9. Analytics and research
10. Experiments
11. AI-system evidence
12. Dynamic sources

## 1. Authority and safe inspection

Establish whether the user authorized:

- `REVIEW ONLY` - inspect without mutation;
- `SAFE TESTING` - exercise reversible behavior in an appropriate environment;
- `IMPLEMENTATION` - change only separately authorized items after the audit.

Default to `REVIEW ONLY`.

Do not trigger payments, messages, deletion, publication, external commitments, account changes, production writes, or sensitive-data exposure without explicit authority. Do not infer authority to change a product from a request to review it.

## 2. Evidence coverage

Inventory each source before strong conclusions.

| Source | Can support | Cannot establish by itself |
| --- | --- | --- |
| Repository/code | implemented routes, states, flags, events, rules | customer value or comprehension |
| Running build | observed interactions, transitions, failures | population impact or motivation |
| Screenshots/video | visible hierarchy, copy, affordances | unshown behavior, recovery, actual performance |
| PRD/spec | intended behavior, scope, assumptions | actual runtime behavior or customer value |
| Analytics | behavior under defined events | motivation or causality without design |
| Experiment | causal effect if design/execution are trustworthy | transfer beyond tested context without evidence |
| Interviews | stories, context, needs, workarounds | prevalence |
| Usability tests | task problems in tested conditions | market demand or broad prevalence |
| Reviews/support | complaints, language, failure cases | representative frequency without denominator |
| Revenue/cohorts | monetization and retention patterns | user motivation by itself |
| Competitor analysis | alternatives and conventions | value of copying them |
| AI evals | evaluated system behavior | product value unless linked to user outcomes |

For every absent source, state only the decisions it limits. Missing team/process evidence is `UNKNOWN`, not an app defect.

## 3. Shared case brief

Build once and pass unchanged to every bounded specialist:

```markdown
## Shared Case Brief

- Requested decision:
- Review mode and authority:
- Product, version, build, or artifact:
- Target actor, context, job, and current alternative:
- Observable user-success state:
- Product and business outcomes:
- Core journey and downstream actors:
- Material states, rules, and dependencies:
- Evidence supplied:
- Constraints, commitments, and non-goals:
- Platform, architecture, and environment:
- AI or consequential actions:
- Known operating-model context:
- Unknown, unavailable, or unsafe to test:
```

Do not fill gaps with imagined users, metrics, research, architecture, or behavior. If evidence conflicts, preserve the conflict in the brief.

## 4. Concept, PRD, and roadmap

Read the complete artifact, including appendices, notes, non-goals, metrics, and rollout assumptions.

Extract:

- target user, context, problem/opportunity, outcome, and success;
- requirements versus supporting evidence;
- strategic choices and alternatives;
- solution assumptions and confidence;
- actors, dependencies, constraints, and operational work;
- scope and change-control decisions;
- validation, measurement, rollout, and rollback plans.

Report gaps as missing specification or evidence, not observed runtime defects. Respect linked sources of truth.

For a roadmap, distinguish outcomes, problems/opportunities, bets, releases, and fixed commitments. Do not treat a feature sequence as strategy merely because it has dates.

## 5. Journey, flow, and prototype

Trace the end-to-end path:

`Entry -> Setup -> First meaningful action -> Value -> Result -> Return/repeat -> Monetization -> Recovery/exit`

Include material secondary actors, approvals, moderation, notifications, payments, support, and external services.

For each consequential control ask:

- what state precedes it;
- what the user understands will happen;
- what system or person acts next;
- how progress, success, failure, and partial completion appear;
- how the user corrects, cancels, retries, reverses, or exits;
- what happens after interruption or return.

Judge prototype fidelity by the decision it must support. A convincing facade is not operational evidence.

## 6. Screenshots and video

Inspect only visible evidence:

- hierarchy, grouping, density, copy, affordances, state visibility, and consistency;
- apparent task sequence where frames make it observable;
- visible accessibility concerns;
- contradictions between displayed states.

Use `OBSERVED` for visible conditions and `INFERENCE` for likely interaction consequences. Say `not shown` or `not verifiable` for loading, error, recovery, accessibility semantics, persistence, performance, and other unobserved behavior.

Do not infer churn cause, comprehension, implementation behavior, or customer value from screenshots alone.

## 7. Live product

Use safe, representative tasks and record:

- environment, account state, build/version, device/platform, and test data;
- exact path exercised;
- expected versus observed state;
- recoverability and any side effects;
- areas not tested.

Test the core value path and relevant failure/recovery paths when authority and environment permit. Stop before irreversible or external actions unless explicitly authorized.

Do not present one successful session as broad reliability or customer-value evidence.

## 8. Repository and implementation

Read local instructions and establish the actual repository root before inspection. Inventory product surfaces rather than reading files randomly.

Inspect, as relevant:

- application entry points, routes, screens, and feature flags;
- state transitions, persistence, data ownership, permissions, and entitlements;
- APIs, external actions, retries, idempotency, rollback, and recovery;
- loading, empty, partial, error, offline, interrupted, and degraded states;
- analytics events, properties, identity, exposure, and guardrails;
- tests tied to product behavior and risk;
- rollout, observability, support, and incident paths;
- AI prompts, context, tools, model/provider configuration, evals, and safeguards.

Trace important findings across layers. Cite file and line when possible.

Repository structure can prove implementation facts, not that users understand, value, or successfully use the feature. Static code may not prove runtime reachability; label uncertainty honestly.

## 9. Analytics and research

For analytics, establish:

- event and metric semantics;
- population, denominator, segment, and time window;
- identity and attribution behavior;
- attempted/succeeded/failed distinctions;
- collection gaps, late events, duplicates, and exclusions;
- whether the data supports description, prediction, or causality.

For qualitative research, preserve:

- participant/source context;
- observed behavior versus reported preference;
- recurring patterns in the sample;
- contradictions and outliers;
- method and limitations.

Do not translate a small-sample proportion into population prevalence. Do not turn correlation into motivation or causality.

Load [product-analytics.md](product-analytics.md) when activation, retention, lifecycle, or instrumentation interpretation is material.

## 10. Experiments

Before interpreting a result, verify:

- hypothesis and decision defined before the result;
- assignment and analysis unit;
- exposure logging and instrumentation;
- primary metric and guardrails;
- sample-ratio or equivalent trust checks;
- power/MDE assumptions where relevant;
- stopping and multiple-comparison behavior;
- effect size and uncertainty;
- practical and product significance;
- transfer limits across segments and contexts.

Do not call an experiment trustworthy from a dashboard screenshot alone. Do not treat significance as product value or non-significance as proof of no effect.

Load [experimentation.md](experimentation.md) and request a bounded `product-metrics` pass when causal trust could change the decision.

## 11. AI-system evidence

Separate:

- model/component behavior;
- full system behavior;
- user-task success;
- product outcome;
- business outcome.

Inspect available:

- capability and human-control contract;
- prompts, context, retrieval, tools, routing, memory, and providers;
- representative eval datasets, graders, human calibration, and regressions;
- typical, edge, adversarial, subgroup, and language cases;
- tool outcomes and environment state, not only transcripts;
- production feedback, incidents, latency, cost, and availability;
- guardrails, approvals, fallback, escalation, versioning, rollout, and rollback.

A model benchmark does not prove task success or product value. A transcript saying an action completed does not prove the environment changed correctly.

Load [ai-product.md](../lenses/ai-product.md) and request a bounded `design-ai-product-system` pass when system-level readiness is material.

## 12. Dynamic sources

Verify current claims from primary sources when they could have changed or affect release, safety, or compliance. This includes platform/store rules, accessibility requirements, AI/provider behavior, laws, prices, market facts, and technical standards.

Record source date and applicability. Do not let a current external checklist replace inspection of the actual product and decision.
