RAILWAY_PROJECT ?= templates-test
FLOWISE_SECRETKEY ?= $(shell openssl rand -hex 16)

deploy:
	railway link -p $(RAILWAY_PROJECT)
	railway add --database postgres
	railway add --service flowise-app
	railway up app --path-as-root --service flowise-app
	railway variable set --service flowise-app \
	  PORT=3000 \
	  DATABASE_TYPE=postgres \
	  'DATABASE_HOST=$${{Postgres.PGHOST}}' \
	  'DATABASE_PORT=$${{Postgres.PGPORT}}' \
	  'DATABASE_NAME=$${{Postgres.PGDATABASE}}' \
	  'DATABASE_USER=$${{Postgres.PGUSER}}' \
	  'DATABASE_PASSWORD=$${{Postgres.PGPASSWORD}}' \
	  DATABASE_SSL=false \
	  FLOWISE_SECRETKEY_OVERWRITE=$(FLOWISE_SECRETKEY)

destroy:
	@echo "Delete services via Railway dashboard: flowise-app, Postgres"
	@echo "https://railway.app/project/$(RAILWAY_PROJECT)"

status:
	railway service status --all --json

logs:
	railway logs --service flowise-app --lines 100

.PHONY: deploy destroy status logs
