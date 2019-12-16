.PHONY: init/mac
init/mac:
	@brew install golang-migrate && \
	brew install mysql && \
	migrate --version && \
	mysql --version

.PHONY: init/manjaro
	@curl -L https://github.com/golang-migrate/migrate/releases/download/v3.2.0/migrate.linux-amd64.tar.gz | tar xvz && \
	mv migrate.linux-amd64 migrate && \
	migrate --version
	@sudo pacman -Syyu && \
	sudo pacman -S mariadb && \
	sudo sysctl mysqld

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

.PHONY: mysql
mysql:
	@mysql -u root -h localhost -P 3306 --protocol tcp -p db