# Trust and statistical checks

## Analyze trust before effects

1. Verify variant configuration, randomization, and assignment persistence.
2. Check sample-ratio mismatch against planned allocation.
3. Verify eligibility, triggering, exposure, and outcome join rates.
4. Check duplicates, bots/internal traffic, attrition, missingness, and timestamp anomalies.
5. Inspect pre-treatment balance and invariant metrics.
6. Investigate contamination, interference, carryover, and cross-device identity.
7. Confirm analysis matches the frozen design and estimand.

An unexplained sample-ratio mismatch or broken exposure log can invalidate the result. Do not “fix” it by deleting inconvenient observations without a causal justification.

## Interpretation

Report effect estimate, uncertainty interval, baseline, relative and absolute change where useful, sample and unit, analysis method, guardrails, and practical threshold. Statistical detectability is not the same as product importance; lack of significance is not proof of equivalence.

## Common traps

- correlation presented as causation;
- repeated peeking and optional stopping;
- testing many metrics/segments and reporting only winners;
- Simpson’s paradox from aggregation or changing mix;
- novelty, learning, primacy, seasonality, day-of-week, and carryover effects;
- dependence between units and network effects;
- dilution from non-exposed units or biased post-treatment triggering;
- confidence interval misread as probability that the fixed effect lies inside;
- a large sample making a trivial effect look compelling.

## Surprising results

Apply Twyman’s-law discipline: first suspect instrumentation, assignment, definition, implementation, or analysis. Reproduce the metric, inspect raw event paths, verify treatment exposure, and seek a coherent mechanism before action.

## Escalate

Bring in a statistician for complex sequential designs, clustered or network randomization, heavy-tailed metrics, ratio-metric variance, heterogeneous treatment claims, non-inferiority/equivalence, missing-not-at-random data, or high-stakes decisions.
