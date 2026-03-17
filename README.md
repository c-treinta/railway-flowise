# Flowise

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app/new/template?template=https://github.com/c-treinta/railway-flowise)

No-code LLM application builder.

**Services:** `flowise-app`, `Postgres` (Railway-managed)

## Deploy

```bash
make deploy
```

## Environment Variables (auto-wired)

| Variable | Value |
|----------|-------|
| `DATABASE_TYPE` | `postgres` |
| `DATABASE_URL` | Railway reference to `Postgres` |
