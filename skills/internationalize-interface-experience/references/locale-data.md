# Locale-aware data

Use maintained locale libraries and CLDR-derived data. Avoid hand-coded rules such as comma equals decimal separator for a fixed country list.

## Specify separately

- numbers and decimal/grouping symbols;
- currency display, rounding, and payment currency;
- dates, times, calendars, time zones, and daylight changes;
- relative time and week boundaries;
- units and conversions;
- personal names and respectful forms of address;
- postal addresses and sorting;
- phone numbers and country calling context;
- collation, case mapping, search normalization, and tokenization;
- identifiers, codes, version numbers, and machine-readable strings.

## Storage and display

Store canonical values with required context: timestamps with time-zone intent where needed, currency as amount plus ISO currency, units with quantity, and names in structured or user-preferred form only when the use justifies it. Localize at display/input boundaries.

Use an actively maintained source for country-specific address fields and validation; do not encode one country’s address structure as universal. For money, use ISO 4217 plus the payment provider’s current currency/minor-unit and rounding contract—locale formatting alone does not define charge precision.

## Input

Accept reasonable localized input and normalize safely. Show examples rather than forcing a mask that assumes one format. Preserve significant leading zeros and non-Latin digits where the domain allows them. Validate meaning, not only punctuation.

## Ambiguity

Avoid ambiguous short dates in consequential contexts. Show time zone when scheduling crosses zones. Distinguish currency conversion from display localization. Confirm irreversible or financial actions using a clear localized summary.

Treat taxes, invoices, consumer disclosures, address evidence, and payment regulation as separate market-specific legal/product requirements. Localization readiness cannot certify them.

## Sorting and search

Locale-sensitive collation can differ from binary order. Search may need diacritic, width, script, inflection, transliteration, or synonym handling. State which transformations are used and avoid corrupting exact identifiers.
