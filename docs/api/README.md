# API Design

## Purpose
Store API contracts derived from approved use cases and schema.

## Naming
- one feature per file
- file name: `<feature-name>.md` (lowercase kebab-case)

## Feature Name Examples
- `user-authentication.md`
- `role-permission-management.md`
- `session-lifecycle.md`

## Required Sections
- assumptions
- endpoints
- request models
- response models
- error models
- authorization
- traceability (use case -> endpoint)
- open questions

## Sub-Feature Decomposition
- Keep one API Design file per requirement sub-feature (example: login.md, membership.md).

