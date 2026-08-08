---
name: design-choice-architecture
description: Design or audit how options, defaults, information, ordering, friction, feedback, errors, incentives, and recommendations shape a choice. Use for settings, consent, subscriptions, pricing, forms, benefits, financial or health decisions, plan comparison, checkout, cancellation, policy, service design, and complex option sets. Apply when a choice is difficult, rare, unfamiliar, delayed in consequence, low-feedback, attention-constrained, or hard to translate into lived outcomes.
---

# Design Choice Architecture

Structure a decision so people can understand it, exercise agency, and reach outcomes they value. Remember that every interface has a choice architecture, including an apparently neutral one.

Optimize two distinct goals: **fluency**, so the chooser can follow a plausible path without unnecessary burden, and **accuracy**, so that path leads to a fitting outcome. A fluent choice that predictably produces the wrong option is not a good architecture.

## Establish the choice

Identify:

- chooser, user, payer, and beneficiary;
- who profits or bears risk;
- decision, options, and consequence horizon;
- what happens when the chooser does nothing;
- user-valued objective and organizational objective;
- reversibility, stakes, frequency, familiarity, feedback, and vulnerability.
- chooser's likely plausible paths: what they notice, compare, ignore, and decide first;
- whether preferences are stable or assembled from accessible memories, labels, and context at decision time.

If incentives are misaligned, disclose that before proposing interface changes.

## Audit the current architecture

Read [choice-audit.md](references/choice-audit.md). Document:

- default and status quo;
- option order, grouping, labels, salience, and preselection;
- required versus optional choices;
- information timing and comprehensibility;
- steps, waiting, repeated entry, and exit friction;
- feedback, warnings, error prevention, and recovery;
- hidden attributes, fees, uncertainty, and downstream consequences.
- which initial plausible path the architecture makes easiest and whether it supports an accurate choice;
- whether option set, order, description, or recommendation changes what preferences become salient.

Distinguish useful protective friction from sludge that blocks an outcome people want.

## Select patterns deliberately

Read [pattern-catalog.md](references/pattern-catalog.md). Consider patterns in this order:

1. Make the desired, user-benefiting action easier.
2. Improve stimulus-response compatibility and remove ambiguity.
3. Choose a welfare-supporting default or require active choice when preferences cannot be responsibly inferred; test what the default signals and which effort it saves.
4. Expect errors and make the system forgiving.
5. Provide timely, actionable, non-nagging feedback.
6. Translate attributes into consequences the chooser can understand.
7. Structure complex choices by deliberately selecting the option set, number of options, order, descriptions, grouping, progressive disclosure, comparison, curation, and meaningful filters.
8. Align incentives across chooser, user, payer, and beneficiary.
9. Use an explainable choice engine or Smart Disclosure when personal usage data or complex terms can support better comparison.
10. Add fun only when it supports the user's goal rather than distracting from consequences.

Generate at least two viable architectures when the correct default or level of guidance is uncertain.

## Protect autonomy

- Keep material terms visible before commitment.
- Make consent specific and revocable.
- Make exit and reversal proportionate to entry.
- Do not use false urgency, confirmshaming, hidden costs, disguised ads, or obstruction.
- Do not preselect paid, privacy-invasive, or high-risk options without a strong user-welfare justification.
- Preserve serendipity and viewpoint diversity when recommendations could create a narrow filter.
- Use `$audit-behavioral-ethics` for consequential or potentially manipulative designs.

## Define validation

Test comprehension, fluency, choice accuracy, completion, error rate, reversal, regret, and downstream outcome. Use decision simulations when a fitting option or objective task can be specified. Do not judge success only by selection of the organization's preferred option.

When running an experiment, include guardrails for harm, complaints, cancellation, support contacts, and unequal effects across relevant groups.

## Deliver the specification

Use the user's language and include:

1. Choice and stakeholder map
2. Current architecture and failure modes
3. Recommended architecture
4. Rationale for each pattern
5. Alternative architecture and trade-offs
6. Information and disclosure requirements
7. Error, reversal, and exit behavior
8. Ethics risks and mitigations
9. Validation metrics and test plan

For each design element, state the user problem it addresses. Avoid decorative nudges without a diagnosed need.
