.PHONY: init/mac
init/mac:
	@brew install golang-migrate && \
	migrate --version

.PHONY: init/manjaro
	@curl -L https://github.com/golang-migrate/migrate/releases/download/v3.2.0/migrate.linux-amd64.tar.gz | tar xvz && \
	mv migrate.linux-amd64 migrate && \
	migrate --version

.PHONY: up
up:
	@docker-compose up -d

.PHONY: down
down:
	@docker-compose down

.PHONY: build
build:
	@docker-compose build

.PHONY: ps
ps:
	@docker-compose ps

.PHONY: exec/mysql
exec/mysql:
	@docker exec -it mysql bash
