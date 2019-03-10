FROM jenkins/jenkins:lts
MAINTAINER Nitin Tripathi <nitintripathi@hotmail.com>
USER root
ENV PATH="/usr/local/bin:/usr/local/sbin:${PATH}"

RUN curl -L -o /usr/local/bin/docker-compose https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m)
RUN chmod +x /usr/local/bin/docker-compose
