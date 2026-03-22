# Atlas AI Instructions

When making database changes in this project, always use this workflow:

1. Edit only `schema.hcl` to define the intended schema.
2. Generate migrations from schema changes:
   - `atlas migrate diff <name> --env local`
3. Lint newly generated migrations:
   - `atlas migrate lint --env local --latest 1`
4. Preview migration execution first:
   - `atlas migrate apply --env local --dry-run`
5. Apply only after dry-run output is acceptable:
   - `atlas migrate apply --env local`

Rules:
- Do not hand-edit migration files unless explicitly requested.
- Keep migrations append-only; never rewrite already applied migration files.
- Prefer descriptive migration names, for example `add_orders_table`.
