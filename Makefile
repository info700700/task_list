build:
	go build -o task-server

build_image:
	docker build --tag task-server .
