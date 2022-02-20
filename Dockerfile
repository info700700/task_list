# syntax=docker/dockerfile:1

##
## Build
##
FROM golang:1.17-buster AS build

WORKDIR /app

COPY go.mod ./

RUN go mod download
RUN go mod verify

COPY index.html ./
COPY *.go ./

RUN go build -o /task-server


##
## Deploy
##
FROM gcr.io/distroless/base-debian10

WORKDIR /

COPY --from=build /task-server /task-server

EXPOSE 80

USER nonroot:nonroot

ENTRYPOINT ["/task-server"]