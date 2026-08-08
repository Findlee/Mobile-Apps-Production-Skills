# Design Red Flags

Treat each flag as a prompt for investigation, not an automatic defect.

- **Information leakage:** one design decision appears in multiple modules or caller contracts.
- **Shallow module:** interface complexity approaches implementation complexity.
- **Pass-through layer:** methods forward similar arguments and add no distinct abstraction.
- **Temporal decomposition:** code is grouped by execution order rather than hidden knowledge or responsibility.
- **Overexposure:** common callers must understand rare features or implementation options.
- **Special/general mixture:** reusable mechanism and product-specific policy are tangled.
- **Conjoined methods/modules:** understanding one requires reading the other in detail.
- **Shotgun surgery:** one behavioral change touches many unrelated locations.
- **Divergent change:** one module changes for many independent reasons.
- **Feature envy:** behavior repeatedly reaches into another object's/module's data.
- **Data clump/primitive obsession:** a meaningful concept is repeatedly passed as unrelated primitives.
- **Circular dependency:** no stable starting point exists for understanding or change.
- **Middle man:** a layer merely redirects work; remove it unless it enforces a boundary.
- **Speculative abstraction:** interface or extension point has no present variation or protected decision.
- **Public-by-default:** implementation types are published without a caller need.
- **Hard to name or describe:** responsibility is incoherent or the proposed boundary leaks too much detail.

Before acting, connect the flag to a concrete change cost, risk, or comprehension problem.

Conceptual lineage: software-design red flags and refactoring smells.
