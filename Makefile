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
