# Tutorial Interactive Chip Simulation and Education website — API

FastAPI service. Owns validation, authorization, and all database access.

| Path | Purpose |
| --- | --- |
| `/health` | Liveness probe |
| `/docs` | Swagger UI |
| `/openapi.json` | OpenAPI document |
| `/api/websites` | Websites collection (GET, POST) |
| `/api/websites/{id}` | Single website (GET, PATCH, DELETE) |
