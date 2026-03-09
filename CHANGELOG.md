# Changelog

All notable changes to this template are documented in this file.

The format is based on Keep a Changelog and this project uses Semantic Versioning.

## [1.0.1] - 2026-03-09
### Added
- Table of Contents files for canonical artifact folders:
  - `docs/requirements/TOC.md`
  - `docs/use-cases/TOC.md`
  - `docs/domain-model/TOC.md`
  - `docs/data-model/TOC.md`
  - `database/TOC.md`
  - `docs/api/TOC.md`

### Changed
- Updated `AGENTS.md` execution order to include TOC creation/update as the final step.
- Added TOC maintenance rule in `AGENTS.md` for canonical artifact folders.
- Refined TOC format to be feature-first, followed by file links for each feature.

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

[1.0.1]: https://github.com/<owner>/<repo>/releases/tag/v1.0.1
[1.0.0]: https://github.com/<owner>/<repo>/releases/tag/v1.0.0
