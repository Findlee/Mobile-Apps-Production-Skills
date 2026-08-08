# Review routing

Create a routing record before deep review:

| Skill | Select when | Input focus | Expected contribution |
|---|---|---|---|
| `audit-interface-usability` | Whole interface or journey review | Screens/runtime/code and user goal | Evidence-based findings and severity |
| `plan-interface-experience` | Product model, IA, scope, or journey completeness is unclear | Requirements, objects, actors, flows | Missing activities, screens, states, assumptions |
| `select-interface-patterns` | Navigation, layout, form, collection, or data pattern is disputed | Task, data, frequency, platform | Pattern comparison and decision record |
| `craft-visual-ui` | Visual hierarchy, typography, color, spacing, content, or component expression matters | Screens, styles, tokens | Concrete visual-system corrections |
| `design-resilient-interactions` | Forms, async work, offline, payment, deletion, upload, sync, or critical action | State/transition evidence | Failure, feedback, recovery, implementation contract |
| `design-inclusive-accessible-experiences` | Always screen critical outcomes; deepen for custom controls, media, auth, forms, or known access needs | Semantics, interaction, content, test environments | Exclusion map, accessibility requirements and tests |
| `run-lean-usability-tests` | Real user evidence is missing for consequential hypotheses, or recordings/notes exist | Prototype/tasks or real session evidence | Research plan or evidence synthesis—not invented findings |
| `design-native-mobile-interactions` | Native/cross-platform iOS or Android app | Framework, OS range, windows, permissions, lifecycle | Platform-specific behavior and acceptance criteria |
| `internationalize-interface-experience` | Multiple locales/markets, user-visible strings/data, or RTL/complex scripts | Resources, data formats, layouts, target locales | Localization-readiness and RTL/data requirements |
| `design-trustworthy-consent-experiences` | Data choice, permissions, tracking, subscription, cancellation, export, deletion, pricing disclosure | Purpose, necessity, lifecycle, alternatives | Fair choice architecture and deceptive-pattern review |
| `define-product-metrics-experiments` | Success metrics, analytics, A/B tests, causal claims, or optimization roadmap | Decision, hypothesis, events, assignment/results | Metric quality, readiness, validity, interpretation |
| `build-scale-design-systems` | Repeated patterns, shared libraries/tokens, multiple teams/stacks, governance or adoption | Production examples, packages, docs, ownership | System gaps, API/governance/adoption recommendations |
| `design-human-ai-interactions` | Product uses generative, predictive, ranking, or agentic AI | AI role, inputs, outputs, actions, risk and evaluation | Capability, uncertainty, control, recovery and launch gates |

## Routing rules

- Select a skill because a material decision or risk exists, not to claim full coverage.
- Apply the core three to representative critical journeys, then deepen only where screening finds evidence.
- Respect the declared review depth. For rapid and standard reviews, defer lower-consequence lenses rather than partially loading every specialist.
- Route cross-domain issues to a lead lens and supporting lenses. Example: a camera permission can lead with mobile mechanics, supported by consent fairness and accessibility.
- Do not ask `run-lean-usability-tests` to simulate participants or `define-product-metrics-experiments` to invent data.
- Do not use visual polish to compensate for broken structure, and do not redesign a pattern before understanding its task.

## Routing output

Record selected skills, rejected skills and why, shared evidence package, product surfaces, expected artifacts, execution order, and dependencies. The final report should cite lenses only where provenance helps; organize findings around user outcomes.
