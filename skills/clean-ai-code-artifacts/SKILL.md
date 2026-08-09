---
name: clean-ai-code-artifacts
description: Review and remove accidental residue from AI-assisted code changes, including assistant-facing prose, explicit AI-generation comments, tutorial narration, temporary scaffolding, fake placeholders, debug output, and redundant comments that merely restate code. Use when asked to clean AI markers, generated-code noise, copied chat text, or suspicious boilerplate after implementation or before review. Preserve licenses, copyright, required attribution, generated-file warnings, code-generation metadata, security rationale, public API documentation, lint or coverage directives, migration notes, and useful provenance. Do not use to conceal authorship, evade AI-detection or disclosure requirements, remove watermarks, or rewrite working code solely to make it appear human-authored.
---

# Clean AI Code Artifacts

Remove accidental generation residue without erasing required provenance or changing behavior. Treat every candidate as a code-quality decision, not as proof that AI wrote the code.

## Establish the contract

1. Identify the files and change set in scope. Prefer the current task diff over a repository-wide cleanup.
2. Determine whether the user requested review only or authorized edits.
3. Record the required checks, repository conventions, generated-file boundaries, and protected notices.
4. Separate residue cleanup from behavior changes and broad refactoring.

Do not claim to detect AI authorship from style. Inspect only observable artifacts and their value to maintainers.

## Preserve a safety baseline

1. Inspect repository instructions, licenses, generators, lint configuration, and nearby conventions.
2. Run the smallest relevant tests, type checks, or lint checks before editing when practical.
3. Avoid hand-editing generated files when a source template or generator owns them.
4. Preserve unrelated user changes and record anything that cannot be verified.

## Classify every candidate

Read [artifact-classification.md](references/artifact-classification.md) before a substantial cleanup. Classify each candidate as:

- **Remove** - accidental assistant prose, explicit AI chatter, temporary debug residue, valueless narration, or abandoned scaffolding;
- **Rewrite** - a useful idea expressed as verbose tutorial commentary or an unclear placeholder;
- **Preserve** - required provenance, tooling metadata, rationale, contract documentation, or a useful maintenance warning;
- **Investigate** - ownership or purpose is uncertain.

Never delete an `Investigate` item merely because it resembles generated text.

## Clean the smallest coherent scope

1. Delete unmistakable assistant-facing text and temporary generation residue.
2. Replace comments that narrate syntax with names or structure that make the code self-explanatory.
3. Keep comments that explain constraints, intent, trade-offs, non-obvious behavior, security, compatibility, or external contracts.
4. Remove placeholder branches, fake data, debug logging, unused imports, or dead helpers only after confirming they are not required by tests, examples, build tooling, or incomplete authorized work.
5. Avoid broad formatting, speculative redesign, or unrelated cleanup.

Use `$refactor-safely` when cleanup requires structural changes. Use `$qa-write-maintainable-tests` when the residue is concentrated in tests. Read [protected-provenance.md](references/protected-provenance.md) whenever licenses, generated files, external code, attribution, or compliance may be involved.

## Verify behavior and provenance

1. Inspect the final diff for accidental semantic changes and lost notices.
2. Run formatting, lint, type checks, and the smallest relevant tests, widening verification with risk.
3. Search the changed files again for the targeted residue.
4. Confirm that protected comments, generated-file boundaries, and attribution remain intact.
5. Report checks not run and residual uncertainty instead of claiming a clean result without evidence.

## Deliver the result

Report:

1. scope reviewed;
2. artifacts removed, rewritten, preserved, and left for investigation;
3. any structural simplification performed through a separate refactoring step;
4. verification commands and observed results;
5. remaining risks or decisions.

Do not produce an "AI-free" certification. State only what observable residue was reviewed and changed.
