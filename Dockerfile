# Dockerfile for Moodle instance with Postgres.
FROM debian:11
LABEL maintainer="Nerd4ever Desenvolvimento Tecnlógico e Inovação Ltda <repo@nerd4ever.com.br>"

ENV TZ=UTC
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    gnupg2  \
    ntp \
    lsb-release \
    apt-transport-https \
    ca-certificates \
    wget \
    unzip \
    iputils-ping \
    sqlite3 \
    curl \
    nginx \
    tzdata \
    dos2unix \
    git \
    nodejs \
    npm \
    build-essential \
    ant

RUN apt-get clean autoclean && apt-get autoremove -y

RUN mkdir -p /workspace

WORKDIR /workspace

VOLUME ["/workspace"]
EXPOSE 80

CMD ["tail","-f", "/var/log/lastlog"]