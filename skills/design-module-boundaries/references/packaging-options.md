# Packaging Options

## Package by technical layer

Groups UI, application, domain, and data concerns. It makes technical roles visible but often scatters a feature across the tree and permits layer bypasses. Use when layer-specific ownership and uniform infrastructure dominate, with enforcement for allowed dependencies.

## Package by feature

Groups code around a user/domain capability. It localizes feature changes and navigation. Guard against duplicated cross-cutting policy and public internals between features.

## Package by component

Expose one coarse component contract while keeping domain and persistence implementation private inside it. It combines feature locality with a small public surface and can be a strong modular-monolith default.

## Ports and adapters

Protect application/domain policy with inbound and outbound ports and infrastructure adapters. Use when external mechanisms are meaningfully volatile or multiple delivery/infrastructure modes exist. Avoid a port for every internal class and an undifferentiated "infrastructure" ring that permits bypasses.

## Separate build modules

Use distinct targets/packages/assemblies when compile-time enforcement, independent reuse, build performance, or ownership justifies the cost. Too many modules increase configuration, build graph, and navigation complexity.

## Select through change paths

Choose the organization that keeps common product changes local, preserves privacy, and makes forbidden dependencies difficult. Names and diagrams are secondary to enforceable access.

Conceptual lineage: package-by-layer, feature, component, ports/adapters, and compiler-enforced architecture.
