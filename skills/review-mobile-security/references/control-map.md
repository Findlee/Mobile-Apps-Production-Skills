# Mobile Security Control Map

Use this map to select relevant security controls and evidence. Do not run every test mechanically.

## Control routing

| Area | Inspect first | Stronger evidence | Keep outside this review |
|---|---|---|---|
| Storage | data inventory, local files, databases, logs, backups, keychain/keystore adapters | built-artifact inspection and authorized device filesystem observation | store privacy-label wording |
| Cryptography | platform APIs, algorithms, key creation and lifecycle, randomness | focused test vectors or artifact/runtime inspection | general code-style cleanup |
| Authentication | token/session lifecycle, reauthentication, biometrics, recovery | authorized account-boundary and replay tests | ordinary login usability |
| Authorization | server checks, object ownership, role boundaries, privileged actions | two-actor negative tests against authorized targets | broad API functional coverage |
| Network | endpoint configuration, cleartext settings, TLS overrides, trust callbacks | authorized traffic observation and server configuration evidence | complete E2E journey execution |
| Platform | exported surfaces, links, intents, URL schemes, WebViews, permissions, native bridges | platform-specific package and runtime tests | general mobile architecture |
| Code and supply chain | secrets, debug flags, unsafe parsing, dependency and signing evidence | SAST/SCA results reviewed for false positives, built artifacts, provenance | CI quality as a whole |
| Resilience | threat model and protected assets | justified anti-tamper and reverse-engineering tests | universal obfuscation requirements |
| Privacy security | access, minimization, retention enforcement, deletion mechanics | data-flow observation and deletion verification | App Store/Play declarations and legal conclusions |

## Official baselines

These sources are version-sensitive. Verify the current page, revision, and applicable platform version during every review.

- [OWASP MAS Checklist](https://mas.owasp.org/checklists/) maps MASVS control categories to current MASTG tests.
- [OWASP MASTG](https://mas.owasp.org/MASTG/) provides mobile security testing methods and limitations.
- [OWASP MASTG tests](https://mas.owasp.org/MASTG/tests/) provides focused observations and evaluation procedures.
- [Android security risks](https://developer.android.com/privacy-and-security/risks) organizes current Android risks around MASVS categories.
- [Android privacy checklist](https://developer.android.com/privacy-and-security/about) covers permission minimization, data access, and user control.
- [Apple Security framework](https://developer.apple.com/documentation/security/) covers platform security APIs, keychain, trust, and cryptography.
- [Apple App Transport Security](https://developer.apple.com/documentation/security/preventing-insecure-network-connections) covers secure network defaults and exceptions.
- [Apple privacy protection guidance](https://developer.apple.com/documentation/uikit/protecting-the-user-s-privacy) covers permission timing, minimization, storage, and transport.

The source list was checked on 2026-08-09. A later review must refresh it rather than treating this date as proof that requirements remain unchanged.
