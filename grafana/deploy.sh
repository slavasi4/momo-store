#!/bin/bash
#helm

set -e
helm repo add grafana ${NEXUS_URL}/repository/grafana-vduplyakin/ --username ${DOMAIN_USER} --password ${DOMAIN_PASSWORD}
helm repo update
helm upgrade --install grafana grafana/grafana