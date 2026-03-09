# Domain Model

## Purpose
Store conceptual domain model artifacts between use cases and data model.

## Naming
- one feature or bounded context per file
- file name: `<feature-name>.md` or `<bounded-context>.md`

## Feature Name Examples
- `auth-access-control.md`
- `billing-core.md`
- `identity-profile.md`

## Suggested Sections
- assumptions
- bounded contexts
- entities
- value objects
- aggregates
- domain services
- invariants
- open questions

## Sub-Feature Decomposition
- Keep one domain model file per requirement sub-feature (example: login.md, membership.md).

