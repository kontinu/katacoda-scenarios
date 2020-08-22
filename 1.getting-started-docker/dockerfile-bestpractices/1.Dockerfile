#! Never use latest
FROM alpine:3.11

RUN apk add --update make gcc

# Nunca usar . al menos que exista un .dockerignore
COPY . /app
