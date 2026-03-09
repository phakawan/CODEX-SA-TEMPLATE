# Conventions

This file defines shared naming, terminology, and traceability rules across all design artifacts.

## Terminology Standards
- Use `Use Case` in headings and prose.
- Use `API Design` in headings and prose.
- Use `use cases` when referring to the folder `docs/use-cases`.
- Keep one term per concept across all artifacts.

## File Naming Standards
- Use lowercase kebab-case for feature names.
- Requirements: `docs/requirements/<feature-name>.md`
- Use Cases: `docs/use-cases/<feature-name>.md`
- Domain Model: `docs/domain-model/<feature-name>.md`
- Data Model (single feature):
  - `docs/data-model/<feature-name>-entities.md`
  - `docs/data-model/<feature-name>-er-diagram.md`
  - `docs/data-model/<feature-name>-data-dictionary.md`
- API Design: `docs/api/<feature-name>.md`
- Database (optional split by feature): `database/<feature-name>-schema.sql`

## Feature Decomposition Standards
- If `docs/requirements/main-feature.md` contains sub-features, split them into separate files.
- Example:
  - `docs/requirements/login.md`
  - `docs/requirements/membership.md`
- Apply the same sub-feature names across downstream folders:
  - `docs/use-cases/login.md`, `docs/use-cases/membership.md`
  - `docs/domain-model/login.md`, `docs/domain-model/membership.md`
  - `docs/data-model/login-*.md`, `docs/data-model/membership-*.md`
  - `docs/api/login.md`, `docs/api/membership.md`
  - `database/login-schema.sql`, `database/membership-schema.sql` (if split schema is used)

## Feature Name Examples
- `user-authentication`
- `role-permission-management`
- `session-lifecycle`

## Content Standards
- Always separate confirmed facts from assumptions.
- Keep traceability explicit:
  - requirement -> use case
  - use case -> data/domain entities
  - use case + entities -> schema/API
- Avoid implementation details in requirement and use case artifacts.

## TOC Standards
- TOC is feature-first.
- Under each feature, list artifact files as markdown links.
- Update TOC whenever files are added, renamed, or removed.

## Encoding Standards
- All markdown files must be UTF-8.
- Prefer LF line endings for markdown/yaml files.
- Use the repo-level `.editorconfig` and `.gitattributes` defaults.
- Run encoding validation before commit:
  - `powershell -ExecutionPolicy Bypass -File scripts/check-markdown-encoding.ps1`
