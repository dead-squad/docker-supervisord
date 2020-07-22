FROM alpine:latest
MAINTAINER stewart rio <stwrtrio@gmail.com>

RUN apk update && apk add py-pip
RUN pip install supervisor

COPY supervisord.conf /etc/supervisord.conf

ENTRYPOINT ["supervisord", "--nodaemon", "--configuration", "/etc/supervisord.conf"]
