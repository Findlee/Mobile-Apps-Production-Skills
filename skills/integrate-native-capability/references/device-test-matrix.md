# Native Capability Test Matrix

Select applicable rows rather than blindly running every combination.

## Environments

- lowest supported Android and iOS versions;
- current common Android and iOS versions;
- low and high capability devices;
- simulator or emulator for fast checks;
- physical device for hardware, timing, biometric, camera, notification, Bluetooth, background, and media behavior;
- clean install, upgrade, and restored backup when supported.

## Permission states

- not requested;
- granted;
- denied once;
- permanently denied or restricted;
- limited or approximate access;
- revoked in Settings while app is backgrounded;
- device policy or parental restriction.

## Lifecycle and interruption

- rotate or resize during operation;
- background and foreground;
- process killed and relaunched;
- screen or route disposed before callback;
- incoming call, system dialog, or competing app takes the resource;
- multiple rapid requests;
- cancellation before and after native work starts.

## Capability failure

- hardware absent or disabled;
- service unavailable;
- low storage or memory pressure;
- malformed or oversized input;
- timeout;
- native exception;
- unsupported data format;
- dependency or protocol-version mismatch.

## Assertions

Verify user-visible recovery, resource cleanup, no duplicate effects, stable error translation, privacy-safe logs, and correct behavior after retry. Record simulator limitations explicitly.
