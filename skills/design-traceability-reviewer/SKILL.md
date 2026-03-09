---
name: design-traceability-reviewer
description: Review end-to-end consistency and traceability across requirements, use cases, domain/data model, schema, and API artifacts.
---

# Design Traceability Reviewer

Audit cross-document consistency so each downstream artifact is justified by upstream business requirements.

## Workflow

1. Gather source context from:
- `docs/requirements`
- `docs/use-cases`
- `docs/domain-model`
- `docs/data-model`
- `database/schema.sql`
- `docs/api`

2. Build traceability map.
- requirement -> use case
- use case -> entities/relationships
- entities -> schema tables/columns
- use case + schema -> API endpoints/contracts

3. Evaluate consistency risks.
- naming drift and duplicated concepts
- missing requirement coverage
- parent feature exists but sub-feature artifacts are missing in downstream folders
- relationship/cardinality mismatches
- schema/API misalignment
- undocumented assumptions

4. Produce review report.
- findings by severity: critical, high, medium, low
- file references and concrete mismatch evidence
- recommended fixes and decision questions

## Output Format

Use this order:
1. assumptions
2. traceability coverage summary
3. findings (ordered by severity)
4. unresolved questions
5. recommended next actions

## Quality Gate

Before finalizing, verify:
- all findings include exact file references
- severity reflects business/implementation risk
- suggested actions are specific and feasible
- report distinguishes facts vs assumptions
- parent/sub-feature decomposition is consistently reflected from requirements to API/schema

## Boundaries

Do not:
- rewrite all design artifacts automatically as part of review
- report stylistic preferences as defects without impact
- ignore missing assumptions in critical flows
