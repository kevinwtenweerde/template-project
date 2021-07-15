start: up build down
re: down up

up:
	docker-compose up -d
build:
	./mvnw clean verify
down:
	docker-compose down
