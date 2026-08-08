# product-manager behavior evals

Use these scenarios to check whether the orchestration skill routes proportionally and avoids unnecessary ceremony.

## 1. Trivial reversible UI change

Prompt: "Move this settings toggle above notifications and rename it."

Expected:
- Fast lane.
- No broad discovery.
- Clarify behavior only if ambiguous.
- Proceed to specification/implementation.

Failure:
- Asking for market research, interviews, or an OST.

## 2. Solution-first strategic feature

Prompt: "Add an AI coach to our fitness app."

Expected:
- Identify the proposal as a solution.
- Recover intended outcome/problem.
- Route to product-discovery if problem/evidence is weak.
- Avoid immediately producing a giant feature backlog.

## 3. Standard solved pattern

Prompt: "We need password reset for email/password users."

Expected:
- Recognize as a familiar non-differentiating problem unless context suggests otherwise.
- Avoid unnecessary ideation/experimentation.
- Route toward product-spec/implementation with security/product constraints explicit.

## 4. High-cost unvalidated bet

Prompt: "Let's build a creator marketplace. It will take about four months."

Expected:
- Deep lane.
- Expose target customer, desired outcome, and evidence.
- Route through strategy/discovery and assumption testing before full build commitment.

## 5. Mandated feature

Prompt: "Apple requires this account-deletion flow. We have to ship it."

Expected:
- Do not challenge whether to build it.
- Clarify constraints, affected users, minimum coherent behavior, product risks, and measurement/verification.
- Route to scope/spec.

## 6. Outcome without solution

Prompt: "We need to improve D30 retention. What should we build?"

Expected:
- Do not jump to feature ideas.
- Clarify baseline/segment/context.
- Route to product-discovery, product-metrics, or customer-research depending existing evidence.

## 7. Specific solution with a risky assumption

Prompt: "We think a paywall preview will increase trial starts. How can we validate that before fully rebuilding onboarding?"

Expected:
- Route to product-experiment.
- Identify the critical assumption.
- Prefer a focused test over rebuilding onboarding.

## 8. Scope explosion

Prompt: "The first version needs profiles, social feed, chat, referrals, achievements, subscriptions, and creator tools."

Expected:
- Route to mvp-scope.
- Anchor cuts to target user and desired outcome.
- Preserve coherent end-to-end value.
- Explicitly define out-of-scope/later.

## 9. Existing feature underperformed

Prompt: "We shipped the new onboarding but activation didn't move. What now?"

Expected:
- Do not declare the idea invalid automatically.
- Route to product-review/product-metrics.
- Check delivery correctness, adoption/exposure, usability, assumptions, segment effects, and guardrails.
- Decide whether to iterate, stop, or return to discovery.

## 10. User explicitly asks only for a PRD

Prompt: "The solution is validated and approved. Write the implementation-ready product spec."

Expected:
- Respect the stated state.
- Route directly to product-spec.
- Do not restart strategy/discovery without contradictory evidence.

## 11. Cheap reversible live test

Prompt: "This wording change takes 20 minutes and can be rolled back instantly. We want to see if checkout completion improves."

Expected:
- Fast/Standard lane.
- Implementation may itself be the learning step.
- Define expected effect and measurement.
- Do not demand prototype research first.

## 12. AI-only team

Prompt: "I am building this alone with Codex. There is no designer or PM."

Expected:
- Use product/design/engineering analysis lenses.
- Never claim those simulated perspectives are real validation.
- Recommend real customer evidence when material uncertainty requires it.

## Product review orchestration additions

### Full project review routing
Prompt: `Do a complete product review of this project and use all relevant product skills.`
Expected behavior:
- Route to `product-review` FULL REVIEW.
- Do not require the user to invoke strategy/discovery/research/etc manually.
- Let product-review selectively deep-dive only where useful and synthesize one prioritized backlog.

### Pre-release project review routing
Prompt: `We are about to release. Review the whole app first.`
Expected behavior:
- Route to `product-review` PRE-RELEASE.
- Expect blockers, known risks, required verification, and monitoring plan.
