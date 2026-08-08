# Mobile Release Controls

## Identity and configuration

Keep these separate and auditable:

- application or bundle identifier;
- display name and icons;
- semantic or marketing version;
- monotonically increasing Android version code and iOS build number;
- API environment and endpoints;
- feature flags and remote configuration;
- signing identity;
- push, deep-link, associated-domain, keychain, and other entitlements;
- diagnostics environment and symbol upload.

Use flavors, schemes, build variants, or profiles that already fit the repository. Avoid configuration scattered across source conditionals.

## Secrets

Assume values embedded in a client binary can be extracted. Client configuration is not a server secret. Keep signing credentials and privileged service credentials in protected CI or platform stores, restrict access, prevent log exposure, and document rotation and recovery.

## Reproducibility

- Build from a clean checkout and reviewed commit.
- Use lockfiles and deterministic generation.
- Pin or record native toolchain, Java, Node, Ruby, CocoaPods, Dart, Flutter, Xcode, and Android build versions as applicable.
- Fail on uncommitted generated changes when generated source is tracked.
- Archive symbols, source maps, obfuscation mappings, and dependency manifests.
- Verify the produced artifact rather than a separately built local copy.

## Policy and privacy

Review permission declarations, privacy manifests or labels, data safety forms, tracking behavior, third-party SDK disclosures, export controls, encryption declarations, account-deletion requirements, subscriptions, and review credentials. Requirements change; consult current Apple and Google documentation at release time.

## Client-server compatibility

Design for clients that update late, skip versions, go offline during migration, or reinstall. Use additive contracts, capability negotiation, staged deprecation, and server-side monitoring. Make mandatory updates an explicit product and incident-control decision, not the default compatibility strategy.
