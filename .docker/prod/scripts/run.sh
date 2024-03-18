#!/bin/bash

#export $(grep -v '^#' .env | xargs)
export $(awk -F= '!/^#/ && /^APP_ENV=|^DOCKER_CONTAINER_NAME=|^DOCKER_IMAGE_NAME=|^DOCKER_IMAGE_TAG=/ && NF>0 { print $1 "=" $2 }' .env)

docker compose -f docker-compose.yml -p ${DOCKER_CONTAINER_NAME}-${APP_ENV} up -d

