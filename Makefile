.PHONY: build
build:
	go build -o task-server

.PHONY: build_image
build_image:
	docker build --tag task-server .
