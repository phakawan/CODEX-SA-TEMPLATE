---
name: use-case-modeler
description: Convert requirement specs into structured use-case documents at `docs/use-cases/*.md` with explicit flows, assumptions, and traceability.
---

# Use-Case Modeler

Create complete use-case artifacts from approved requirements to guide domain, data, and API design.

## Workflow

1. Gather source context from:
- `docs/requirements/<feature-name>.md`
- existing use-case files in `docs/use-cases`
- domain terms in `docs/domain-model` and `docs/data-model/entities.md`

2. Identify actors and boundaries.
- define primary and supporting actors
- define triggers and preconditions
- state business outcome per use case

3. Build behavioral flows.
- write main flow as a clear step sequence
- add alternate and exception flows with explicit conditions
- include Mermaid `sequenceDiagram` where useful

4. Add traceability and unresolved points.
- map requirements to use-case steps
- list related entities and assumptions
- capture open questions for missing business policy

5. Write output to `docs/use-cases/<feature-name>.md`.

## Output Format

Use this order:
1. assumptions
2. actors
3. triggers
4. preconditions
5. main flow
6. alternate flows
7. exception flows
8. sequenceDiagram
9. related entities
10. traceability (requirement -> use case)
11. open questions

## Quality Gate

Before finalizing, verify:
- every use case maps back to at least one requirement
- flows are deterministic and free of implementation detail
- exception handling is explicit for high-risk steps
- entity naming matches data model artifacts

## Boundaries

Do not:
- invent new business policy without marking assumption
- embed schema or API payload details in use-case text
- skip edge-case behavior for security-critical paths
