#!/bin/bash

export $(awk -F= '!/^#/ && /^APP_ENV=|^DOCKER_CONTAINER_NAME=|^DOCKER_IMAGE_NAME=|^DOCKER_IMAGE_TAG=/ && NF>0 { print $1 "=" $2 }' .env)

docker --version

docker build --no-cache --progress=plain -f Dockerfile -t ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG} .
#docker build --progress=plain -f Dockerfile -t ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG} .

docker images | grep ${DOCKER_IMAGE_NAME}
echo "...[done] build image ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG}"
