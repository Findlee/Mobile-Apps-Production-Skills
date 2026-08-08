# Language and localizable content

## String contract

For each message provide:

- stable key and full source text;
- purpose and triggering state;
- screenshot or UI location;
- audience and tone;
- named variables with examples and data types;
- plural/select behavior;
- whether it is spoken by assistive technology;
- true technical limits and what happens on overflow;
- terminology links and prohibited ambiguity.

## Writing rules

- Write complete thoughts; avoid concatenated fragments and positional grammar.
- Keep one concept under one key unless variants have genuinely different meaning.
- Avoid embedding punctuation, spaces, word order, or noun forms around variables in code.
- Use concrete, plain language that survives cultural and grammatical variation.
- Treat icons, images, emoji, color, examples, names, and metaphors as localizable content when meaning can vary.
- Never truncate a translation merely to preserve the source layout for an essential action.

## Variables

Use named placeholders such as `{fileName}` rather than numbered slots. Give translators the full sentence and examples. Escape or sanitize user content separately from translation. Do not force variable order.

## Terminology

Maintain approved domain terms with definition, context, part of speech, variants, and deprecated alternatives. Product naming consistency matters, but local clarity can justify a different expression; record the decision.

## AI-generated content

Specify requested language, locale, tone, script, formatting, and fallback. Label uncertainty and machine generation where it matters. Do not assume the model’s language fluency is linguistic QA.
