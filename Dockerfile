FROM alpine:latest

RUN apk add git openssh

WORKDIR /app

ENTRYPOINT ["/bin/sh", "-c", "while true; do echo hello world; sleep 360; done"]
