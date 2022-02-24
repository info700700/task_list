# syntax=docker/dockerfile:1

##
## Build
##
FROM golang:1.17-buster AS build

WORKDIR /app

COPY go.mod ./

RUN go mod download
RUN go mod verify

COPY *.go ./
COPY work work
COPY handler handler

RUN go build -o /work-server


##
## Deploy
##
FROM gcr.io/distroless/base-debian10

WORKDIR /

COPY static static
COPY --from=build /work-server /work-server

EXPOSE 80

USER nonroot:nonroot

ENTRYPOINT ["/work-server"]