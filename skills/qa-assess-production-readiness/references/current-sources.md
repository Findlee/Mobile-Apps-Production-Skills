# Current primary sources for production readiness

These sources supplement the durable resilience patterns distilled from the supplied books. Browse the relevant primary source when an assessment depends on current terminology, signal support, or specific guidance. Record the access date or relevant version.

- Google Site Reliability Engineering books: https://sre.google/books/
- Google SRE chapter on service level objectives: https://sre.google/sre-book/service-level-objectives/
- Google SRE chapter on monitoring distributed systems: https://sre.google/sre-book/monitoring-distributed-systems/
- Google SRE chapter on handling overload: https://sre.google/sre-book/handling-overload/
- Google SRE chapter on cascading failures: https://sre.google/sre-book/addressing-cascading-failures/
- OpenTelemetry observability primer: https://opentelemetry.io/docs/concepts/observability-primer/
- OpenTelemetry signal documentation: https://opentelemetry.io/docs/concepts/signals/

## Interpretation rules

- Use the user's approved service objectives and operational policies. External examples are not default thresholds.
- Treat SLI, SLO, error-budget, telemetry, and alerting guidance as models to adapt, not universal release gates.
- Verify tool-specific signal behavior in that tool's official documentation; OpenTelemetry documents a vendor-neutral model, not every backend's capabilities.
- If an older book and a current primary source differ on a versioned fact, preserve the book's durable failure-thinking principle and follow the current source for the versioned detail.
- Label recommendations, inferred risks, and organization-specific policy separately from documented facts.
