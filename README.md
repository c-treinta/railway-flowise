# Flowise

[![Deploy on Railway](https://railway.com/button.svg)](https://railway.com/new/template/TEMPLATE_ID)

Flowise is an open-source, low-code platform for building LLM-powered applications visually. It provides a drag-and-drop interface for creating AI workflows, chatbots, agents, and pipelines by connecting components like language models, vector stores, document loaders, and tools. Built on LangChain and LlamaIndex, Flowise enables developers and non-technical users alike to prototype and deploy AI applications without deep programming knowledge. It supports integrations with OpenAI, Anthropic, Ollama, and dozens of other LLM providers, along with databases, APIs, and memory systems.

## Use Cases

- Build custom AI chatbots backed by your own documents (RAG)
- Create LLM agents that can call external APIs and tools
- Design and test multi-step AI workflows visually
- Embed shareable chat interfaces into websites and applications

## Dependencies

- **Flowise** (`flowiseai/flowise:latest`) — LLM application builder and API server
- **Postgres** (Railway-managed) — stores flows, credentials, API keys, and chat history

## Implementation Details

- Flowise runs on port `3000` with a Railway-managed public domain
- Database connection wired via `DATABASE_*` reference variables pointing to the co-deployed Postgres service
- `FLOWISE_SECRETKEY_OVERWRITE` is auto-generated at deploy time to encrypt stored credentials and API keys

## Why Deploy Flowise on Railway?

Railway is a singular platform to deploy your infrastructure stack. Railway will host your infrastructure so you don't have to deal with configuration, while allowing you to vertically and horizontally scale it.

By deploying Flowise on Railway, you are one step closer to supporting a complete full-stack application with minimal burden. Host your servers, databases, AI agents, and more on Railway.
