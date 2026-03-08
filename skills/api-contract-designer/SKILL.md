---
name: api-contract-designer
description: Produce API contracts from approved use cases and schema into `docs/api/*.md` with request/response/error definitions and traceability.
---

# API Contract Designer

Design API contracts that are traceable to business behavior and aligned with schema/domain naming.

## Workflow

1. Gather source context from:
- `docs/use-cases/<feature-name>.md`
- `database/schema.sql`
- `docs/domain-model` and `docs/data-model/*`
- existing contracts in `docs/api`

2. Derive endpoint responsibilities.
- define endpoint list from use-case actions
- assign method/path and authorization requirements
- separate command and query responsibilities

3. Define contract payloads.
- request models with validation rules
- response models (success + partial/empty cases)
- error models with stable error codes
- pagination/idempotency where applicable

4. Record alignment and gaps.
- map each endpoint to use-case steps and entities
- flag schema mismatches or missing data fields
- capture assumptions and open questions

5. Write output to `docs/api/<feature-name>.md`.

## Output Format

Use this order:
1. assumptions
2. endpoints (method + path)
3. request models
4. response models
5. error models
6. authorization requirements
7. idempotency and pagination
8. traceability (use case -> endpoint)
9. open questions

## Quality Gate

Before finalizing, verify:
- every endpoint has a clear business purpose
- field naming aligns with schema and domain terms
- authentication/authorization behavior is explicit
- error handling is deterministic and testable

## Boundaries

Do not:
- define transport/framework-specific implementation code
- invent data fields not justified by requirements/use cases
- hide assumptions about auth, rate limits, or consistency
