FROM alpine:3.9

MAINTAINER Raymond Ho <chunkiat82@gmail.com>

RUN apk add --no-cache openjdk8

COPY . /app

CMD /app/bin/cbes