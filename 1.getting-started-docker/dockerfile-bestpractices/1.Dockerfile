#! Never use latest
FROM alpine:3.11

RUN apk add --update make gcc 

COPY . /app
