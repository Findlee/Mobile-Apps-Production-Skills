# Choice Architecture Pattern Catalog

## Make it easy

Remove unnecessary steps, prefill known data with permission, place the action in the natural channel, support implementation planning, and make the signal compatible with the expected response.

## Defaults

Use a default when preferences can be responsibly inferred, the outcome is reversible, and doing nothing needs a rule. Make the default visible and easy to change.

Use active choice when preferences vary materially, explicit consent matters, or a default would conceal responsibility. Avoid forcing complex choices that most people cannot evaluate.

Use prompted choice when attention is useful but blocking progress would impose excessive burden.

## Expect error

- Make incorrect inputs impossible where practical.
- Use forcing functions for irreversible sequences.
- Preserve work and allow undo.
- Detect post-completion omissions.
- Provide recovery in the same channel.
- Default destructive actions to a safe state.

## Give feedback

Make feedback immediate, specific, actionable, and proportional. Warn before harm rather than after it. Avoid warning saturation that trains automatic dismissal.

## Improve mappings

Translate technical attributes into consequences:

- total cost over the relevant period;
- expected time, effort, or risk;
- scenarios and ranges;
- natural frequencies rather than opaque percentages where useful;
- comparable standardized units;
- consequences based on the chooser's own usage data.

## Structure complex choices

- Curate a manageable starting set.
- Group by meaningful user goal.
- Use progressive disclosure.
- Allow comparison on material attributes.
- Provide filters with understandable thresholds.
- Show why a recommendation fits.
- Preserve an accessible route to all options.
- Introduce serendipity when narrow personalization could trap the chooser.

Treat these as separate design levers:

- **Option set:** Which alternatives are included, excluded, or generated?
- **Number:** Does adding options improve fit or produce abandonment and reliance on shortcuts?
- **Order:** Which items become reference points, are inspected first, or appear recommended?
- **Description:** Which attributes, units, labels, frames, and comparisons become accessible?
- **Choice engine:** What information is elicited, how is it translated into recommendations, and can the chooser inspect or change the logic?

Because preferences can be assembled during the choice, do not treat a context-dependent selection as proof of a stable underlying preference.

## Align incentives

Map chooser, user, payer, and profiter. Price and reward signals should support the intended welfare outcome. Small payments can crowd out intrinsic motives or feel insulting; do not assume more incentive always helps.

## Smart Disclosure

Provide complex information in standardized, machine-readable form and give people access to their own usage or transaction data. Support trusted comparison tools. Display total cost and shrouded attributes before commitment.

## Curation and fun

Use curation to reduce search while maintaining explanation and control. Use fun to make a beneficial action inviting, not to disguise risk, prolong consumption, or make refusal embarrassing.

## Protective friction

Add a pause, confirmation, limit, or cooling-off period when action is impulsive, harmful, difficult to reverse, or inconsistent with a stated user goal. Keep the friction proportionate and symmetric; never use it to trap people in a service.
