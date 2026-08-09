---
name: product-review
description: Run an evidence-based end-to-end product and business audit of an existing product, feature, release, roadmap, product plan, product design, PRD, product spec, analytics setup, AI product, or product operating model. Use for "full product review", "product design review", "what should we improve", "why is this underperforming", portfolio or roadmap diagnosis, readiness assessment, and cross-domain reviews spanning strategy, customer evidence, opportunity quality, scope, experience, behavior, measurement, AI-system readiness, team operation, and learning. Orchestrate Product Management specialists and request bounded UX/UI, behavioral-design, mobile-engineering, AI-system, or product-team passes only when needed, then return one prioritized Product Improvement Backlog. For a narrow UX/UI audit use review-product-experience directly; for a narrow behavioral or mobile-engineering audit use the matching domain reviewer.
---

# Product Review

Act as the single diagnostic and synthesis layer for a product audit. Determine what materially limits the product or decision, what evidence supports that conclusion, and what the team should fix, validate, measure, simplify, remove, or defer.

Return one coherent prioritized plan, not a stack of framework reports.

## Ownership and safety

`product-review` owns audit diagnosis, causal synthesis, deduplication, global priority, and the final Product Improvement Backlog. If `product-manager` routed the request here, orchestration ownership transfers to this skill until the review is complete.

Follow the repository-level [orchestration contract](../../product-management/ORCHESTRATION.md), [boundary map](../../product-management/BOUNDARIES.md), and [evidence model](../../product-management/EVIDENCE-MODEL.md) when available.

Rules:

- never invoke `product-manager` from inside a review;
- never re-enter `product-review` recursively;
- ask specialists bounded questions and do not let them produce competing global backlogs;
- maintain one shared product model, evidence map, finding registry, and dependency order;
- load specialist skills and references lazily;
- keep review read-only unless the user separately authorizes implementation;
- do not trigger charges, messages, deletion, publication, external commitments, production mutations, or sensitive-data exposure while inspecting;
- do not authorize personnel, reporting-line, budget, contract, or organizational changes;
- ask a question only when the answer would materially change the audit and cannot be discovered safely.

## Evidence discipline

For every material finding, distinguish:

- `OBSERVED` - directly visible in an inspected artifact, build, code path, event schema, or supplied data;
- `EVIDENCE` - supplied research, analytics, experiment, support, review, or operational evidence;
- `INFERENCE` - a reasoned interpretation from observations or evidence;
- `ASSUMPTION` - currently treated as true without sufficient support;
- `UNKNOWN` - important information not available;
- `RECOMMENDATION` - an action proposed from current evidence and risk.

Never invent users, quotes, metrics, research, experiments, market facts, baselines, business goals, runtime behavior, or validation. Do not treat code as proof of customer value, screenshots as proof of interaction behavior, qualitative recurrence as population prevalence, or heuristic inspection as user research.

Keep severity separate from confidence. Missing evidence is an evidence gap, not automatically a product defect.

Treat every numeric threshold, sample size, duration, quota, capacity allocation, impact estimate, or target as one of:

- `SUPPLIED CONSTRAINT` - explicitly supplied by the user or authoritative artifact;
- `DERIVED VALUE` - calculated from traceable supplied data and method;
- `PROVISIONAL PROPOSAL` - a recommendation requiring a named calibration owner and evidence source.

Omit unsupported numbers when they do not improve the decision.

## Select the review mode

Choose the narrowest mode that supports the requested decision:

- `QUICK REVIEW` - fast health check and only the largest issues;
- `FULL REVIEW` - comprehensive product/business audit;
- `FOCUSED REVIEW` - one journey, feature, outcome, or problem area;
- `PRE-RELEASE REVIEW` - readiness, blockers, verification, rollout, and recovery;
- `POST-LAUNCH REVIEW` - intended behavior, outcomes, guardrails, and next decision;
- `ARTIFACT REVIEW` - PRD, spec, roadmap, research, experiment, metrics plan, or other product artifact.

Read [review-modes.md](references/review-modes.md) for mode-specific scope and outputs. Default to `FULL REVIEW` only when the user requests a comprehensive audit; do not expand a focused request into a checklist marathon.

## Load references progressively

Read only the references needed for the current review:

- [artifact-playbook.md](references/artifact-playbook.md) - inspect repositories, builds, screenshots, analytics, experiments, AI behavior, and other artifacts; establish authority and a shared case brief;
- [health-scan.md](references/health-scan.md) - scan relevant product dimensions and select deep dives;
- [specialist-routing.md](references/specialist-routing.md) - choose bounded Product Management and domain-suite passes;
- [severity-and-actions.md](references/severity-and-actions.md) - classify, prioritize, and sequence findings;
- [output-format.md](references/output-format.md) - produce the consolidated report and mode-specific verdict;
- [ux-heuristics.md](references/ux-heuristics.md), [accessibility.md](references/accessibility.md), [product-analytics.md](references/product-analytics.md), and [experimentation.md](references/experimentation.md) - load only when those areas are material;
- [mobile-app.md](lenses/mobile-app.md) and the current platform references - load only for mobile products;
- [ai-product.md](lenses/ai-product.md) - load only for AI-enabled products.

If a selected specialist or repository-level contract is unavailable in a portable installation, record it as `UNAVAILABLE`, use the local lightweight lens as a fallback, narrow confidence where specialist depth could change the decision, and never claim the missing module ran.

## Workflow

Use this loop:

`Audit contract -> Evidence coverage -> Current product model -> Health scan -> Bounded deep dives -> Causal findings -> Priority -> Improvement backlog -> Learning loop`

### 1. Define the audit contract

Determine:

- reviewed product, version, build, release, or artifact;
- decision the review must support;
- target user/customer and relevant context, if known;
- intended user, product, and business outcomes, if known;
- review mode and explicit exclusions;
- available evidence and important missing sources;
- authority: review only, safe testing, or implementation.

Proceed with explicit limitations when missing information does not block useful inspection.

### 2. Build the Evidence Coverage Map

Inventory each source, what it can support, and what it cannot establish by itself. Read [artifact-playbook.md](references/artifact-playbook.md) before inspecting a repository, live product, screenshots/video, analytics, experiments, or AI-system evidence.

Record:

```text
AVAILABLE
- source and supported claims

MISSING OR UNVERIFIABLE
- source and affected decisions

IMPLICATION
- where review confidence is strong or limited
```

### 3. Reconstruct the current product

Create one compact shared case brief:

- target actor, job/problem, context, and current alternative;
- value proposition and observable success state;
- business model and relevant strategic choices;
- primary outcome and guardrails;
- core journey from entry to value, repeat use, monetization, recovery, and exit where applicable;
- material states, rules, actors, dependencies, and constraints;
- supplied evidence, assumptions, unknowns, and review authority.

Mark absent facts as `UNKNOWN` or `INFERENCE`. Do not silently complete a missing product model.

### 4. Run the Product Health Scan

Use [health-scan.md](references/health-scan.md). Evaluate only relevant dimensions and classify each as:

- `HEALTHY` - no material issue found in inspected scope;
- `WATCH` - possible issue or moderate weakness;
- `WEAK` - material issue supported by evidence or strong inspection;
- `BLOCKER` - issue can prevent safe/viable release or invalidate the decision;
- `UNKNOWN` - evidence insufficient.

Add `HIGH`, `MEDIUM`, or `LOW` confidence. Do not calculate an overall numeric score or average statuses.

### 5. Select bounded deep dives

Use [specialist-routing.md](references/specialist-routing.md). Invoke a specialist only when its answer could materially change a finding, readiness decision, or backlog priority.

Pass:

- active orchestrator and bounded question;
- scope and explicit exclusions;
- shared case brief and relevant journey slice;
- evidence available and unavailable;
- decisions already made;
- constraints and authority;
- required return contract.

Require specialists to return candidate findings, supporting basis, confidence/limitations, recommended action, and handoff recommendations. Preserve epistemic status during handoff.

### 6. Build causal findings

Prefer root-cause chains over symptom lists:

`Observed condition -> Interpretation -> Consequence -> Decision/action -> Verification`

Merge candidates when one root cause creates several symptoms or one action resolves them. Split findings when they require different owners, permissions, fixes, or verification. Record material conflicts instead of averaging them.

Typical cross-domain contradictions include:

- engagement metric versus user agency;
- AI autonomy versus accountable human control;
- launch commitment versus missing evals or rollback;
- attractive happy path versus unrecoverable operational failure;
- stakeholder commitment versus outcome-led exploration;
- local metric improvement versus harm to a high-risk segment.

### 7. Classify and prioritize

Use [severity-and-actions.md](references/severity-and-actions.md). Give every material finding:

- finding type;
- `P0` to `P3` priority;
- evidence label and precise location;
- affected actor/scenario and consequence;
- confidence and limitations;
- one primary action type;
- owner or decision owner when known;
- dependency and verification.

Prioritize safety and broken core value first, then decision-blocking evidence/measurement, supported bottlenecks, cheap risk reduction, scope simplification, secondary quality, and polish.

### 8. Produce one Product Improvement Backlog

Use [output-format.md](references/output-format.md). Organize recommendations into:

- `DO NOW`;
- `VALIDATE BEFORE BUILDING`;
- `DO NEXT`;
- `REMOVE / SIMPLIFY`;
- `DEFER`.

Explicitly state what not to do yet. Do not convert research, policy, product-decision, or ownership gaps into coding tasks prematurely.

### 9. Verify the review

Before delivery:

- remove taste-only, generic, duplicate, and low-value findings;
- confirm every finding has basis, consequence, action, confidence, and location;
- check that severity follows consequence rather than topic labels;
- distinguish tested behavior from inspected artifacts and inferred behavior;
- list applied, skipped, and unavailable specialists;
- verify temporally unstable platform, policy, privacy, accessibility, AI, legal, or market claims from current primary sources when material;
- confirm all numbers are supplied, derived, provisional, or omitted;
- ensure the recommendations stay within the user's authority;
- write the report in the user's language and localize evidence/status labels consistently.

## Completion gate

Do not call the audit complete until:

- the core value path and relevant failure/recovery paths were inspected or marked unavailable;
- upstream direction/evidence and downstream behavior/operations were connected;
- every material dimension and specialist pass ran or has a stated reason for omission;
- product defects, evidence gaps, measurement gaps, UX issues, AI risks, and operating conditions are not conflated;
- causal findings are deduplicated and dependency-ordered;
- priority, confidence, coverage, and next actions are traceable;
- no fabricated evidence, metrics, thresholds, validation, or runtime behavior appears;
- the user receives one executable improvement plan rather than separate skill reports.
