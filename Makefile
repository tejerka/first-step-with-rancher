server:
	docker-compose up --force-recreate -d server

host:
	docker-compose build host
	$(eval DOCKER_HOST = $(shell docker-compose run --rm -d host))
	docker exec $(DOCKER_HOST) $(CMD)