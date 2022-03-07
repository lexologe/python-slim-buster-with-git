FROM python:slim-buster

ARG DEBIAN_FRONTEND=noninteractive

RUN set -xe \
	&& echo "dash dash/sh boolean false" | debconf-set-selections \
	&& dpkg-reconfigure dash

RUN set -xe \
	&& apt-get update

RUN set -xe \
	&& apt-get install -y -q \
	git \
	ca-certificates

RUN set -xe \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/*
