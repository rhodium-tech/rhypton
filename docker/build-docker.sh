#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-rhyptonpay/rhyptond-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/rhyptond docker/bin/
cp $BUILD_DIR/src/rhypton-cli docker/bin/
cp $BUILD_DIR/src/rhypton-tx docker/bin/
strip docker/bin/rhyptond
strip docker/bin/rhypton-cli
strip docker/bin/rhypton-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
