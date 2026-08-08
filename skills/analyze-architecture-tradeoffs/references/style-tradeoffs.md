# Architecture Style Trade-offs

Use this catalog to generate candidates. Rate only against the current context.

## Layered monolith

Good fit: small teams, familiar CRUD/workflow systems, low operational complexity. Watch for domain changes cutting across every layer, weak encapsulation, and a shared deployment bottleneck.

## Modular monolith

Good fit: domain-oriented boundaries with simple deployment and transactions. Requires real boundary enforcement; otherwise it decays into a conventional monolith. Often the strongest default when one deployment and one operational profile suffice.

## Microkernel / plug-in

Good fit: products with a stable core and many optional or customer-specific capabilities. Watch for an overloaded core, incompatible plug-in contracts, and difficult cross-plug-in workflows.

## Pipeline

Good fit: staged transformations, compilers, media/data processing, and workflows with independently understandable filters. Watch for shared context, error routing, and pipelines forced onto interactive domain logic.

## Service-based

Good fit: coarse domain services, moderate team autonomy, and simpler operations than microservices. Watch for shared-database coupling and services that become distributed layers.

## Event-driven

Good fit: asynchronous reactions, fan-out, buffering, and independent consumers. Watch for event semantics, ordering, duplicate handling, observability, testing, and eventual consistency. Choose orchestration when workflow visibility/control matters; choreography when independent reactions dominate.

## Microservices

Good fit: independently deployable domains that need different scale, availability, or change cadence and are supported by mature automation/operations. Costs include network failure, data distribution, observability, platform work, testing, and team coordination. Do not choose for hypothetical future scale.

## Space-based or distributed compute

Good fit: extreme elasticity and high-volume parallel work where data can be partitioned appropriately. Costs include specialized infrastructure, consistency complexity, and operational expertise.

## Hybrid

Combine styles only at a named boundary to address a concrete mismatch. Every added style expands the mental and operational model.

Conceptual lineage: architecture-style comparison and contextual trade-off analysis.
