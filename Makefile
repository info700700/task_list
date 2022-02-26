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
	docker-compose --project-name work build

.PHONY: dc_start
dc_start:
	docker-compose --project-name work up --detach

.PHONY: dc_stop
dc_stop:
	docker-compose --project-name work down

# update
.PHONY: u
u: dc_stop dc_build
	make dc_start
