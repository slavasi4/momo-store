#!/bin/bash
#helm

set -e
helm repo add prometheus ${NEXUS_URL}/repository/prometheus-vduplyakin/ --username ${DOMAIN_USER} --password ${DOMAIN_PASSWORD}
helm repo update
helm upgrade --install prometheus prometheus/prometheus