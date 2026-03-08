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

Use-case modeling:
- agents/use-case-designer.md

ER diagram modeling:
- agents/er-designer.md

Schema design:
- agents/schema-designer.md

API design:
- agents/api-designer.md

Design review:
- agents/reviewer.md

## Skill Routing
Requirement structuring:
- skills/requirement-analyst/SKILL.md

Use-case modeling:
- skills/use-case-modeler/SKILL.md

Logical data modeling:
- skills/logical-data-modeler/SKILL.md

API contract design:
- skills/api-contract-designer/SKILL.md

End-to-end traceability review:
- skills/design-traceability-reviewer/SKILL.md

## Canonical Document Paths
- requirements: `docs/requirements/*.md`
- use cases: `docs/use-cases/*.md`
- domain model: `docs/domain-model/*.md`
- data model: `docs/data-model/entities.md`, `docs/data-model/er-diagram.md`, `docs/data-model/data-dictionary.md`
- schema: `database/schema.sql`
- api design: `docs/api/*.md`

## Execution Order
1. Write/approve business requirements in `docs/requirements`.
2. Create architecture decomposition.
3. Create use cases in `docs/use-cases`.
4. Define domain entities and logical model in `docs/data-model`.
5. Generate schema in `database/schema.sql`.
6. Design API contracts in `docs/api`.
7. Run cross-artifact review and resolve gaps.

## Rules
- Start from business requirements.
- Do not invent business rules silently.
- Keep naming consistent across all documents.
- Always highlight assumptions.
