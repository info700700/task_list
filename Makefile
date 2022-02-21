.PHONY: build
build:
	go build -o bin/task-server

.PHONY: start_server
start:
	./bin/task-server


###############################################################################
# Docker
###############################################################################

.PHONY: build_image
build_image:
	docker build --tag task-server .

.PHONY: start_server_in_docker
start_server_in_docker:
	docker run --name task-server --detach --publish 80:80 --rm task-server

.PHONY: stop_server_in_docker
stop_server_in_docker:
	@docker stop task-server


###############################################################################
# Docker Compose
###############################################################################

# "dc" означает "Docker Compose"

.PHONY: dc_build
dc_build:
	docker-compose build

.PHONY: dc_start
dc_start:
	docker-compose up -d
