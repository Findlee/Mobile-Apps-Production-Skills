# End-to-End Behavioral Design Blueprint

This reference combines DECIDE and CREATE with COM-B and the Behaviour Change Wheel, B=MAP, healthy habit design, choice architecture, incentive design, experimentation, and scale safeguards.

## Contents

- Model routing
- DECIDE deliverables
- Evidence ladder
- Project brief template

## Model routing

| Question | Primary lens | Use it to produce |
|---|---|---|
| What outcome matters? | Actor-action-outcome brief | A measurable user-valued outcome |
| Which behavior should change? | Behavior options + Golden Behavior criteria | An effective, wanted, feasible target |
| Where does the journey fail? | Behavioral map + CREATE | A step-specific barrier diagnosis |
| What system condition must change? | COM-B + optional TDF | Capability, opportunity, or motivation diagnosis |
| Will action occur now? | B=MAP | Prompt, ability, and motivation check |
| What type of intervention fits? | BCW functions + APEASE | A justified, deployable intervention class |
| How should choices be structured? | Choice architecture | Defaults, mappings, feedback, error handling |
| Is repetition appropriate? | Habit gate + healthy loop | A beneficial recurring behavior |
| Are rewards aligned? | Incentive signal audit | A metric and reward without mixed signals |
| Did the intervention work? | Causal experiment | Outcome, behavior, mechanism, guardrails |
| Will the effect transfer and scale? | Voltage + last-yard assessment | Stage gates, adaptations, and stop conditions |
| Should it ship? | Behavioral ethics audit | Risk, remediation, governance |

## COM-B and intervention selection

Diagnose behavior at the level of the actor and environment:

| COM-B component | Subtype | Typical question |
|---|---|---|
| Capability | Physical | Do strength, stamina, motor skills, or physical competence permit action? |
| Capability | Psychological | Do knowledge, attention, comprehension, and cognitive skills permit action? |
| Opportunity | Physical | Do time, access, resources, locations, prompts, and workflow permit action? |
| Opportunity | Social | Do norms, roles, relationships, identity, and culture permit or support action? |
| Motivation | Reflective | Do goals, plans, beliefs, evaluations, and intentions favor action? |
| Motivation | Automatic | Do emotion, impulse, desire, habit, and learned response favor action? |

Use the diagnosis to shortlist intervention functions, then justify the final choice rather than applying a framework mechanically:

- education;
- persuasion;
- incentivisation;
- coercion;
- training;
- restriction;
- environmental restructuring;
- modelling;
- enablement.

Treat coercion and restriction as high-risk in voluntary products. Route them through an ethics audit and prefer less intrusive functions when likely to be effective.

Evaluate finalists with APEASE: affordability, practicability, effectiveness and cost-effectiveness, acceptability, side effects and safety, and equity.

## DECIDE deliverables

### Define

- Actor segment based on behaviorally relevant context
- User-valued real-world outcome
- Outcome indicator and success threshold
- Organizational objective stated separately
- Initial target action and current competing behavior

### Explore

- Recent-episode user evidence, not only stated preferences
- Behavioral personas only where predicted responses differ
- Candidate behaviors
- Behavioral map of observable micro-actions
- First consequential obstacle and alternative explanations

### Craft

Use the intervention ladder:

1. **Do it safely for them:** automation, prefill, default, scheduled repetition
2. **Structure the action:** simplify, reduce steps, add error recovery, chunk progress
3. **Construct the environment:** cue, timing, social or physical context, feedback
4. **Prepare the actor:** plan, rule of thumb, rehearsal, skill, decision aid

For stopping unwanted action, reverse the design: remove cues, add proportionate friction, reduce immediate appeal, or replace the routine. Never add friction that primarily traps the user.

### Implement

- Behavioral functional specification
- User control and exit
- Eligibility and exclusions
- Edge cases and failure recovery
- Instrumentation and exposure logging
- Ethical guardrails and responsible owner

### Determine

- Primary user outcome
- Target behavior
- Mechanism or barrier measure
- Harm and equity guardrails
- Experimental or quasi-experimental design
- Predeclared decision rule

### Evaluate

- Compare observed effects with the causal chain
- Investigate nulls and backfires without post-hoc storytelling
- Update the map and diagnosis
- Stop, iterate, scale, or redesign

## Evidence ladder

Prefer evidence in this order when available:

1. Observed behavior and outcome data in the relevant context
2. Field or usability observation of a recent real episode
3. Interviews anchored to a recent episode
4. Support logs, search logs, complaints, and operational records
5. Prior experiments in the same product and population
6. Closely matched external research
7. General behavioral theory
8. Team intuition

Lower evidence can generate hypotheses but should not be presented as a finding.

## Project brief template

```markdown
Actor:
User-valued outcome:
Outcome indicator:
Organizational objective:
Current behavior:
Candidate target behaviors:
Selected target behavior and context:
Known evidence:
Assumptions:
Constraints and non-goals:
Potential harms:
APEASE constraints:
Transfer and scale risks:
Decision this project must enable:
```
