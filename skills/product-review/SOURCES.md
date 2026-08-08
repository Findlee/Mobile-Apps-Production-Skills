# Product Review Source Map

This skill is an orchestration and synthesis layer built on the complete Product Management Skills system plus current official quality/evaluation references.

It is not a summary of one book.

## Stable product-management sources

### Marty Cagan - Inspired

Primary contributions:

- opportunity assessment before expensive commitment;
- separation of discovery from implementation;
- validating value, usability, and feasibility before large engineering commitment;
- product specifications as behavior and user experience rather than paper requirement volume;
- coherent minimal product;
- direct customer exposure;
- metrics/observed usage for improving existing products.

Product-review application:

- audit whether the product is solving a real opportunity;
- distinguish intended spec from real behavior;
- find missing value/usability/feasibility validation;
- detect incoherent late scope cuts;
- diagnose existing products from real usage rather than feature requests alone.

### Melissa Perri - Escaping the Build Trap

Primary contributions:

- outcomes over outputs;
- strategy as decision-enabling direction rather than feature plans;
- Product Kata;
- problem exploration vs solution exploration;
- success metrics;
- build-trap diagnosis;
- continuous learning after release.

Product-review application:

- detect feature-factory behavior;
- connect work to outcomes;
- identify wrong-stage methods;
- diagnose whether shipping has replaced learning;
- prioritize root product obstacles.

### Teresa Torres - Continuous Discovery Habits

Primary contributions:

- continuous discovery tied to outcomes;
- opportunity spaces;
- customer story interviewing;
- assumption mapping;
- desirability, usability, feasibility, viability, and ethical lenses;
- testing assumptions rather than entire ideas;
- measuring impact and looping discovery with delivery.

Product-review application:

- identify unvalidated assumptions;
- determine when a finding should route to research/discovery/experiment;
- distinguish solution failure from opportunity failure;
- preserve evidence discipline.

### Dan Olsen - The Lean Product Playbook

Primary contributions:

- Product-Market Fit pyramid;
- target customer and underserved needs;
- value proposition;
- MVP and iterative customer testing;
- design artifacts;
- product analytics/retention concepts.

Product-review application:

- assess target customer/value proposition;
- inspect whether feature set and UX support customer needs;
- review MVP coherence and test evidence;
- connect behavioral measurement to product value.

### Jeff Patton - User Story Mapping

Primary contributions:

- shared understanding;
- end-to-end story mapping;
- outcome-based release slicing;
- Card/Conversation/Confirmation;
- minimum viable solution;
- learning after release.

Product-review application:

- reconstruct user journeys;
- find holes hidden by flat backlogs;
- distinguish coherent end-to-end slices from arbitrary feature cuts;
- validate acceptance criteria as confirmation, not a substitute for understanding.

### Ryan Singer - Shape Up

Primary contributions:

- problem + appetite + shaped solution;
- scope as variable inside an appetite;
- rabbit holes;
- no-gos;
- shaping at the right level of abstraction.

Product-review application:

- detect unresolved rabbit holes;
- audit over-specified/under-shaped work;
- identify missing no-gos;
- reduce scope without losing the core solution.

### Ron Kohavi, Diane Tang, Ya Xu - Trustworthy Online Controlled Experiments

Primary contributions:

- goal, driver, and guardrail metrics;
- metric sensitivity/gameability;
- OEC;
- experiment instrumentation;
- randomization and analysis units;
- A/A tests;
- SRM;
- p-value/confidence interval interpretation;
- power/MDE;
- peeking/multiple testing;
- institutional experiment memory.

Product-review application:

- reject untrustworthy experiment conclusions;
- audit experiment metric quality;
- distinguish statistical from product significance;
- review measurement system health.

## Dynamic official reference layer

### Nielsen Norman Group

Sources:

- 10 Usability Heuristics for User Interface Design
- Heuristic Evaluations: How to Conduct

Used for:

- expert UX inspection;
- system status, control, consistency, error prevention/recovery, recognition, efficiency, minimalism, help;
- review protocol and the limitation that heuristic inspection is not user evidence.

Reviewed: 2026-08-08

### Apple Human Interface Guidelines

Used for:

- platform consistency;
- purpose/simplicity/flexibility;
- accessibility;
- context preservation;
- native interaction expectations.

Reviewed: 2026-08-08

Dynamic: re-check current Apple guidance when release-critical.

### Android Core App Quality + Android Vitals

Used for:

- state preservation;
- navigation;
- interruptions;
- adaptive UI;
- accessibility;
- permissions/privacy;
- performance/stability;
- crashes/ANRs;
- pre-release product-quality checks.

Reviewed: 2026-08-08

Dynamic: re-check current thresholds/policies before release decisions.

### W3C WCAG 2.2

Used for:

- accessibility principles and common success criteria;
- focus;
- target size;
- alternatives to dragging;
- consistent help;
- redundant entry;
- accessible authentication;
- perceivable/operable/understandable/robust review.

Reviewed Recommendation: 2024-12-12
Reviewed for package: 2026-08-08

### Amplitude North Star / Retention

Used for:

- North Star criteria;
- critical event;
- natural usage interval;
- retention method choice;
- new/current/resurrected lifecycle analysis.

Reviewed: 2026-08-08

Used as a practical product-analytics reference, not a universal law.

### NIST AI RMF Generative AI Profile (NIST AI 600-1)

Used for:

- AI risk framing across lifecycle/use case;
- confabulation;
- data privacy;
- harmful bias;
- human-AI configuration;
- information integrity/security;
- IP/value-chain risk;
- risk prioritization based on context, likelihood, and consequence.

Published: 2024-07
NIST page updated: 2026-04-08
Package review: 2026-08-08

### OpenAI - Evaluation best practices

Used for:

- eval-driven development;
- task-specific production-like evals;
- objective -> dataset -> metrics -> run/compare -> continuous evaluation;
- typical/edge/adversarial cases;
- human calibration;
- evaluating nondeterministic AI systems.

Reviewed: 2026-08-08

Note: specific OpenAI eval platform/API lifecycle is dynamic. The stable evaluation principles are used; refresh product/API details when implementation-specific.

### Anthropic - Demystifying evals for AI agents

Used for:

- agent task/trial/grader/transcript/outcome distinctions;
- multiple trials for variable behavior;
- outcome/environment grading for tool-using agents.

Published: 2026-01-09
Reviewed: 2026-08-08

### Anthropic - Building Effective AI Agents

Used for:

- simplicity before agentic complexity;
- adding complexity only when outcomes improve;
- testing/sandboxing/guardrails for autonomous agents;
- tool interface clarity.

Reviewed: 2026-08-08

## Synthesis choices

### Product review is not seven reports stapled together

The specialist skills are used as diagnostic modules. Product-review owns one product model, evidence map, finding registry, and prioritized backlog.

### Expert UX review is not customer validation

NN/g heuristics are labeled as expert inspection. Actual user evidence is tracked separately.

### Missing evidence is not automatically a defect

Evidence gaps are first-class findings. The next action may be research, instrumentation, or experiment instead of building a solution.

### Priority is not a fake numeric score

The skill uses P0-P3 plus evidence confidence and dependency order. It avoids arbitrary 7.4/10 ratings.

### Mobile standards are dynamic

Apple/Android platform guidance is stored as a reviewed reference layer and should be refreshed for release-critical checks.

### AI quality is layered

The skill separates model/component quality, system/agent behavior, user task success, and product/business outcomes.

### AI eval guidance is provider-neutral at runtime

OpenAI and Anthropic references inform evaluation principles. The skill does not require their APIs/models and can be used with other AI systems.
