# Consolidated Product Review Output

## Contents

1. Language and adaptation
2. Executive assessment
3. Evidence coverage
4. Product health map
5. Finding format
6. Cross-domain synthesis
7. Product Improvement Backlog
8. What not to do yet
9. Missing evidence and next review trigger
10. Pre-release output
11. Quick review output
12. No-findings case

## 1. Language and adaptation

Write in the user's language. Localize evidence, status, and action labels consistently; do not mix languages inside one label.

Adapt detail to review mode and risk. Omit empty sections in a focused or quick review, but preserve evidence limitations, priority, and next action.

Return one report. Do not expose raw specialist reports.

## 2. Executive assessment

Lead with:

- reviewed product, version, area, and decision;
- readiness or health verdict appropriate to the mode;
- strongest material capability worth preserving;
- biggest current risk;
- biggest evidence limitation;
- highest-leverage next move;
- overall review confidence.

Keep this compact. Do not use an unexplained numeric score.

For a general readiness decision, use one:

- `READY FOR THE STATED NEXT STEP`;
- `CONDITIONALLY READY`;
- `NOT READY FOR THE STATED NEXT STEP`;
- `INSUFFICIENT EVIDENCE TO JUDGE`.

## 3. Evidence coverage

Show:

```markdown
## Evidence coverage

### Available and inspected
- <source, scope, what it supports>

### Tested
- <runtime task and environment actually exercised>

### Missing or unverifiable
- <source/behavior and affected decision>

### Review implication
- <where confidence is strong or limited>
```

Include specialist coverage for a broad review:

| Specialist or suite | Status | Bounded question or reason |
| --- | --- | --- |
| `product-strategy` | Applied / Skipped / Unavailable | |
| `customer-research` | | |
| `product-discovery` | | |
| `product-experiment` | | |
| `mvp-scope` | | |
| `product-spec` | | |
| `product-metrics` | | |
| `design-ai-product-system` | | |
| `operate-product-team` | | |
| `review-product-experience` | | |
| `review-behavioral-design` | | |
| `review-mobile-application` | | |

Remove irrelevant rows in focused reviews. `Applied` means the specialist workflow actually ran; a local fallback is not `Applied`.

## 4. Product health map

Use only relevant dimensions:

| Area | Status | Confidence | Main issue or strength | Required next evidence/action |
| --- | --- | --- | --- | --- |
| Strategy | HEALTHY / WATCH / WEAK / BLOCKER / UNKNOWN | High / Medium / Low | | |
| Customer evidence | | | | |
| Opportunity/solution | | | | |
| Core experience | | | | |
| Scope/specification | | | | |
| Metrics/experiments | | | | |
| Mobile/accessibility | | | | |
| AI product system | | | | |
| Operating model/learning | | | | |

Do not average statuses or calculate a product score.

## 5. Finding format

```markdown
### [P1] <Concise decision-oriented title>

- **Type:** <finding type>
- **Location/scope:** <artifact, flow, system, file:line, or operating area>
- **Basis:** OBSERVED / EVIDENCE / INFERENCE / ASSUMPTION / UNKNOWN
- **Condition:** <specific condition>
- **Affected actor/scenario:** <who, when>
- **Consequence:** <user, product, business, trust, learning, or operational impact>
- **Action:** <one primary action type and concrete next step>
- **Confidence:** HIGH / MEDIUM / LOW — <support and limitation>
- **Owner/dependency:** <decision owner and prerequisite, if known>
- **Verification:** <evidence that would demonstrate resolution>
```

State one root cause per finding. Mention all affected lenses without repeating the finding.

For a serious but unverified risk, make the uncertainty visible in the title/action and recommend verification before build.

## 6. Cross-domain synthesis

List only contradictions or dependencies that change priority or sequence.

For each, state:

- competing goals, constraints, or system boundaries;
- evidence for each side;
- causal relationship;
- resolving decision or principle;
- accountable owner where the choice exceeds review authority;
- residual uncertainty.

Examples include AI autonomy without incident ownership, rollout without eval gates, engagement goals that reduce agency, and fixed commitments that prevent evidence-based scope changes.

## 7. Product Improvement Backlog

Use one table:

| Priority | Action | Area | Finding | Basis | Confidence | Expected impact | Dependency | Owner | Verification |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |

Use qualitative expected impact unless supplied or derived data supports a number.

Group or tag items as:

### DO NOW

High-confidence fixes, release blockers, instrumentation repair, and obvious simplification.

### VALIDATE BEFORE BUILDING

High-impact but uncertain recommendations requiring research, discovery, experiment, policy, feasibility, or operational evidence.

### DO NEXT

Important improvements dependent on earlier decisions or evidence.

### REMOVE / SIMPLIFY

Complexity with weak current value or unnecessary risk.

### DEFER

Potentially useful work that should not distract now.

Do not assign fabricated deadlines. If a proposed sequence needs a duration, label it `PROVISIONAL PROPOSAL`, name the calibration owner, and state the evidence required.

## 8. What not to do yet

Explicitly list tempting downstream actions that should wait, such as:

- expanding feature scope before validating the opportunity;
- redesigning pricing before diagnosing value exposure;
- adding agents, memory, or complex RAG before simpler approaches fail against evals;
- increasing AI autonomy before permissions, confirmation, rollback, and incidents are owned;
- scaling rollout before measurement and recovery are trustworthy;
- reorganizing teams before operating constraints and authority are evidenced.

Explain the prerequisite that would unlock each item.

## 9. Missing evidence and next review trigger

List only evidence gaps that could change a decision. For each, state:

- affected decision;
- smallest credible evidence source;
- owner when known;
- what result would change the recommendation.

State a next review trigger as an event or evidence condition, not an invented calendar commitment. Examples:

- after core event semantics and baseline are verified;
- after the targeted assumption test produces interpretable evidence;
- after representative usability evidence covers the critical task;
- after release telemetry and incident evidence reach the agreed review gate;
- before production or store rollout.

Any numeric trigger must be supplied, derived, or explicitly provisional.

## 10. Pre-release output

Lead with:

```markdown
## RELEASE STATUS

READY / READY WITH KNOWN RISKS / NOT READY / INSUFFICIENT EVIDENCE

Reason: <dominant causal basis>

## BLOCKERS
- <P0/P1 item, owner, verification>

## HIGH-RISK NON-BLOCKERS
- <risk and explicit acceptance/mitigation>

## REQUIRED VERIFICATION
- <test, evidence, environment, owner>

## POST-RELEASE MONITORING
- <outcome, guardrail, incident, rollback signal>
```

Do not call a release ready because the happy path works while critical recovery, measurement, or AI safety remains unknown.

## 11. Quick review output

Return:

1. compact verdict;
2. evidence limitation;
3. only the largest material findings;
4. immediate actions and what to validate;
5. what not to do yet.

Do not include a full specialist matrix unless it materially helps.

## 12. No-findings case

Use:

```markdown
Ready for the stated next step. No actionable product findings were identified in the inspected scope.

Coverage: <what was inspected and tested>.
Not verified: <material exclusions>.
Applied lenses: <actual specialists or local lenses>.
Residual uncertainty: <important unknowns that are not defects>.
Material strengths to preserve: <only evidence-backed strengths>.
```

Do not invent low-value findings merely to populate the report.
