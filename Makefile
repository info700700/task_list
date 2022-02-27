.PHONY: build
build:
	docker-compose --project-name work build

.PHONY: start
start:
	docker-compose --project-name work up --detach

.PHONY: stop
stop:
	docker-compose --project-name work down

# update
.PHONY: u
u: stop build
	make start


###############################################################################
# Old code
###############################################################################

#.PHONY: build
#build:
#	go build -o bin/task-server

#.PHONY: start_server
#start:
#	./bin/task-server


###############################################################################
# Docker (old)
###############################################################################

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
