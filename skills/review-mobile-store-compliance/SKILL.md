---
name: review-mobile-store-compliance
description: Perform an evidence-based, read-only review of an iOS or Android application's readiness for App Store or Google Play submission. Use to compare the current binary, manifests, permissions, SDKs, data flows, privacy declarations, account and subscription behavior, store metadata, review notes, and policy-sensitive features with current official store requirements. Verify live primary sources during every review and do not claim legal approval or guaranteed acceptance.
---

# Review Mobile Store Compliance

Review whether the submitted product evidence and store declarations agree with the application's actual behavior. Treat policies as version-sensitive and store acceptance as a decision made by Apple or Google, not by this review.

## Own the declaration and policy question

Own store-policy applicability, declaration consistency, submission evidence, and likely review blockers. Do not take ownership of:

- ordinary feature correctness or E2E execution;
- vulnerability assessment or penetration testing;
- general mobile architecture and build quality;
- UX quality except policy-sensitive consent, purchase, account, or deceptive behavior;
- legal compliance or guaranteed store approval.

Use security, E2E, UX, mobile-engineering, and release reports as inputs. Do not rerun their checks unless one narrow observation is required to compare actual behavior with a declaration.

## Establish the submission contract

1. Record review date, app version and build, bundle or package ID, target stores, countries, audience, monetization, account model, and policy-sensitive features.
2. Identify the exact candidate artifact when available. Distinguish repository intent from compiled behavior.
3. Inventory store listing data, privacy policy, support and deletion URLs, App Privacy answers, Data safety answers, content rating, screenshots, review notes, entitlements, permissions, privacy manifest, and SDK declarations.
4. Record unavailable App Store Connect or Play Console evidence as `UNKNOWN`; do not infer answers from source code alone.
5. Read [evidence-map.md](references/evidence-map.md), open the current official policy pages, and record the URLs and access date used for every material requirement.

## Build the behavior-to-declaration matrix

Trace each data type, permission, SDK, account action, purchase, user-generated-content surface, regulated capability, and external service across:

`feature -> runtime behavior -> transmitted/stored data -> third party -> user disclosure/consent -> store declaration -> deletion/retention path`

Classify each row:

- `MATCH` — inspected evidence supports agreement;
- `CONFIRMED GAP` — declaration, artifact, or behavior demonstrably conflicts with a current requirement;
- `POTENTIAL GAP` — evidence suggests a conflict but runtime or console evidence is missing;
- `UNKNOWN` — required evidence is unavailable;
- `NOT APPLICABLE` — the requirement does not apply to this submission.

Do not use a missing file as proof of a violation until applicability is established.

## Review the relevant surfaces

### Apple

- current App Review Guidelines and policy-sensitive feature rules;
- App Privacy details and privacy-policy consistency;
- `PrivacyInfo.xcprivacy`, collected-data declarations, required-reason APIs, and applicable third-party SDK manifests;
- purpose strings, entitlements, capabilities, tracking and consent behavior;
- account creation and deletion, sign-in options, subscriptions, purchases, restoration, and review access;
- metadata, screenshots, support information, content rating, and review notes.

### Google Play

- current Developer Program Policies and applicable declarations;
- Data safety answers, privacy-policy consistency, SDK data handling, encryption and deletion statements;
- permissions and APIs that access sensitive information;
- account creation and deletion, subscriptions, billing, ads, user-generated content, target audience, and review access;
- listing metadata, content rating, testing track, release status, and policy notices.

Review only surfaces present in the product. Route an actual security weakness to mobile security, a broken journey to feature or E2E testing, build/signing readiness to `prepare-mobile-release`, and usability concerns without a policy consequence to experience review.

## Handle version-sensitive requirements

- Prefer Apple Developer, App Store Connect Help, Android Developers, and Play Console Help or Policy Center.
- Do not rely on remembered deadlines, blog posts, screenshots, or cached summaries when a current primary source is available.
- Record source title, URL, access date, applicable platform or program, and the interpretation used.
- Label ambiguous policy language and request a store or qualified legal decision when needed.
- Never claim that passing this review guarantees acceptance or establishes legal compliance.

## Deliver the review

Return:

1. conditional submission verdict: `READY`, `READY WITH RESIDUAL RISK`, `NOT READY`, or `BLOCKED`;
2. reviewed build, stores, regions, evidence, and limitations;
3. current-source register with access dates;
4. behavior-to-declaration matrix;
5. deduplicated blockers and risks with exact evidence and policy basis;
6. required console, metadata, artifact, product, or policy actions;
7. validation owner and evidence needed to close each item;
8. specialist handoffs and unreviewed risk.

Keep the report actionable and avoid reproducing sensitive console data.
