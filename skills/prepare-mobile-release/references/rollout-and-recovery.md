# Rollout and Recovery

## Rollout stages

Choose stages proportional to risk:

1. CI artifact and automated gates;
2. internal team distribution;
3. controlled external or closed testing;
4. small production percentage;
5. increasing staged or phased rollout;
6. full availability after observation.

Define entry, observation duration, owner, success threshold, and halt threshold for each stage.

## Monitor by version

Track at least applicable signals:

- crash-free users and sessions, hangs, and fatal native exceptions;
- startup and critical interaction latency;
- authentication, API, sync, payment, and core workflow success;
- queued-operation age and migration failure;
- permission denial and native capability failure;
- support contacts and store feedback;
- server load or error changes caused by the new client.

Segment by platform, OS, device class, app version, environment, and rollout cohort while respecting privacy.

## Recovery options

- halt staged rollout;
- disable a remote feature or server capability safely;
- restore backward-compatible server behavior;
- deliver a corrected over-the-air bundle only within the same compatible native runtime;
- prepare an expedited store hotfix;
- guide users through local repair only when data safety is understood;
- require an update only when continued old-client use is more harmful.

Store releases cannot reliably remove already installed code. Design server contracts, schemas, and feature flags with this constraint from the beginning.

## Migration safety

- Make migrations restartable and observable.
- Preserve queued user work across upgrades when promised.
- Test upgrade from every supported production schema, not only a clean install.
- Avoid destructive migration before the new version has demonstrated stability when a reversible path is possible.
- Keep old servers or adapters long enough for the real client adoption curve.
