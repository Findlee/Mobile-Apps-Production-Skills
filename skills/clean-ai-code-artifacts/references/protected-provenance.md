# Protected Provenance and Markers

Read this reference before changing files that may be generated, vendored, licensed, regulated, or consumed by tooling.

## Never remove automatically

- SPDX identifiers, license blocks, copyright notices, and required attribution;
- third-party source notices and modification statements;
- `@generated`, `generated code`, `DO NOT EDIT`, generator command, version, schema hash, or source-file references;
- source maps, migration metadata, serialization identifiers, API-generation annotations, and database headers;
- lint, formatter, compiler, type-checker, coverage, and test-runner directives;
- security-review annotations, threat mitigations, privacy explanations, and audit references;
- accessibility, localization, backward-compatibility, and platform-workaround rationale;
- authorship or AI-use disclosure required by a client, employer, educational institution, repository, contract, or law.

## Do not edit generated output by hand

When a file identifies a generator or authoritative source:

1. locate the source template, schema, or generator configuration;
2. make an authorized change at the source when appropriate;
3. regenerate through the documented command;
4. verify that regeneration is deterministic enough for the project;
5. keep the generated warning intact.

If the generator is unavailable, report the blocker. Do not silently convert generated output into hand-maintained code.

## External and vendored code

Avoid cosmetic cleanup in vendored dependencies, copied standards, fixtures that intentionally mirror external payloads, or examples used for conformance. Confirm ownership and update policy first.

## Disclosure boundary

Removing accidental conversational residue is code cleanup. Removing required disclosure or deliberately disguising authorship is not. Refuse the latter request and preserve the evidence needed for compliance.
