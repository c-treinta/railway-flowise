RAILWAY_PROJECT ?= templates-test

deploy:
	railway link -p $(RAILWAY_PROJECT)
	railway add --database postgres
	railway add --service flowise-app
	cd app && railway up --service flowise-app
	railway variable set --service flowise-app \
	  DATABASE_TYPE=postgres \
	  'DATABASE_URL=${{Postgres.DATABASE_URL}}'

destroy:
	@echo "Delete services via Railway dashboard: flowise-app, Postgres"
	@echo "https://railway.app/project/$(RAILWAY_PROJECT)"

status:
	railway service status --all --json

logs:
	railway logs --service flowise-app --lines 100

.PHONY: deploy destroy status logs
