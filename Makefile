.PHONY: up build artisan migrate test shell logs down ps

up:
	@echo "Starting containers..."
	@docker-compose -f .docker/docker-compose.yml up -d
	@echo "Containers are up."

build:
	@echo "Building containers..."
	@docker-compose -f .docker/docker-compose.yml up --build -d
	@echo "Containers are built and up."

artisan:
	@echo "Running Artisan command..."
	@docker-compose -f .docker/docker-compose.yml exec app php artisan $(cmd)
	@echo "Artisan command completed."

migrate:
	@echo "Running migrations..."
	@docker-compose -f .docker/docker-compose.yml exec app php artisan migrate
	@echo "Migrations completed."

test:
	@echo "Running tests..."
	@docker-compose -f .docker/docker-compose.yml exec app ./vendor/bin/phpunit $(path)
	@echo "Tests completed."

shell:
	@echo "Opening a shell in the app container..."
	@docker-compose -f .docker/docker-compose.yml exec app /bin/bash

logs:
	@echo "Tailing logs..."
	@docker-compose -f .docker/docker-compose.yml logs -f

down:
	@echo "Stopping containers..."
	@docker-compose -f .docker/docker-compose.yml down
	@echo "Containers are stopped."

ps:
	@echo "Listing containers..."
	@docker-compose -f .docker/docker-compose.yml ps
