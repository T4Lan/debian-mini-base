FROM debian:bullseye-slim
LABEL maintainer="m@matiargs.com"

ARG TZ="America/Argentina/Buenos_Aires"

RUN apt-get update && apt-get dist-upgrade -y
RUN apt install -y unzip wget curl software-properties-common apt-transport-https lib32gcc1
RUN apt clean

RUN echo "$TZ" > /etc/timezone
RUN  ln -fs /usr/share/zoneinfo/$TZ /etc/localtime