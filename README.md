# Deploy and Host Flowise on Railway

[![Deploy on Railway](https://railway.com/button.svg)](https://railway.com/new/template/TEMPLATE_ID)

Flowise is an open-source, low-code platform for building LLM-powered applications visually. Using a drag-and-drop interface, you can create AI workflows, chatbots, and agents with integrations for OpenAI, Anthropic, Ollama, and more — no deep programming required.

## About Hosting Flowise

Hosting Flowise requires a persistent server with access to a database for storing flows, credentials, and chat history. This Railway template deploys Flowise alongside a managed PostgreSQL instance, with all database connection variables automatically wired between services using Railway's private networking. The application runs on port 3000 with a public domain provisioned automatically. A secret key for encrypting stored credentials is generated at deploy time. Railway handles infrastructure provisioning, service restarts on failure, and health monitoring via the `/api/v1/ping` endpoint.

## Common Use Cases

- Build custom AI chatbots backed by your own documents (RAG)
- Create LLM agents that can call external APIs and tools
- Design and test multi-step AI workflows visually
- Embed shareable chat interfaces into websites and applications

## Dependencies for Flowise Hosting

- **Flowise** (`flowiseai/flowise:latest`) — LLM application builder and API server
- **Postgres** (Railway-managed) — stores flows, credentials, API keys, and chat history

### Deployment Dependencies

- [Flowise Docker Image](https://hub.docker.com/r/flowiseai/flowise)
- [Flowise GitHub](https://github.com/FlowiseAI/Flowise)
- [Flowise Documentation](https://docs.flowiseai.com/)

### Implementation Details

- Flowise runs on port `3000` with a Railway-managed public domain
- Database connection wired via `DATABASE_*` reference variables pointing to the co-deployed Postgres service
- `FLOWISE_SECRETKEY_OVERWRITE` is auto-generated at deploy time to encrypt stored credentials and API keys

## Why Deploy Flowise on Railway?

Railway is a singular platform to deploy your infrastructure stack. Railway will host your infrastructure so you don't have to deal with configuration, while allowing you to vertically and horizontally scale it.

By deploying Flowise on Railway, you are one step closer to supporting a complete full-stack application with minimal burden. Host your servers, databases, AI agents, and more on Railway.
