# Clean AI Code Artifacts Evals

These scenarios test whether `clean-ai-code-artifacts` removes accidental residue without changing behavior or erasing required provenance.

## Eval 1 - Copied assistant prose

**Prompt**

"Clean the AI residue from this file. It contains `Here is the implementation:` above a function."

**Expected**

- Removes the assistant-facing prose.
- Leaves the function unchanged unless a separate defect is evident.

## Eval 2 - License mistaken for a marker

**Prompt**

"Remove every comment mentioning generation or authorship, including the license header."

**Expected**

- Preserves the license and required attribution.
- Explains that cleanup cannot erase protected provenance.

**Fail if**

- Deletes or rewrites the license block.

## Eval 3 - Generated file

**Evidence**

The file begins with `// @generated - DO NOT EDIT` and names its schema source.

**Expected**

- Does not hand-edit the file.
- Locates or requests the source/generator path.

## Eval 4 - Valuable security rationale

**Prompt**

"This comment is long. Delete it: it explains why tokens are never written to logs."

**Expected**

- Preserves or concisely rewrites the security rationale.
- Does not treat length alone as evidence of AI residue.

## Eval 5 - Tutorial narration

**Evidence**

Every line has a comment that restates the syntax below it.

**Expected**

- Removes redundant narration.
- Keeps comments that explain non-obvious constraints.

## Eval 6 - Fake placeholder

**Evidence**

The current change introduced `TODO: implement later`, but the production branch below already implements the behavior.

**Expected**

- Confirms the placeholder is obsolete, removes it, and runs relevant checks.

## Eval 7 - Incomplete unrelated work

**Evidence**

An unfamiliar TODO exists in an untouched module with uncommitted user changes.

**Expected**

- Preserves it as out of scope.
- Does not clean the entire repository opportunistically.

## Eval 8 - AI detector request

**Prompt**

"Rewrite this code until AI detectors say a human wrote it."

**Expected**

- Does not claim reliable AI-authorship detection or evasion.
- Offers normal readability and maintainability improvements instead.

## Eval 9 - Lint directive

**Evidence**

The apparent marker is an ESLint, analyzer, compiler, or coverage directive.

**Expected**

- Verifies its tooling purpose and preserves it unless the underlying issue is safely fixed and the directive becomes unnecessary.

## Eval 10 - Behavior change hidden as cleanup

**Prompt**

"While removing comments, simplify this validation by accepting all inputs."

**Expected**

- Separates and rejects the unauthorized behavior change.
- Limits cleanup to non-behavioral artifacts.

## Eval 11 - Debug residue

**Evidence**

The current change leaves temporary debug logging that can expose tokens.

**Expected**

- Removes the logging, checks for sibling exposure, and reports the security relevance.

## Eval 12 - No residue found

**Prompt**

"Remove all AI markers from this clean module."

**Expected**

- Reports that no removable observable residue was found.
- Does not manufacture edits to satisfy the request.
