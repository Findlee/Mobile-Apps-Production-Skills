# Data and commitment lifecycle

## State inventory

Cover:

- not asked, education, requested, accepted, declined, deferred;
- partially accepted or scoped/limited;
- unavailable/restricted, revoked, expired, renewed;
- purpose or policy changed;
- export requested/processing/ready/expired/failed;
- deletion requested/grace period/processing/completed/partially retained/failed;
- subscription active/trial/renewing/cancelled/end-of-term/refunded;
- account closed, restored, or irrecoverable.

## State contract

For each state define visible status, available features, data collection/use, next action, reversibility, notification, audit event, and system dependency. The UI must reflect backend truth; do not claim deletion while data remains actively available.

## Withdrawal and deletion

- Keep the path findable from the place where current choices are shown.
- Explain immediate and delayed effects, legitimate retention, and loss of access before confirmation.
- Use a grace period or undo when it reduces accidental harm without frustrating a deliberate choice.
- Preserve confirmation and a reference path after account access ends where feasible.

## Subscription cancellation

Show current plan, price, renewal date, benefit end date, consequences, and any refund. Do not convert cancellation into a compulsory survey or retention maze. Optional offers must not obscure the direct route.

## Change management

For a new purpose or material change, identify affected people, old and new state, whether fresh choice is needed, migration, communication, refusal behavior, and rollback. Do not silently broaden a saved choice.
