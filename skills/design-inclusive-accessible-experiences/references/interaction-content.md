# Accessible interaction and content

## Native-first component contract

For each component define:

- semantic element or platform role;
- accessible name source and optional description;
- value, selection, expansion, invalid, busy, and disabled states;
- keyboard and assistive-technology commands;
- focus entry, order, movement, exit, and restoration;
- announcements for dynamic changes;
- touch, voice, switch, and pointer alternatives;
- behavior at zoom, large text, high contrast, reduced motion, and RTL;
- loading, empty, error, and recovery behavior.

Use ARIA only to add missing semantics to a sound interaction model. An assigned role does not supply keyboard behavior, focus management, or usability automatically.

## Focus and announcements

- Move focus only when context genuinely changes or the user must act.
- After closing a temporary surface, restore focus to a logical surviving control.
- Announce important asynchronous results concisely without duplicating visible content excessively.
- Do not announce every progress update; communicate milestones and completion.
- Keep DOM/semantic order coherent with reading and keyboard order.

## Content

- Put the action or decision first and use concrete language.
- Keep labels persistent when a value is entered; placeholder text is not a label.
- Make links meaningful out of context.
- Pair error identification with cause and recovery.
- Describe the purpose or information of an image, not its pixels; use empty alternatives for decoration.
- Avoid idioms and unnecessary complexity where they obstruct comprehension.

## Alternatives

Provide an operable control for drag, multi-point, motion, hover-only, or device-sensor actions. Give media and time-based tasks alternatives appropriate to their purpose. Equivalent does not require identical presentation; it requires access to the essential outcome.
