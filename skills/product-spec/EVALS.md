# Product Spec Evals

These scenarios test whether `product-spec` produces a concise, implementation-ready behavioral contract rather than a bloated PRD, a feature list, or an accidental technical architecture document.

Each eval includes expected behavior and failure conditions.

## Eval 1 - Feature list is not a spec

**Prompt**

"Spec this: login, profile, notifications, AI chat, settings."

**Expected**

- Does not pretend the list explains product behavior.
- Requests/derives target user, outcome, scope, and end-to-end journey before detailed requirements.

**Fail if**

- Expands each noun into arbitrary screens/features and calls it implementation-ready.

## Eval 2 - Detailed PRD cannot validate an idea

**Prompt**

"Write a very detailed PRD so we can be confident users will want this feature."

**Expected**

- States that detail does not create evidence.
- Separates specification from desirability validation.
- Routes to discovery/experiment if desirability remains material.

## Eval 3 - Unknown problem

**Prompt**

"Write a full spec for an AI coach. We don't know yet why users need it."

**Expected**

- Does not invent the customer problem.
- Routes to discovery/research first or marks the artifact as hypothesis/draft.

## Eval 4 - Scope unresolved

**Prompt**

"Spec our social feature. We haven't decided whether V1 includes DMs, groups, feeds, followers, or profiles."

**Expected**

- Routes to `mvp-scope` rather than arbitrarily choosing a V1.

## Eval 5 - Small text change

**Prompt**

"Change the CTA from 'Continue' to 'Start free trial'. No other behavior changes."

**Expected**

- Produces a micro spec, not a 15-section PRD.
- Notes analytics only if naming/semantics are affected.

## Eval 6 - Delta spec

**Evidence**

Current deletion is immediate. New product decision is a 30-day recovery window.

**Expected**

- Explicitly states current vs target behavior.
- Covers account state, sign-in behavior, recovery, permanent deletion, data semantics, copy, analytics, migration if relevant.

**Fail if**

- Rewrites generic account-management requirements without defining the behavioral delta.

## Eval 7 - Existing product context

**Prompt**

"Add a second premium tier to this existing subscription system."

**Expected**

- Inspects/asks for current entitlement, renewal, upgrade/downgrade, restore, grace-period, and analytics behavior before inventing new semantics.

## Eval 8 - Technical architecture disguised as requirement

**Prompt**

"PRD requirement: use Kafka and microservices because the app may scale."

**Expected**

- Separates speculative architecture from product requirements.
- Keeps only validated scale/latency/reliability constraints at the product level.

## Eval 9 - Real technical constraint

**Evidence**

Platform provider guarantees only 10 requests/sec and exceeding it blocks the account.

**Expected**

- Records this as a real external/technical constraint because it affects product behavior/feasibility.

## Eval 10 - Full UX cannot be inferred from prose

**Prompt**

"The flow is interaction-heavy but we have no design. Write the final implementation-ready spec anyway."

**Expected**

- Can define product intent/rules but marks `READY FOR UX / DESIGN RESOLUTION`, not ready for implementation if major interaction behavior remains ambiguous.

## Eval 11 - High-fidelity artifact exists

**Evidence**

Approved interactive prototype covers core flow.

**Expected**

- Treats it as an authoritative interaction artifact.
- Supplements missing business rules, states, failures, analytics, and quality constraints instead of duplicating every pixel in prose.

## Eval 12 - Figma conflicts with PRD

**Evidence**

Figma shows immediate deletion; written rule says recoverable deletion.

**Expected**

- Flags source conflict.
- Does not silently choose one.
- Blocks implementation if behavior is high-impact.

## Eval 13 - Slack decision conflicts with current spec

**Prompt**

"We decided in chat yesterday to change the entitlement rule."

**Expected**

- Requires updating the authoritative spec/decision log.
- Does not leave chat as the only source of truth.

## Eval 14 - End-to-end journey first

**Prompt**

"Write 50 requirements for checkout."

**Expected**

- First models trigger -> checkout -> payment -> order confirmation/recovery.
- Organizes requirements around user behavior, states, and rules.

## Eval 15 - Backend-only requirements

**Prompt**

"The spec currently has API endpoints and DB tables but no user behavior. Is that enough?"

**Expected**

- Says no for a product spec.
- Distinguishes product behavior from technical design.

## Eval 16 - Observable requirement

**Bad requirement**

"Implement robust upload."

**Expected**

- Rewrites into observable behavior including progress/result/failure/retry where relevant.

## Eval 17 - Vague quality adjective

**Requirement**

"Search should be fast."

**Expected**

- Does not invent 200ms.
- Requests/derives context or marks performance threshold unresolved.

## Eval 18 - User-friendly

**Requirement**

"The UI must be intuitive."

**Expected**

- Rejects as non-testable.
- Reframes around task success/interaction behavior or validation requirement.

## Eval 19 - State model required

**Feature**

Subscription lifecycle with trial, paid, grace period, expired, canceled.

**Expected**

- Uses explicit states/transitions.
- Defines access behavior for each material state.

## Eval 20 - Invented lifecycle state

**Prompt**

"Add five internal states so the design looks cleaner."

**Expected**

- Does not add product states for architecture aesthetics unless they affect product semantics.

## Eval 21 - Permission matrix

**Feature**

Workspace has Viewer, Editor, Owner.

**Expected**

- Uses actor/permission matrix when appropriate.
- Covers destructive/ownership actions explicitly.

## Eval 22 - Only owner deletion

**Prompt**

"Can any workspace member delete it? Decide whatever is easiest."

**Expected**

- Treats permission as a product decision, not an engineering convenience.

## Eval 23 - Money rule cannot be invented

**Prompt**

"If upgrade happens mid-cycle, choose any proration behavior and implement it."

**Expected**

- Blocks/surfaces pricing/billing rule rather than inventing it.

## Eval 24 - Failed payment

**Prompt**

"Spec payment."

**Expected**

- Includes critical failure/recovery and duplicate-charge/data-integrity semantics.
- Does not stop at happy path.

## Eval 25 - Retry safety

**Evidence**

Payment request can time out after provider may already have charged.

**Expected**

- Explicitly defines safe user-visible retry/uncertain-state behavior or marks as blocker.

## Eval 26 - Upload interrupted

**Prompt**

"User backgrounds the app during a 5-minute upload."

**Expected**

- Evaluates whether this state is material and defines preserve/retry/resume behavior if required.

## Eval 27 - Infinite edge cases

**Prompt**

"List every possible edge case for this form."

**Expected**

- Prioritizes by likelihood/consequence/trust instead of creating an unbounded encyclopedia.

## Eval 28 - Severe rare edge case

**Evidence**

0.1% path can expose another user's private document.

**Expected**

- Treats as critical despite low probability.

## Eval 29 - Cosmetic rare edge case

**Evidence**

0.1% chance avatar corner radius is briefly wrong.

**Expected**

- Does not elevate to release-blocking product requirement by default.

## Eval 30 - Empty state

**Feature**

Saved reports page.

**Expected**

- Defines first-use/empty state and useful next action if it matters to completing the job.

## Eval 31 - Loading state

**Feature**

AI generation takes 15-30 seconds.

**Expected**

- Defines user-visible processing/cancel/retry/background behavior as applicable.

## Eval 32 - Exact copy required

**Feature**

Irreversible purchase or legal consent.

**Expected**

- Treats exact wording/source as part of the spec when wording is legally or behaviorally critical.

## Eval 33 - Exact copy not required

**Feature**

Non-critical empty-state helper text.

**Expected**

- Can specify content intent rather than prematurely locking arbitrary wording.

## Eval 34 - No-go boundary

**Evidence**

V1 payment form intentionally excludes WYSIWYG customization.

**Expected**

- Records explicit no-go to prevent implementation-agent scope expansion.

## Eval 35 - Cheap scope creep

**Prompt**

"Since you're adding a profile, add themes and notification preferences too."

**Expected**

- Keeps approved scope; cheap/adjacent does not equal required.

## Eval 36 - Hidden dependency discovered

**Evidence**

Core share flow cannot work without recipient identity resolution.

**Expected**

- Classifies as discovered enabling dependency and updates scope explicitly if truly required.

## Eval 37 - Fake dependency

**Prompt**

"Engineering wants a full admin portal before release just in case support needs it."

**Expected**

- Requests evidence/actual operational need.
- Does not silently add it to product scope.

## Eval 38 - Rabbit hole timezone

**Feature**

Scheduling across user timezones.

**Expected**

- Surfaces timezone/DST semantics before implementation if they affect expected behavior.

## Eval 39 - Rabbit hole refund

**Feature**

Partial refund capability.

**Expected**

- Identifies proration, taxes, entitlement, ledger/receipt, and user-state semantics as product/business rabbit holes rather than saying "implement refund button."

## Eval 40 - Analytics attempt vs completion

**Feature**

File export is asynchronous.

**Expected**

- Separates export requested/started/succeeded/failed if needed.
- Does not fire `export_completed` on button click.

## Eval 41 - Generic analytics event

**Prompt**

"Track `button_clicked` for everything."

**Expected**

- Prefers semantic event contracts tied to decisions/outcomes.

## Eval 42 - Analytics taxonomy unavailable

**Prompt**

"Invent all analytics names for our company."

**Expected**

- If naming convention is unknown, defines semantic events/properties and marks naming alignment needed rather than creating random permanent conventions.

## Eval 43 - Experiment treatment

**Feature**

Limited onboarding variant.

**Expected**

- Includes eligibility, exposure/assignment semantics, instrumentation, no-go duration/cleanup, and rollback where material.

## Eval 44 - Disposable experiment code

**Prompt**

"Build a fake-door experiment as production architecture for all future feature launches."

**Expected**

- Distinguishes disposable/limited experiment from durable architecture unless broader infrastructure is explicitly approved.

## Eval 45 - AI output is probabilistic

**Feature**

AI summarizes legal contracts.

**Expected**

- Does not spec "always accurate."
- Defines product-level output purpose, limitations, unacceptable outputs, user confirmation/escalation, and measurement needs based on risk.

## Eval 46 - AI action boundary

**Feature**

AI drafts and sends emails.

**Prompt**

"Let it send automatically if easier."

**Expected**

- Treats draft/preview/execute/confirmation autonomy as an explicit product/safety decision.

## Eval 47 - AI provider outage

**Feature**

Core AI feature depends on provider API.

**Expected**

- Defines user-visible unavailable/fallback/retry behavior if material.

## Eval 48 - AI low confidence

**Prompt**

"What happens when the model isn't sure?"

**Expected**

- Requires product behavior decision rather than assuming hallucinate, hide, or block.

## Eval 49 - AI memory creep

**Prompt**

"While adding AI chat, also add long-term memory because users may want it later."

**Expected**

- Keeps memory out unless approved; recognizes privacy/scope implications.

## Eval 50 - Destructive AI tool action

**Feature**

Agent can delete cloud files.

**Expected**

- Explicitly defines authorization/confirmation/recovery/audit semantics; coding agent cannot infer autonomy.

## Eval 51 - Acceptance criteria duplicate everything

**Prompt**

"Turn all 80 requirements into 80 Given/When/Then cases."

**Expected**

- Uses acceptance criteria selectively for material behavior/rules rather than duplicating the entire spec.

## Eval 52 - Acceptance criteria reveal missing data

**Feature**

Recommendation depends on user history.

**Expected**

- When defining demonstration/confirmation, notices realistic user history/test data is required.

## Eval 53 - QA internal implementation assertion

**Requirement**

"Test passes if class X calls function Y."

**Expected**

- Keeps product acceptance focused on observable behavior unless this is explicitly a technical-design/test requirement.

## Eval 54 - Unknown performance threshold

**Prompt**

"Set a good latency SLA for AI responses."

**Expected**

- Does not invent a universal threshold without product/user/technical context.
- Can flag latency as a material requirement needing data/decision.

## Eval 55 - Known platform support constraint

**Evidence**

Release officially supports iOS 18+ only.

**Expected**

- Records supported environment as product/release constraint.

## Eval 56 - Premature future compatibility

**Prompt**

"Spec Windows, web, iOS, Android, TV interfaces so future expansion is easy. Current V1 is iOS only."

**Expected**

- Keeps unapproved future platforms outside current spec.

## Eval 57 - Blocker question

**Question**

"Does removing a member delete or preserve their shared content?"

**Expected**

- Flags as product-semantic blocker if implementation depends on it.
- Coding agent must not choose silently.

## Eval 58 - Pure engineering decision

**Question**

"Should this helper be a class or a pure function?"

**Expected**

- Leaves to engineering/coding agent if no product behavior changes.

## Eval 59 - Technical constraint changes product option

**Evidence**

Approved real-time collaboration cannot meet required reliability with available provider/time.

**Expected**

- Returns to product/design/engineering trade-off.
- Does not silently implement delayed synchronization and claim the spec is satisfied.

## Eval 60 - Design discovered after coding starts

**Evidence**

Implementation reveals a major navigation decision not in the spec.

**Expected**

- Classifies as product/UX decision and surfaces it.
- Does not allow the coding agent to permanently decide based on convenience.

## Eval 61 - Material spec change

**Prompt**

"We changed upgrade rules halfway through implementation."

**Expected**

- Updates authoritative behavior/rules/acceptance/analytics implications and records reason.

## Eval 62 - Minor spec clarification

**Prompt**

"Clarify an error message without changing behavior."

**Expected**

- Does not trigger full rescoping/rediscovery.
- Updates the relevant artifact only.

## Eval 63 - Shipped is not done

**Prompt**

"Feature is live, so remove success metrics from the spec."

**Expected**

- Preserves post-launch validation for material feature/outcome.

## Eval 64 - Mandated platform requirement

**Prompt**

"Platform requires account deletion. Write the spec."

**Expected**

- Treats existence as mandated.
- Focuses on affected account/data lifecycle, confirmation, recovery if allowed, entitlements, analytics, and compliance source rather than rediscovering demand.

## Eval 65 - Legal source unknown

**Prompt**

"I heard data must be deleted in exactly 7 days. Put it in the requirements."

**Expected**

- Does not convert hearsay into a legal requirement.
- Requests authoritative source/owner.

## Eval 66 - Buyer and user differ

**Feature**

B2B approval workflow where manager buys and employee uses.

**Expected**

- Models relevant actors and their different behavior/permissions/outcomes.

## Eval 67 - Marketplace two-sided state

**Feature**

Booking requires buyer request and seller acceptance.

**Expected**

- Models shared booking state and cross-actor transitions.
- Does not write independent buyer/seller feature lists with inconsistent state.

## Eval 68 - Current and target analytics differ

**Evidence**

Existing `purchase` event fires before payment success.

**Expected**

- Flags current semantic bug and defines corrected target behavior/migration impact rather than copying the existing event blindly.

## Eval 69 - Existing naming convention

**Evidence**

Repository uses snake_case semantic events and standard `screen_name`, `source`, `plan_id` properties.

**Expected**

- Reuses conventions instead of inventing a parallel taxonomy.

## Eval 70 - Existing behavior should remain unchanged

**Feature**

Add filtering to search results.

**Expected**

- Specifies relevant preserved search/query/navigation behavior so implementation does not accidentally redesign unrelated search semantics.

## Eval 71 - Source conflict code vs docs

**Evidence**

Docs say trials last 7 days; production code/config says 14.

**Expected**

- Flags conflict and seeks authoritative current product policy before writing target rules.

## Eval 72 - Out-of-scope isn't optional suggestion

**Prompt**

"No-gos are just suggestions; Codex can add them if easy."

**Expected**

- Treats explicit no-gos as hard product boundaries until changed by a product decision.

## Eval 73 - Spec too long

**Prompt**

"This one-field validation change has a 40-page PRD template. Fill every section."

**Expected**

- Uses proportional rigor/micro spec.

## Eval 74 - Complex product needs tables/diagrams

**Feature**

Subscription + family sharing + child permissions + grace period.

**Expected**

- Uses state/permission/rule representations instead of relying only on paragraphs.

## Eval 75 - Over-specified visual layout

**Prompt**

"We haven't designed it. Pick exact margins, colors, animation durations, and component positions so engineering can start."

**Expected**

- Does not invent settled visual product decisions solely to unblock engineering.
- Marks UX/design resolution required unless these details are immaterial/handled by existing design system.

## Eval 76 - Existing design system makes visual detail non-blocking

**Evidence**

New confirmation dialog follows an established component/pattern with no new interaction behavior.

**Expected**

- Can reference existing pattern rather than requiring a bespoke high-fidelity design.

## Eval 77 - Product invariant

**Feature**

Transfer money.

**Expected**

- Captures invariants such as no double transfer / clear terminal state / authorization as relevant.

## Eval 78 - Rollback matters

**Feature**

New ranking algorithm rolled to 10% of users.

**Expected**

- Includes eligibility/rollout/guardrails/rollback if this is part of release behavior.

## Eval 79 - Rollback irrelevant

**Feature**

Static legal copy correction.

**Expected**

- Does not add elaborate feature-flag/rollback machinery without reason.

## Eval 80 - Ready-for-implementation gate

**Evidence**

Scope is clear, design approved, business rules resolved, critical states defined, analytics known, no blockers.

**Expected**

- Marks `READY FOR IMPLEMENTATION` and produces compact coding-agent handoff.

## Eval 81 - Not ready for implementation

**Evidence**

No decision on whether canceled subscriptions retain access until period end.

**Expected**

- Marks blocked or draft depending impact.
- Does not allow coding agent to infer the rule.

## Eval 82 - Coding agent adds adjacent settings

**Prompt**

"While implementing notifications, Codex added a full notification settings page."

**Expected**

- Flags scope expansion unless settings were explicitly required.

## Eval 83 - Coding agent refactors internals

**Prompt**

"Codex refactored internal notification service but product behavior is unchanged."

**Expected**

- Does not require product approval solely for internal implementation structure unless risk/constraint warrants it.

## Eval 84 - Coding agent changes product semantics to simplify code

**Prompt**

"To simplify implementation, Codex makes failed payments cancel the entire order rather than allowing retry."

**Expected**

- Rejects silent product-semantic change.

## Eval 85 - Product spec from a user story only

**Input**

"As a user, I want to export my data so I can keep a copy."

**Expected**

- Uses story as intent, then resolves format/scope/states/rules/security/delivery/measurement as required.
- Does not claim the one sentence is complete specification.

## Eval 86 - Story conversation value

**Prompt**

"Make the user story wording perfect so the developer cannot misunderstand anything without talking to us."

**Expected**

- Rejects the premise that perfect wording replaces shared understanding for material work.

## Eval 87 - Confirmation reveals a hole

**Feature**

"Admin can export all invoices."

**Acceptance discussion**

How do we demonstrate with 100k invoices and permissions?

**Expected**

- Uses confirmation discussion to expose realistic-data/permission/performance requirements if material.

## Eval 88 - Interaction prototype has backend fake

**Evidence**

Prototype simulates recommendations with static data.

**Expected**

- Accepts this for UX/value validation if declared.
- Does not mistake prototype backend behavior for production data/feasibility specification.

## Eval 89 - Prototype code becomes production by accident

**Prompt**

"Use the quick prototype directly as production because it already works."

**Expected**

- Distinguishes validated product behavior from disposable prototype implementation quality.
- Routes technical readiness separately.

## Eval 90 - Final output proportionality

**Prompt**

"Spec a new end-to-end marketplace payment and dispute workflow."

**Expected**

- Uses full/state-heavy/multi-actor artifact because complexity warrants it.
- Does not respond with a five-bullet micro spec.
