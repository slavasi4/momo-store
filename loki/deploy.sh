#!/bin/bash
#helm

set -e
helm repo add loki ${NEXUS_URL}/repository/loki-vduplyakin/ --username ${DOMAIN_USER} --password ${DOMAIN_PASSWORD}
helm repo update
helm upgrade --install loki loki/loki