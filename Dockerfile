FROM debian:bullseye-slim

LABEL org.opencontainers.image.authors="admin@t4lan.com"
LABEL org.opencontainers.image.source="https://github.com/T4Lan/debian-mini-base"

ARG TZ="America/Argentina/Buenos_Aires"

RUN apt-get update && apt-get dist-upgrade -y
RUN apt-get install -y unzip wget curl software-properties-common apt-transport-https
RUN apt-get clean

RUN echo "$TZ" > /etc/timezone
RUN  ln -fs /usr/share/zoneinfo/$TZ /etc/localtime