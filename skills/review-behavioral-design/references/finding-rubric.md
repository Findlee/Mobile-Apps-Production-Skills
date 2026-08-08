# Finding and Priority Rubric

## Rate the dimensions

### Reach

- Low: edge case or small subgroup
- Medium: meaningful segment or secondary journey
- High: most users or a core journey

### User impact

- Low: inconvenience without outcome loss
- Medium: delay, confusion, repeated failure, or reduced benefit
- High: blocks user value or causes material financial, safety, privacy, autonomy, or well-being harm

### Confidence

- Low: theory or inference without direct project evidence
- Medium: direct interface evidence, analogous data, or consistent user reports
- High: reproduced failure, strong behavioral data, repeated direct research, or valid experiment

### Ethical risk

- Low: aligned, transparent, reversible
- Moderate: ambiguity, limited asymmetry, or subgroup concern
- High: material manipulation, vulnerable users, difficult reversal, or consequential hidden influence
- Critical: deception, coercion, predatory exploitation, rights denial, or serious danger

### Effort

Describe effort as unknown, small, medium, or large only when project evidence supports the estimate. Do not let low effort inflate the claimed user impact.

## Assign priority

### P0 - Blocker

Use for critical ethical or safety failures, denial of meaningful exit or consent, severe privacy or financial harm, or a reproduced defect blocking the core user outcome. Require action before launch or continued exposure.

### P1 - High

Use for high-reach or high-impact barriers in a core journey with at least medium confidence, or high ethical risk requiring near-term redesign.

### P2 - Medium

Use for meaningful but limited barriers, secondary journeys, or promising recommendations that need validation.

### P3 - Explore

Use for low-confidence hypotheses, polish, optional opportunities, and research questions. Do not present P3 as an implementation commitment.

Priority is not a mathematical score. Ethical severity, dependency, reversibility, and strategic value can override reach.

## Deduplicate findings

Merge surface symptoms when one root cause explains them. Preserve separate findings when they require different owners, affect different outcomes, or have different ethical implications.

Example:

- "Too many fields," "users lose progress," and "authentication expires" may share a root cause of an interruption-intolerant onboarding flow.
- A preselected marketing consent and a confusing product recommendation may appear on one screen but require separate findings because consent and choice quality have different standards.

## Recommendation standard

Every recommendation must answer:

1. What exact element should change?
2. Which diagnosed barrier or risk does it address?
3. Why should behavior or welfare improve?
4. What trade-off might worsen?
5. How will the team know whether it worked?

Avoid generic recommendations such as "simplify," "add social proof," "increase motivation," or "use gamification" without an exact mechanism and location.

## Finding table

```markdown
| Priority | Journey and location | Evidence | Diagnosis | User impact | Recommendation | Confidence | Validation |
|---|---|---|---|---|---|---|---|
```
