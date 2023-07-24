#!/bin/bash
#frontend
set +e
docker login -u ${CI_REGISTRY_USER} -p ${CI_REGISTRY_PASSWORD} ${CI_REGISTRY}
docker network create -d bridge momo || true
docker pull ${CI_REGISTRY_IMAGE}/frontend:latest
docker stop frontend || true
docker rm frontend || true

set -e
docker run -d --name frontend -p 80:80 --network momo ${CI_REGISTRY_IMAGE}/frontend:latest