# Flows and information architecture

Use this reference to connect activities, objects, content, and navigation before choosing detailed components.

## Model domain objects

List nouns the user recognizes, such as project, task, account, document, message, transaction, member, or device. For each important object, define:

- identity and essential attributes;
- owner and collaborators;
- lifecycle states;
- permitted actions by role;
- relationships to other objects;
- how users find, recognize, and return to it.

Use stable user vocabulary. Do not expose internal services or database tables as the product model unless users genuinely think in those terms.

## Build the primary flow

Express the shortest coherent path from trigger to verified outcome:

```text
Entry → orientation → decision or input → commitment → feedback → completion or next activity
```

For each step, record the user's question, required information, available action, system response, and exit.

## Add meaningful alternatives

Consider only relevant branches:

- first use versus return use;
- direct or deep-link entry;
- missing prerequisite or permission;
- optional path or changed goal;
- back, cancel, save, or resume;
- collaboration or approval;
- empty or no-result path;
- delayed or partial completion;
- denied, expired, or unavailable access;
- post-completion retrieval or correction.

Detailed failure handling belongs in `design-resilient-interactions`; this plan needs enough coverage to expose required states and surfaces.

## Organize information

Choose organization from user retrieval needs:

- alphabetical or numeric for known lookup;
- chronological for recency and history;
- location for spatial tasks;
- hierarchy for parent-child meaning;
- category for recognizable conceptual groups;
- facets for items belonging to several dimensions;
- task or workflow for action-led products.

Avoid reproducing company departments, backend ownership, or feature roadmaps as navigation.

## Navigation model

Describe structure, not visual components:

- top-level peer destinations;
- hierarchical paths;
- hub-based tasks;
- guided sequences;
- cross-links and related objects;
- search-led direct access;
- recent, saved, or resumed work.

Specify global, local, utility, and contextual navigation roles; entry points; location cues; deep-link expectations; and escape behavior. Choose the detailed component later with `select-interface-patterns`.

## Flow quality checks

- Users can tell where they are and what outcome is in progress.
- The interface asks for information when it becomes meaningful.
- Repeated tasks avoid repeated unnecessary decisions and entry.
- Essential choices are not hidden to achieve minimalism.
- The system carries complexity that it can handle more reliably than the user.
- Each transition preserves enough context for evaluation and recovery.
- Completion is visible and connects to the next real-world need.
