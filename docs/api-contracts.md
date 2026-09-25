# API contracts — Tutorial Interactive Chip Simulation and Education website

The OpenAPI document is the authoritative contract: Swagger UI at `/docs`, raw document at `/openapi.json`. This table is the summary.

| Method | Path | Purpose | Response |
| --- | --- | --- | --- |
| `GET` | `/health` | Liveness probe used by the deploy pipeline | `{"status": "ok"}` |
| `GET` | `/api/websites` | List websites; `?status=` filters | `Website[]` |
| `POST` | `/api/websites` | Create a website | `201` + `Website` |
| `GET` | `/api/websites/{id}` | Fetch one website | `Website` or `404` |
| `PATCH` | `/api/websites/{id}` | Partial update | `Website` or `404` |
| `DELETE` | `/api/websites/{id}` | Remove a website | `204` or `404` |

## `Website`

| Field | Type | Notes |
| --- | --- | --- |
| `id` | integer | Server assigned |
| `title` | string | Required, 1–400 characters |
| `reference` | string | Optional, up to 200 characters |
| `status` | enum | `new`, `in-progress`, `complete` |
| `priority` | enum | `low`, `normal`, `high` |
