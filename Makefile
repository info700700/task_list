.PHONY: build
build:
	go build -o bin/task-server

.PHONY: start
start:
	./bin/task-server

.PHONY: build_image
build_image:
	docker build --tag task-server .
