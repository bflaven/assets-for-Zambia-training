#make start
start:
	docker-compose up -d --build

#make stop
stop:
	docker-compose stop

#make down
down:
	docker-compose down

#make ps
ps:
	docker-compose ps

#make cli
cli:
	docker-compose run --rm cli bash

#make clean
clean: stop
	@echo "💥 Removing Wordpress..."
	@rm -rf site
	@echo "💥 Removing Docker containers..."
	docker-compose rm -f