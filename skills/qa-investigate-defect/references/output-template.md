# Defect investigation and report template

## Summary

**[Affected condition] causes [failure] resulting in [user/business consequence].**

## Observed and expected behavior

- Observed:
- Expected and oracle/source:
- First observed time:
- Frequency/sample:
- Impact and affected scope:
- Workaround/recovery:

## Environment and evidence

- Build/commit/version/configuration:
- Device/host/runtime/region/network:
- Account/data/state identifiers:
- Correlation, request, trace, job, or crash IDs:
- Logs, traces, screenshots, video, dumps, and artifact locations:
- Evidence redaction or retention limits:

## Minimal reproduction

1. Preconditions and state:
2. Exact actions or request:
3. Failure observation:

Include reproducibility and known passing variants. If deterministic reproduction is unavailable, describe the triggering pattern and capture needed next.

## Investigation record

| Hypothesis | Supporting evidence | Contradictory evidence | Experiment/result | Confidence |
|---|---|---|---|---|
| ... | ... | ... | ... | Low / medium / high / confirmed |

State the earliest trustworthy divergence and current classification: product, test, environment, data, dependency, oracle/observability, or unknown.

## Severity and priority factors

- Severity rationale:
- Priority factors:
- Security/privacy/data integrity implications:
- Related or sibling risks:

## Root cause or current conclusion

Separate confirmed mechanism from inference. Name missing evidence and competing explanations.

## Fix confirmation

- Unfixed baseline evidence:
- Fixed version and original-condition result:
- Focused regression performed:
- Status: confirmed / partial / not reproduced / blocked.
- Residual risk:
