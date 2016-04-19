# vim:set ft=dockerfile:

# LOCAL DEVEL Dockerfile Test uWSGI

FROM blowb/uwsgi:python2

MAINTAINER Paolo Casciello <paolo.casciello@scalebox.it>

RUN apt-get update && apt-get install -y \
    libxml2-dev \
    libxslt1-dev \
    libcairo2 \
    libpango1.0-0 \
    libgdk-pixbuf2.0-0 \
    libffi-dev

COPY ./requirements.txt /var/uwsgi/

RUN mkdir -vp /var/uwsgi-commands

COPY ./start.sh /var/uwsgi-commands

WORKDIR /var/uwsgi

RUN pip install -r requirements.txt

ENV ADDITIONAL_ARGUMENTS="--http 0.0.0.0:9001 --callable=app"

ENV WSGI_MODULE="handler"

CMD ["/var/uwsgi-commands/start.sh"]
