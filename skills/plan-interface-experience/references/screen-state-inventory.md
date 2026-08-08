# Screen and state inventory

Use this reference to define the surfaces the experience needs without producing redundant screens.

## Screen responsibility

Create a screen or surface when it has a distinct user purpose, context, or interaction mode. Do not create separate screens merely because:

- the backend endpoint changes;
- one field or message changes;
- a minor component state changes;
- a modal could avoid necessary navigation;
- a mockup tool encourages one frame per condition.

Conversely, do not force unrelated tasks into one screen to minimize screen count.

## Inventory template

```text
Surface name:
User purpose:
Entry conditions and sources:
Primary content or object:
Primary action:
Secondary and contextual actions:
Required decisions or input:
Exit and return paths:
Relevant roles and permissions:
State families:
Deep-link or restoration needs:
Unknowns and validation:
```

## State families

Mark only applicable families:

- first use or setup;
- loading or refreshing;
- populated;
- empty by design;
- empty due to search or filters;
- editing or unsaved;
- submitting or processing;
- partial result;
- success or confirmation;
- validation error;
- system failure;
- offline or degraded;
- permission denied or unavailable capability;
- stale, conflicting, expired, or revoked;
- cancelled, undoable, or resumed.

The inventory identifies required behavior; `design-resilient-interactions` defines detailed transitions and recovery.

## Cross-screen checks

- Stable objects use stable names and representations.
- Back, close, cancel, and completion have coherent meanings.
- Navigation preserves filters, selection, scroll, and drafts when needed.
- Deep links contain enough context to orient the user.
- Permissions and role changes update available actions clearly.
- Global actions do not conflict with local modes.
- Empty and error conditions do not strand the user.

## Minimum viable experience

Separate:

- essential screens for the core outcome;
- supporting screens needed for trust, recovery, and return;
- administrative or rare screens;
- future ideas not required to validate the core model.

Do not remove recovery, privacy, or accessibility needs from MVP simply because they are not part of the happy path.
