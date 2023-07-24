#!/bin/bash
#helm

set -e
helm repo add nexus ${NEXUS_URL}/repository/momo-store-vduplyakin/ --username ${DOMAIN_USER} --password ${DOMAIN_PASSWORD}
helm repo update
helm upgrade --install momo-store nexus/momo-store