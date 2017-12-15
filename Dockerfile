FROM debian:jessie

ENV DEBIAN_FRONTEND noninteractive
ENV INITRD No

RUN apt-get update && apt-get install -y --no-install-recommends \
      curl locales \
    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8

ENV LANG en_US.utf8
