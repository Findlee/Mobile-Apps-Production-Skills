# Enforcement Options

Choose the lowest-cost mechanism that reliably protects the boundary.

## Language visibility

Use private/internal/package visibility and restricted constructors. Publish only caller-facing contracts. This gives immediate feedback and usually costs least.

## Package or build modules

Separate source sets, packages, modules, targets, or assemblies so forbidden imports fail during compilation. Account for build configuration and dependency-version overhead.

## Static dependency rules

Use import restrictions, lint rules, dependency graph checks, or architecture tests when the language cannot express the rule. Keep rules semantic and stable; avoid brittle path patterns where possible.

## Runtime boundaries

Processes and services enforce deployment/data isolation but introduce network and operational costs. Do not distribute solely to obtain source-code modularity.

## Review and documentation

Use ADRs and code review for nuanced rules that cannot yet be automated. Give each rule an owner, rationale, examples, and an escalation path. Documentation alone is weakest for simple mechanically enforceable rules.

## Fitness check

For each rule define scope, allowed direction, detection method, failure response, and exception mechanism. Test the rule with one intentional violation before trusting it.

Conceptual lineage: implementation architecture and fitness functions.
