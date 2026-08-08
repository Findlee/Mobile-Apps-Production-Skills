# Risk Storming

## Prepare

Choose one prioritized architecture characteristic. Bring a current topology diagram and participants who understand product, implementation, operations, security, data, or support as relevant.

## Identify independently

Ask each participant to mark components, connections, data stores, and external dependencies that threaten the characteristic. Independent marking reduces anchoring.

## Score qualitatively

Use a small scale for likelihood and impact. The score organizes discussion; it is not objective truth. Record why a hot spot matters.

## Discuss and mitigate

For each high-risk area decide whether to:

- change the design;
- run an experiment or load/failure/security test;
- add a fitness function or production signal;
- isolate the blast radius;
- establish a dependency contract or SLO;
- accept the risk with an owner and rationale.

## Repeat over time

Revisit after major features, topology changes, operational incidents, or changes to the leading characteristics. Risk storming is not a one-time approval ceremony.

## Output

Record the characteristic, participants, hot spots, reasoning, mitigation, owner, evidence, and follow-up date. Update the topology or ADR when the mitigation changes the architecture.

Conceptual lineage: collaborative architecture risk analysis.
