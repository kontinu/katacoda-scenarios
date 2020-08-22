FROM alpine

RUN apk add --update

RUN apk add --update make

RUN apk add --update gcc

COPY . /app/

