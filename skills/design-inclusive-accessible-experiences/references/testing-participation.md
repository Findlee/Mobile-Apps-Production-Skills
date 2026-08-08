# Testing and participation

## Layered validation

1. Review structure, content, interaction specification, and applicable requirements.
2. Run automated checks for detectable failures.
3. Test keyboard-only operation, focus, zoom/reflow, contrast modes, reduced motion, and text scaling.
4. Test representative screen-reader and browser/platform combinations.
5. Test touch, voice, switch or alternative inputs relevant to the audience.
6. Run task-based sessions with people who experience the target mismatches.
7. Retest fixes and regression-prone shared components.

Automated tools cannot reliably judge meaningful alternatives, logical reading, cognitive clarity, appropriate focus changes, or equivalent task outcomes.

## Environment record

Capture device, OS, browser or app build, assistive technology and version, settings, input method, locale, zoom/text size, account state, and test date.

## Task-based session

- Make recruitment, consent, communication, materials, and compensation accessible.
- Ask participants to use their normal setup and strategies.
- Observe completion, workarounds, confidence, recovery, and effort.
- Do not ask participants to prove a criterion; study whether the experience supports their goal.
- Separate participant evidence from evaluator inference.

## Issue record

Include task, location/state, affected users and contexts, reproduction, evidence, requirement, consequence, severity, remediation, acceptance criteria, and retest method.

## Release gates

Block release for inaccessible essential outcomes, loss of data or agency, inability to authenticate or pay, unsafe errors, and regressions in shared foundations. Document remaining risk, owner, workaround, and repair date rather than hiding exceptions.
