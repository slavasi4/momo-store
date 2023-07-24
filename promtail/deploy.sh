#!/bin/bash
#helm

set -e
helm repo add promtail ${NEXUS_URL}/repository/promtail-vduplyakin/ --username ${DOMAIN_USER} --password ${DOMAIN_PASSWORD}
helm repo update
helm upgrade --install promtail promtail/promtail