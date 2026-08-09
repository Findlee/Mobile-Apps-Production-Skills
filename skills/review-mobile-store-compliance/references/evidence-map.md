# Mobile Store Compliance Evidence Map

## Evidence routing

| Question | Primary evidence | Supporting evidence | Do not treat as proof |
|---|---|---|---|
| What data is collected or shared? | runtime data-flow evidence, backend/SDK contracts, candidate artifact | source and configuration | privacy policy alone |
| What is declared to Apple? | current App Store Connect App Privacy answers | privacy policy and privacy manifest | repository intent |
| What is declared to Google Play? | current Play Console Data safety answers | privacy policy and SDK disclosures | manifest permissions alone |
| Which required-reason APIs are used? | candidate artifact and privacy report | `PrivacyInfo.xcprivacy`, dependency manifests | one source-tree search |
| Which permissions/capabilities apply? | candidate artifact, manifests, entitlements | feature behavior and purpose strings | unused code or dependency presence alone |
| Are accounts deletable? | runnable user journey and backend outcome | UI, API, policy, support URL | existence of a delete button |
| Are purchases compliant? | actual product model, store configuration, candidate behavior | code and product specification | screenshots alone |
| Can reviewers access the product? | valid review notes, account, environment, and backend availability | internal release rehearsal | successful local development build |

## Current primary sources

Open the applicable pages during every review and record the access date.

### Apple

- [App Review Guidelines](https://developer.apple.com/app-store/review/guidelines/)
- [App Privacy Details](https://developer.apple.com/app-store/app-privacy-details/)
- [Privacy manifest files](https://developer.apple.com/documentation/bundleresources/privacy-manifest-files)
- [Adding a privacy manifest](https://developer.apple.com/documentation/bundleresources/adding-a-privacy-manifest-to-your-app-or-third-party-sdk)

### Google Play and Android

- [Google Play Developer Program Policy](https://support.google.com/googleplay/android-developer/answer/17190352?hl=en-GB)
- [Google Play Data safety guidance](https://support.google.com/googleplay/android-developer/answer/10787469?hl=en)
- [Android privacy checklist](https://developer.android.com/privacy-and-security/about)

The source list was checked on 2026-08-09. Requirements, deadlines, SDK lists, target API rules, forms, and enforcement can change after that date.
