# Smell-to-Refactoring Map

Use smells as diagnostic clues. Select a transformation only after connecting the smell to a current cost.

| Smell | Investigate | Common moves |
|---|---|---|
| Mysterious name | Hidden concept or mixed responsibility | Rename variable/function/field; extract concept |
| Duplicated code | Shared policy or coincidental similarity | Extract function/class; parameterize; combine only stable knowledge |
| Long function | Multiple abstractions or hard-to-name sections | Extract function; replace temp with query; split phase; guard clauses |
| Long parameter list / data clump | Missing domain concept or leaking context | Introduce parameter object; preserve whole object; move function |
| Global or mutable data | Uncontrolled ownership and temporal coupling | Encapsulate variable; split variable; immutable value; explicit owner |
| Divergent change | One unit contains unrelated policies | Extract class/module; split phase; move functions/data |
| Shotgun surgery | One decision is duplicated across locations | Move function/field; centralize policy; introduce stable boundary |
| Feature envy | Behavior belongs with the data/knowledge it uses | Move function; extract/inline class as needed |
| Primitive obsession | Missing meaningful value or special case | Replace primitive with object; introduce special case |
| Repeated conditional | Policy variation encoded procedurally | Decompose; guard clauses; polymorphism or strategy when variation is real |
| Message chain / middle man | Leaky navigation or shallow forwarding | Hide delegate; move behavior; remove middle man |
| Large class | Multiple change drivers or merely deep implementation | Extract only coherent responsibility; keep if interface remains simple |
| Comments explaining confusing code | Nonobvious structure or necessary rationale | Refactor code; retain comments for why, invariants, and hidden decisions |
| Cyclic dependency | Confused ownership or callback protocol | Return value; move policy; extract coordinator; publish event |

Avoid universal size thresholds. A small function can be shallow and confusing; a long function can express one clear algorithm.

Conceptual lineage: refactoring smells and software-design red flags.
