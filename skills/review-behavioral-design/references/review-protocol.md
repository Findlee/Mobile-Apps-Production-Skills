# Full Behavioral Review Protocol

## Evidence inventory

Look for the following artifacts when they exist:

- product strategy, PRD, user stories, and outcome definitions;
- navigation, routes, screens, components, and state transitions;
- screenshots, prototypes, store listing, and onboarding copy;
- pricing, checkout, subscription, refund, cancellation, and deletion;
- permissions, privacy, consent, safety, and notification settings;
- analytics taxonomy, event implementation, dashboards, and data models;
- experiments, feature flags, and decision records;
- user research, usability studies, surveys, support logs, and complaints;
- accessibility behavior, localization, error handling, and offline states.

Do not penalize the project for artifacts that were never claimed to exist. Record the coverage limit.

## Select critical journeys

Prioritize journeys that determine whether the user:

1. understands the product's value;
2. reaches first meaningful value;
3. completes the core recurring behavior, if any;
4. makes a consequential choice or commitment;
5. recovers from error or interruption;
6. changes settings, withdraws consent, cancels, or leaves.

Use three to five journeys for a standard review. Expand only when the product has materially different actors or business models.

## Build a coverage matrix

```markdown
| Journey | Evidence | Target behavior | Barrier | Choice | Habit | Incentive | Decision quality | Ethics | Measurement | Scale |
|---|---|---|---|---|---|---|---|---|---|---|
```

Mark each cell complete, not applicable, limited, or skipped. "Not applicable" requires a reason.

## Maintain a finding ledger

Record findings during each pass before synthesis:

```markdown
ID:
Journey and location:
Observed evidence:
Evidence type:
Proposed mechanism:
Affected outcome:
Alternative explanation:
Specialist source:
Reach:
Severity:
Confidence:
Ethical risk:
Suggested change:
Expected effect:
Validation:
Transfer or scale risk:
Dependencies:
```

## Evidence labels

- **Observed:** visible in code, interface, data, or a reproduced flow
- **Reported:** documented by users, research, support, or stakeholders
- **Inferred:** a plausible explanation consistent with evidence
- **Unknown:** material information not available

An observed interface is evidence that a mechanism exists, not that it causes a measured user outcome.

## Review discipline

- Cite exact project locations whenever possible.
- Review current behavior before recommending future behavior.
- Compare entry with exit and success with recovery.
- Check mobile constraints, accessibility, localization, and interrupted sessions.
- Separate broken functionality or poor usability from behavioral mechanisms.
- Prefer a small number of root causes over a long list of surface symptoms.
- Do not turn every UX preference into a behavioral-science finding.
- Do not infer user welfare from engagement or conversion alone.

## Stop conditions

Pause the review and report a blocker when:

- the project cannot be accessed or rendered and no inspectable artifact exists;
- the user population or intended outcome is unknowable and alternatives would materially change the audit;
- the review would require production mutation, private data access, or another authorization not provided;
- a critical safety, legal, or ethical issue requires qualified external review.

Continue with a limited review when the missing evidence affects confidence but not the basic scope.
