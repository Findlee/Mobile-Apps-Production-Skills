# Dart Concurrency and Error Boundaries

## Language baseline

Inspect the project's SDK constraint before using a language feature. Older learning material may predate Dart 3 records, patterns, exhaustive switches, and class modifiers. Verify current syntax and semantics at https://dart.dev/language.

Use the type system to make invalid states difficult:

- prefer non-nullable values after validation;
- use sealed hierarchies or enhanced enums for finite state sets;
- use generics to preserve relationships between inputs and outputs, not to display cleverness;
- expose narrow interfaces and keep mutable implementation state private.

## Futures

- Use a `Future` for one eventual success or failure.
- Prefer `async` and `await` for readable sequencing and structured error handling.
- Start independent work concurrently only when ordering and resource limits permit it.
- Define timeouts, cancellation behavior, retry ownership, and duplicate-submission protection at the operation boundary.
- Do not wrap ordinary asynchronous I/O in an isolate.

## Streams

- Use a `Stream` when multiple values over time are part of the contract.
- Define whether the stream is single-subscription or broadcast and whether it replays current state.
- Define completion and error behavior; a stream that silently dies can leave stale UI.
- Cancel subscriptions at the owner's lifecycle boundary.
- Avoid creating duplicate subscriptions from repeated widget builds.

## Isolates

Use an isolate for measured CPU-bound work that would delay the main isolate: large parsing, media processing, expensive search, or compression. Account for startup and message-transfer cost. Prefer the simplest current API suitable for one-shot work; use a long-lived worker only for repeated operations that repay lifecycle complexity.

Isolates do not share mutable memory. Design explicit messages and remember that web support differs. Verify current guidance at https://dart.dev/language/concurrency.

## Errors

- Catch errors at boundaries that can add meaning, recover, translate, retry, or report.
- Preserve causes for diagnostics while exposing stable application failures to state owners.
- Distinguish validation, authorization, connectivity, timeout, unavailable capability, conflict, and unexpected failure when behavior differs.
- Never swallow an error to keep the UI quiet. Publish an observable recovery state or report it appropriately.
