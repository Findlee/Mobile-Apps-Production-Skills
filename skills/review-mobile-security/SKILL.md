---
name: review-mobile-security
description: Perform an evidence-based, read-only security review of an Android, iOS, Flutter, or React Native application and its mobile-facing APIs. Use for mobile threat reviews, pre-release security assessment, authentication or authorization changes, sensitive-data handling, storage, cryptography, network security, WebViews, deep links, platform integration, dependency exposure, privacy security controls, or a MASVS/MASTG-aligned gap analysis. Do not use as a substitute for an authorized penetration test or to claim certification.
---

# Review Mobile Security

Review the mobile attack surface without turning a source scan into a claim of runtime safety. Use OWASP MASVS as a control map, MASTG as a source of test procedures, and current Apple and Android guidance for platform behavior.

## Own the security question

Own threats, security controls, exploitability, and security evidence. Do not take ownership of:

- ordinary feature correctness or critical-journey execution;
- general test-strategy quality;
- broad mobile architecture without a security consequence;
- App Store or Google Play declaration accuracy;
- product value, usability, or global backlog priority.

Use existing feature, E2E, QA, mobile-engineering, and store-compliance reports as evidence. Do not repeat their work unless a narrowly scoped security test is needed to confirm or reject a security hypothesis.

## Establish authority and scope

1. Record the reviewed repository, build, platform, environment, accounts, APIs, and version.
2. Identify sensitive assets, trust boundaries, actors, entry points, privileged operations, and plausible attackers.
3. Separate permitted static inspection from dynamic testing. Require explicit authorization for interception, instrumentation, rooted or jailbroken devices, fuzzing, credential attacks, production access, or destructive probes.
4. Define exclusions and unavailable evidence. Return `BLOCKED` for an unsafe or unauthorized test instead of simulating it.
5. Protect credentials and personal data. Report secret locations and categories without reproducing values.

Read [control-map.md](references/control-map.md) before selecting controls or tests.

## Build an evidence register

Classify every material claim:

- `CONFIRMED` — directly demonstrated by code, configuration, artifact inspection, or an authorized reproducible test;
- `SUPPORTED RISK` — evidence establishes a plausible weakness, but exploitability or exposure remains incomplete;
- `INFERENCE` — reasoned interpretation requiring validation;
- `UNKNOWN` — important evidence is unavailable;
- `NOT APPLICABLE` — the control does not apply to the reviewed surface.

Scanner output is a lead, not a confirmed vulnerability. A secure-looking implementation is not proof that the compiled app, backend, or runtime behaves securely.

## Review by attack surface

Select only relevant controls and trace them through implementation, configuration, dependencies, built artifacts, and runtime evidence where authorized:

1. **Data and storage** — secrets, tokens, logs, caches, backups, screenshots, clipboard, local databases, files, keychain or keystore use, deletion, and residual data.
2. **Cryptography** — platform APIs, algorithms, modes, randomness, key lifecycle, hard-coded material, custom cryptography, and failure handling.
3. **Authentication and authorization** — session lifecycle, reauthentication, biometric boundaries, account switching, server-side authorization, object ownership, replay, and recovery.
4. **Network** — cleartext traffic, TLS policy, trust evaluation, certificate bypasses, redirects, WebSockets, endpoint configuration, and sensitive data in requests or telemetry.
5. **Platform interaction** — exported components, intents, URL schemes, universal or app links, pasteboard, notifications, permissions, IPC, WebViews, file providers, and native bridges.
6. **Code and supply chain** — debug surfaces, secret exposure, unsafe deserialization, injection paths, dependency provenance, signing, update paths, and CI handling.
7. **Resilience** — tamper resistance, runtime integrity, anti-debugging, or obfuscation only when justified by the threat model. Do not prescribe these controls universally.
8. **Privacy security** — data minimization, access control, retention enforcement, telemetry exposure, and deletion mechanics. Leave disclosure wording and store-form accuracy to store compliance.
9. **Mobile-facing APIs** — authorization, rate and abuse controls, input validation, replay and idempotency, data exposure, and client/server trust assumptions.

## Use dynamic tests proportionately

Start with the smallest test that can change the conclusion. Preserve the original observation, test one hypothesis at a time, and avoid blind tool sweeps. Never:

- attack systems outside the written scope;
- use real credentials or personal data without authorization;
- bypass controls on production merely because tooling permits it;
- create charges, contact users, corrupt data, or degrade service;
- report a suspected root cause as proven.

When a security-specific scenario reuses a user journey, state the security oracle explicitly. For example, test whether a second account can access the first account's object; do not rerun the journey merely to prove that the feature works.

## Consolidate findings

Deduplicate symptoms that share a weakness and remediation. For every retained finding include:

1. stable ID and affected asset or trust boundary;
2. severity and confidence kept as separate judgments;
3. evidence, exact location, environment, and reproduction safe to disclose;
4. realistic preconditions, attack path, consequence, and exposed actors or data;
5. uncertainty and competing explanations;
6. smallest proportionate remediation and responsible discipline;
7. validation needed to close the finding;
8. related MASVS category or platform guidance when applicable.

Prioritize demonstrated unauthorized access, secret or sensitive-data exposure, account compromise, code execution, payment abuse, and irreversible loss ahead of hardening preferences. Do not assign severity from a scanner label alone.

## Deliver the review

Return:

- verdict and highest-risk next action;
- scope, authority, version, evidence, and limitations;
- attack-surface and control coverage;
- deduplicated findings ordered by consequence;
- tests performed and tests blocked or intentionally omitted;
- remediation sequence and retest conditions;
- residual risk and specialist handoffs.

State that the review is not a certification or guarantee of absence of vulnerabilities. Verify version-sensitive controls against current primary sources at review time.
