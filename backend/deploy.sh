#!/bin/bash
#backend
set +e
docker login -u ${CI_REGISTRY_USER} -p ${CI_REGISTRY_PASSWORD} ${CI_REGISTRY}
docker network create -d bridge momo || true
docker pull ${CI_REGISTRY_IMAGE}/backend:latest
docker stop backend || true
docker rm backend || true

set -e
docker run -d --name backend --network momo ${CI_REGISTRY_IMAGE}/backend:latest