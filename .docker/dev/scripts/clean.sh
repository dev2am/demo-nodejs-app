#!/bin/bash

export $(awk -F= '!/^#/ && /^APP_ENV=|^DOCKER_CONTAINER_NAME=|^DOCKER_IMAGE_NAME=|^DOCKER_IMAGE_TAG=/ && NF>0 { print $1 "=" $2 }' .env)

docker images -a | grep "${DOCKER_IMAGE_NAME}" | awk '{print $3}' | xargs docker rmi

