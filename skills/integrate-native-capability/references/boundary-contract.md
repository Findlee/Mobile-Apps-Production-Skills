# Native Boundary Contract

## Capability surface

Define the smallest semantic API the application needs. Prefer operations such as `captureDocument`, `observeLocation`, or `authenticateUser` over exposing a vendor SDK object graph.

For each operation specify:

- input types, units, ranges, and nullability;
- output variants and stable identifiers;
- asynchronous completion, cancellation, timeout, and duplicate-call behavior;
- event ordering, replay, buffering, and completion;
- thread requirements;
- resource ownership and disposal;
- platform-specific unsupported cases.

## Failure vocabulary

Use only distinctions that change application behavior. Common categories:

- unsupported capability or OS version;
- hardware or service unavailable;
- permission not determined, denied, permanently denied, restricted, or revoked;
- user cancellation;
- interrupted lifecycle;
- invalid input or state;
- timeout or transient platform failure;
- native implementation failure;
- incompatible module or protocol version.

Preserve platform codes and causes for diagnostics without forcing the UI to understand them.

## Permission UX

1. Explain value in context before the system prompt when the platform permits it.
2. Ask only for the minimum permission at the moment it becomes necessary.
3. Continue gracefully after denial.
4. Distinguish retryable denial from a state requiring Settings.
5. Re-check authorization when returning to foreground or Settings.
6. Handle partial permission such as approximate location or limited photo access.

## Privacy and security

- Minimize collected data and retention.
- Keep credentials and sensitive values in appropriate protected storage.
- Redact logs, analytics, crash breadcrumbs, screenshots, and test fixtures.
- Validate deep links, notification payloads, files, and native results.
- Document external SDK collection and disclosure requirements.
- Never assume client-side checks enforce server authorization.
