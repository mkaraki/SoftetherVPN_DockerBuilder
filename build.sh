#!/bin/bash

apt-get update
apt-get install -y --no-install-recommends \
    build-essential \
    libncurses5 \
    libncurses5-dev \
    libreadline8 \
    libreadline-dev \
    libssl1.1 \
    libssl-dev \
    zlib1g \
    zlib1g-dev \
    zip

git clone ${REPO} srcdir
cd srcdir

git checkout ${BRANCH}
git checkout ${COMMIT}

./configure
make

mkdir /article
cp -r ./bin/* /article