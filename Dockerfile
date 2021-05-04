FROM golang:latest as stage01

WORKDIR /home/go_user/app
COPY ["go.mod", "main.go", "build.sh", "./"]
RUN go build -ldflags "-s -w" main.go
