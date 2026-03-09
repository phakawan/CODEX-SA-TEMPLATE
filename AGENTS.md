# AGENTS.md

## Repository Purpose
This repository stores enterprise system design artifacts.

The goal is to support structured system analysis and architecture design
using AI agents and humans collaboratively.

## Design Flow
requirement -> architecture -> use case -> entity -> ER diagram -> schema -> API

## Agent Routing
Architectural decomposition:
- agents/architect.md

Use Case modeling:
- agents/use-case-designer.md

ER diagram modeling:
- agents/er-designer.md

Schema design:
- agents/schema-designer.md

API Design:
- agents/api-designer.md

Design review:
- agents/reviewer.md

## Skill Routing
Requirement structuring:
- skills/requirement-analyst/SKILL.md

Use Case modeling:
- skills/use-case-modeler/SKILL.md

Logical data modeling:
- skills/logical-data-modeler/SKILL.md

API contract design:
- skills/api-contract-designer/SKILL.md

End-to-end traceability review:
- skills/design-traceability-reviewer/SKILL.md

## Canonical Document Paths
- conventions: `docs/CONVENTIONS.md`
- requirements: `docs/requirements/*.md`
- use cases: `docs/use-cases/*.md`
- domain model: `docs/domain-model/*.md`
- data model: `docs/data-model/*.md`
- schema: `database/schema.sql`
- API Design: `docs/api/*.md`

## Execution Order
1. Write/approve business requirements in `docs/requirements`.
2. Decompose main feature requirements into sub-feature files (example: `login`, `membership`) in `docs/requirements`.
3. Create architecture decomposition.
4. Create use cases in `docs/use-cases` for each sub-feature.
5. Create domain/data model artifacts for each sub-feature.
6. Generate schema artifacts aligned with each sub-feature.
7. Design API contracts in `docs/api` for each sub-feature.
8. Run cross-artifact review and resolve gaps.
9. Create/update Table of Contents files for `docs/requirements`, `docs/use-cases`, `docs/domain-model`, `docs/data-model`, `database`, and `docs/api`.

## Rules
- Start from business requirements.
- Do not invent business rules silently.
- Keep naming consistent across all documents.
- Always highlight assumptions.
- Follow naming and terminology standards in `docs/CONVENTIONS.md`.
- When a main feature contains sub-features, create one file per sub-feature across all relevant folders.
- Always create or update Table of Contents in each canonical artifact folder after content changes.
- For multilingual markdown files, use UTF-8 encoding to prevent text corruption.

## Common Mistakes
- Starting from schema/API before approved requirements.
- Mixing terms for the same concept across artifacts.
- Writing assumptions as facts without labeling them.
- Leaving missing traceability between requirements, use cases, and API/schema outputs.
- Updating artifact files without updating the folder TOC.
- Keeping only `main-feature.md` without splitting sub-feature artifacts.
- Saving markdown in non-UTF-8 encoding, causing garbled Thai/English text.
