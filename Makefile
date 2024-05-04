# DOCKER COMMANDS
CONTAINER_NAME=debian

.PHONY: build run push attach

build:
	docker build -f Dockerfile -t $(CONTAINER_NAME) .

run: build
	docker run --rm -it --name ${CONTAINER_NAME} $(CONTAINER_NAME) /bin/bash

push: build
	docker push $(CONTAINER_NAME)

exec:
	docker exec -it --rm $(CONTAINER_NAME) /bin/bash