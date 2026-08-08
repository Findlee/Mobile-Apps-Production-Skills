# Exploratory testing heuristics

Use heuristics to generate experiments, not to claim complete coverage.

## Reconnaissance map

- **Users:** roles, goals, expertise, accessibility needs, harmful misuse.
- **Functions:** core, supporting, hidden, administrative, destructive.
- **Data:** sources, types, boundaries, ownership, sensitivity, persistence.
- **Interfaces:** screens, APIs, files, events, notifications, devices.
- **Platforms:** OS, browser, device, network, locale, configuration.
- **Operations:** install, start, stop, update, migrate, backup, restore, monitor.
- **Dependencies:** external services, queues, clocks, identity, storage, third parties.
- **History:** recent changes, recurring defects, incidents, support issues.

## Experiment tactics

- Vary one dimension to learn causality; combine dimensions when interaction risk is plausible.
- Repeat, reorder, omit, interrupt, cancel, retry, undo, and resume actions.
- Move between minimum, typical, maximum, just-invalid, empty, duplicate, stale, and malformed data.
- Change role, ownership, tenant, session, locale, clock, network, storage, and dependency health.
- Follow data through creation, transformation, display, export, deletion, and recovery.
- Compare the same rule across UI/API, clients, accounts, versions, and environments.
- Force errors and observe containment, messages, state, logs, cleanup, and recovery.
- Use production-like histories and sequences, not only clean new accounts.

## Oracle families

- stated requirements and examples;
- consistency within the product;
- consistency with the product's history or comparable products;
- user purpose and reasonable expectations;
- laws, standards, platform rules, and domain conventions;
- claims in help, marketing, UI labels, and API documentation;
- invariants, reversibility, conservation, and absence of harmful side effects;
- independent calculations, tools, logs, or data stores.

An inconsistency is evidence to investigate, not automatically a defect.

## Session control

- Use a timebox appropriate to the target; 45–90 minutes is a useful default, not a rule.
- Pause when setup or blocker work consumes the mission.
- Split the charter when evidence points to a separate risk area.
- Stop when the timebox ends, the mission is answered, the environment becomes unreliable, evidence cannot be preserved, or continuing would create unauthorized risk.

## Note taxonomy

Label notes so later reporting is reliable:

- **T:** test or experiment performed;
- **O:** observation;
- **B:** defect candidate;
- **Q:** question or ambiguity;
- **R:** risk;
- **I:** idea for another test;
- **S:** setup/environment activity.

Capture timestamp, build, account/data, and relevant identifiers when they help correlate evidence.
