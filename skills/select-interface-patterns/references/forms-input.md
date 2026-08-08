# Forms and input patterns

Use this reference for data entry, choices, settings, search, and multi-step forms.

## Input strategy

- Ask only for information needed at the current stage.
- Accept common human variation and normalize it when meaning is unambiguous.
- Use constraints and appropriate input modes to prevent impossible values.
- Keep persistent labels and attach help, units, and errors to the field they describe.
- Preserve valid input after errors, navigation, and interruption.

## Text and structured input

### Forgiving input

Use for values people naturally express in several equivalent formats, such as phone numbers, dates, addresses, or search queries. Parse flexibly, show the interpreted value when consequential, and explain ambiguity.

### Structured input

Use separate fields or masks only when components have distinct meaning, validation, or navigation benefit. Avoid fragmenting input into many tiny fields without user value.

### Fill-in-the-blank or sentence form

Use for short, natural parameter entry when the sentence remains clear, localizable, and accessible. Avoid long or complex forms disguised as prose.

### Autocomplete and suggestions

Use for large known vocabularies or search-led selection. Distinguish suggestions from committed values, support keyboard and assistive technology, and allow valid novel input when the domain permits it.

## Choice controls

- Use radio buttons or a visible single-choice list when options are few and comparison matters.
- Use checkboxes for independent choices.
- Use a switch for an immediate binary setting whose effect is clear; use a checkbox for agreement or selection submitted later.
- Use dropdowns or pickers when space is constrained and options are familiar, but avoid hiding a short important set.
- Use searchable selection for long sets.
- Use steppers for small bounded numeric adjustments; allow direct entry for larger ranges.
- Use a list builder or transfer pattern when users compose an ordered or multi-selected set and need persistent overview.

## Defaults and prefills

- Use defaults for common, safe, reversible choices.
- Prefill known information while making the source and editability clear.
- Do not default users into payment, sharing, subscription, privacy loss, or destructive outcomes.
- Distinguish a suggestion from a confirmed value.

## Form structure

- Prefer a clear vertical reading and completion path on compact screens.
- Group related fields under descriptive headings.
- Match field size and input mode to expected content without relying on width as the only cue.
- Mark required or optional fields consistently according to the form's balance.
- Use progressive disclosure for conditional fields and preserve their values deliberately.

## Single page versus wizard

Use one page when users benefit from overview, comparison, and flexible order. Use a multi-step flow when there are true dependencies, distinct conceptual stages, or high cognitive load. A wizard must show progress, support safe backtracking, save work when valuable, and avoid artificial steps.

## Validation and errors

- Validate after the user has had a fair chance to complete the value.
- Use immediate validation when it prevents costly downstream work and the result is stable.
- Use submission validation for cross-field or server-dependent rules.
- Show errors inline and summarize multiple errors when the form is long.
- Explain the correction, preserve all valid data, and focus or link to the affected field.

No single validation timing is universally correct; select it from dependency, error cost, and interruption risk.
