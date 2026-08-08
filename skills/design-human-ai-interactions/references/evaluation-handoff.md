# Evaluation and implementation handoff

## Evaluation matrix

Evaluate the human–AI system, not model output alone:

- task outcome and expert-rated quality;
- factuality, source support, freshness, and completeness as applicable;
- calibrated uncertainty and appropriate abstention;
- user understanding of capability, limitation, and responsibility;
- correction, override, verification, and recovery success;
- time, effort, trust calibration, and overreliance;
- accessibility, localization, and performance across relevant groups/contexts;
- harmful-output, privacy, security, and abuse rates;
- tool/action accuracy, duplicate prevention, rollback, and downstream outcomes.

Define metric, scenario, slice, threshold, owner, evidence, and response for every launch gate.

## Test stages

1. Curated and adversarial offline evaluations with known expected behavior.
2. Scenario walkthroughs with domain, safety, privacy, accessibility, and affected-user partners.
3. Prototype usability testing for mental models, uncertainty, control, and recovery.
4. Internal or sandbox use without harmful external action.
5. Limited staged release with monitoring and stop conditions.
6. Broader release with drift, incident, feedback, and outcome review.

## Acceptance contract

Specify model/tool versions or capability assumptions, prompt/context boundaries, timeouts, provenance fields, UI states, action confirmation, idempotency, logs, user controls, escalation, data retention, monitoring, thresholds, rollback, and incident ownership.

## Launch decision

Do not average away a critical failure. A launch can require both overall quality and per-risk/slice floors. Document accepted residual risk, accountable approver, user mitigation, monitoring, and review date.

## Current interaction sources

- [Microsoft HAX Guidelines](https://www.microsoft.com/en-us/haxtoolkit/ai-guidelines/)
- [Google PAIR Guidebook](https://pair.withgoogle.com/guidebook-v2/)
- [Apple Human Interface Guidelines: Generative AI](https://developer.apple.com/design/human-interface-guidelines/generative-ai)

Recheck current product and platform guidance because AI capabilities and norms change rapidly.
