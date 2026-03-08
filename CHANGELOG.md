# Changelog

All notable changes to this template are documented in this file.

The format is based on Keep a Changelog and this project uses Semantic Versioning.

## [1.0.0] - 2026-03-09
### Added
- Public template baseline for enterprise Software Analysis and Design workflow.
- Root `AGENTS.md` with:
  - design flow
  - agent routing
  - skill routing
  - canonical document paths
  - execution order
  - repository rules
- Agent role definitions:
  - `agents/architect.md`
  - `agents/use-case-designer.md`
  - `agents/er-designer.md`
  - `agents/schema-designer.md`
  - `agents/api-designer.md`
  - `agents/reviewer.md`
- Skill packages:
  - `skills/requirement-analyst`
  - `skills/use-case-modeler`
  - `skills/logical-data-modeler`
  - `skills/api-contract-designer`
  - `skills/design-traceability-reviewer`
- Documentation scaffolding:
  - `docs/requirements/README.md`
  - `docs/use-cases/README.md`
  - `docs/domain-model/README.md`
  - `docs/api/README.md`
  - `docs/data-model/AGENTS.md`

### Changed
- Normalized naming and path conventions across agent and skill definitions.
- Standardized use-case path to `docs/use-cases/*`.
- Removed duplicate local ER skill variant to keep one active modeling standard.

[1.0.0]: https://github.com/<owner>/<repo>/releases/tag/v1.0.0
