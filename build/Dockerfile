# mkdocs can't build on python 3.10
FROM python:3 AS dependencies

RUN mkdir /build && chmod a+rwx /build
VOLUME /build
# Poetry virtualenv
ENV HOME=/build/home

RUN pip install poetry

WORKDIR /repo
VOLUME /repo

