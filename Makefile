.PHONY: start_dev
start_dev:
	docker compose --file docker-compose-dev.yml --project-name work up --detach

###############################################################################
# Old code
###############################################################################

#.PHONY: build
#build:
#	go build -o bin/task-server

#.PHONY: start
#start:
#	./bin/task-server

###############################################################################
# Docker (old)
###############################################################################

.PHONY: docker_build
docker_build:
	docker-compose --project-name work build

.PHONY: docker_start
docker_start:
	docker-compose --project-name work up --detach

.PHONY: docker_stop
docker_stop:
	docker-compose --project-name work down

# update
#.PHONY: u
#u: stop build
#	make start


#.PHONY: build_image
#build_image:
#	docker build --tag task-server .

#.PHONY: start_server_in_docker
#start_server_in_docker:
#	docker run --name task-server --detach --publish 80:80 --rm task-server

#.PHONY: stop_server_in_docker
#stop_server_in_docker:
#	@docker stop task-server

# "dc" означает "Docker Compose"
