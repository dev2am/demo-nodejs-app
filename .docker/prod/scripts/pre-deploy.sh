#!/bin/bash

#SECRET_NAME=dev2am/devops/prod/demo-nodejs-app
aws secretsmanager get-secret-value --secret-id ${SECRET_NAME} --query SecretString --output text | jq -r 'to_entries|map("\(.key)=\(.value|tostring)")|.[]' > .env
