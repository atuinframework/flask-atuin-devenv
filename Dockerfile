# vim:set ft=dockerfile:

# LOCAL DEVELOPMENT Dockerfile Test uWSGI

FROM python:2

LABEL maintainer="Paolo Casciello <paolo.casciello@scalebox.it>"

RUN apt-get update && apt-get install -y \
    libxml2-dev \
    libxslt1-dev

RUN mkdir -vp /var/wsgi

COPY ./requirements.txt /var/wsgi/

RUN mkdir -vp /var/wsgi-commands

COPY ./start.sh /var/wsgi-commands

WORKDIR /var/wsgi

CMD ["/var/wsgi-commands/start.sh"]
