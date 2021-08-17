FROM ubuntu:20.04

ENV REPO=https://github.com/SoftEtherVPN/SoftEtherVPN_Stable
ENV BRANCH=master
ENV COMMIT=-

RUN apt-get update \
    && apt-get install -y \
    git \
    && rm -rf /var/lib/apt/lists/*

RUN git config --global http.sslVerify false

COPY build.sh /tmp/build.sh

WORKDIR /tmp/

CMD ["/bin/bash", "/tmp/build.sh"]