# Enterprise Software Analysis and Design Multi-Agent Template

[![Version](https://img.shields.io/badge/version-v1.0.1-blue.svg)](https://github.com/phakawan/CODEX-SA-TEMPLATE/releases/tag/v1.0.1)
[![Last Updated](https://img.shields.io/badge/last%20updated-2026--03--09-success.svg)](https://github.com/phakawan/CODEX-SA-TEMPLATE/commits/main)

A GitHub-ready template for running Software Analysis and Design with AI agents + human review.

## What This Template Provides
- Standard design flow: requirement -> architecture -> use case -> entity -> ER diagram -> schema -> API
- Agent routing in `AGENTS.md`
- Skill-based workflows in `skills/*`
- Canonical document structure under `docs/*`
- Review checklist for cross-artifact consistency

## Target Users
- Solution architects
- System analysts
- Tech leads and platform teams
- Teams building reusable SA/SD practices

## Repository Structure
- `AGENTS.md`: global routing, rules, execution order
- `agents/`: lightweight role definitions for each design stage
- `skills/`: reusable skill instructions (`SKILL.md`) + agent metadata (`agents/openai.yaml`)
- `docs/requirements/`: business requirements artifacts
- `docs/use-cases/`: use case artifacts
- `docs/domain-model/`: domain model artifacts
- `docs/data-model/`: entity list, ER diagram, data dictionary
- `docs/api/`: API contract artifacts

## Included Skills
- `requirement-analyst`: structure business requirements
- `use-case-modeler`: produce use case specs and flow mapping
- `logical-data-modeler`: design logical data models in Mermaid ER
- `api-contract-designer`: design API contracts from use cases + schema
- `design-traceability-reviewer`: validate end-to-end traceability

## Quick Start
1. Click **Use this template** on GitHub (or clone this repository).
2. Copy your business requirement into `docs/requirements/<feature-name>.md`.
3. Follow `AGENTS.md` execution order stage by stage.
4. Generate/update artifacts in each canonical path.
5. Run review stage and resolve all critical/high gaps.

## Working Rules
- Start from business requirements.
- Do not invent business rules silently.
- Keep naming consistent across all documents.
- Always highlight assumptions.

## Versioning
- Current version: `v1.0.1`
- See `CHANGELOG.md` for release details.

## Recommended Contribution Flow
1. Create a branch per feature/domain.
2. Update artifacts with traceability preserved.
3. Submit PR with assumptions and unresolved questions.
4. Run reviewer skill before merge.

## Multilingual Markdown Safety
- Markdown files are standardized to UTF-8.
- Run the encoding check before commit:
  - `powershell -ExecutionPolicy Bypass -File scripts/check-markdown-encoding.ps1`

## License
Choose and add your organization's preferred license before production use.

