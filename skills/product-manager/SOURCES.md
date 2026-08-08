# product-manager source map

This file documents the main source concepts used to design the `product-manager` orchestration skill. The runtime skill is self-contained and does not require the books.

## Marty Cagan - Inspired: How to Create Products Customers Love

Primary concepts used:

- Product opportunity assessment: frame the problem before the solution; evaluate target market, opportunity, success metrics, alternatives, differentiator, timing, constraints, and recommendation.
- Product discovery vs execution: first discover the right product, then build the product right.
- Discovery must validate both the opportunity and a valuable, usable, feasible solution.
- Discovery is uncertain and should change direction when evidence changes.
- Product principles help make trade-offs and speed decisions.
- Product specs should describe product behavior and user experience rather than prescribe implementation.

Primary chapters:

- Chapter 11 - Assessing Product Opportunities
- Chapter 12 - Product Discovery
- Chapter 13 - Product Principles
- Chapter 18 - Reinventing the Product Spec
- Chapter 19 - Design vs. Implementation
- Chapter 20 - Minimal Product

## Melissa Perri - Escaping the Build Trap

Primary concepts used:

- Outcomes over outputs.
- Product Kata: goal -> current state -> obstacle -> next step -> expectation -> actual result/learning.
- Choose tools based on the current phase; experimentation is not always the right next step.
- Distinguish problem exploration, solution exploration, and solution optimization.
- Use leading indicators for shorter feedback loops and connect product metrics to business outcomes.
- Avoid feature-factory behavior and kill weak ideas early.

Primary chapters:

- Chapter 15 - The Product Kata
- Chapter 16 - Understanding the Direction and Setting Success Metrics
- Chapter 17 - Problem Exploration
- Chapter 18 - Solution Exploration
- Chapter 19 - Building and Optimizing Your Solution

## Teresa Torres - Continuous Discovery Habits

Primary concepts used:

- Outcome-oriented, customer-centric, collaborative, experimental, and continuous product work.
- Continuous discovery is small research activity performed by the product-building team in pursuit of an outcome.
- Product trio: product, design, and engineering perspectives collaborate on decisions.
- Opportunity-first thinking and compare-and-contrast decision making.
- Test assumptions rather than entire ideas when possible.
- Assumption categories: desirability, viability, feasibility, usability, ethical.
- Outcomes need health/guardrail metrics; learning goals can precede performance goals when uncertainty is high.

Primary chapters:

- Chapter 1 - The What and Why of Continuous Discovery
- Chapter 2 - A Common Framework for Continuous Discovery
- Chapter 3 - Focusing on Outcomes Over Outputs
- Chapters 6-10 - opportunities, solutions, assumptions, assumption tests
- Chapter 11 - Measuring Impact

## Dan Olsen - The Lean Product Playbook

Primary concepts used:

- Product-Market Fit Pyramid: target customer -> underserved needs -> value proposition -> feature set -> UX.
- Lean Product Process as an iterative hypothesis-testing flow.
- Separate problem space from solution space.
- Test before building when faster learning is possible.
- Use metrics and analytics to optimize after launch.

Primary chapters:

- Chapter 1 - Achieving Product-Market Fit with the Lean Product Process
- Chapter 2 - Problem Space versus Solution Space
- Chapters 3-10 - customer, needs, value proposition, MVP, testing, iteration
- Chapters 13-14 - metrics and optimization

## Jeff Patton - User Story Mapping

Primary concepts used:

- Outcomes should drive prioritization rather than flat feature priority.
- Four discovery discussions: frame the idea, understand customers/users, envision the solution, minimize and plan.
- Story maps preserve the end-to-end user journey and support coherent release slicing.
- Minimum viable solution is the smallest release that can achieve the desired outcome.
- Continue learning after release.

Primary chapters/sections:

- Slice Out a Minimum Viable Product Release
- Don't Prioritize Features - Prioritize Outcomes
- Using Discovery to Build Shared Understanding
- Using Discovery for Validated Learning
- Learn from Everything You Build

## AI-specific adaptations

The following rules are adaptations for AI-agent use rather than direct book terminology:

- Explicit labels: FACT / EVIDENCE / ASSUMPTION / HYPOTHESIS / DECISION / OPEN QUESTION.
- Fast / Standard / Deep lanes to prevent unnecessary product bureaucracy.
- Explicit routing between specialized reusable skills.
- Single-agent product/design/engineering lenses when no real product trio is available.
- Rules preventing implementation agents from silently deciding unresolved product behavior.
- Mandated-work path for cases where the go/no-go decision is externally fixed.
