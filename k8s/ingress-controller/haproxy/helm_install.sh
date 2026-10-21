#!/usr/bin/env bash
set -euo pipefail

# Instalación del controlador Ingress HAProxy mediante Helm.

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
RELEASE_NAME="haproxy-ingress"
NAMESPACE="haproxy-controller"
CHART="haproxytech/kubernetes-ingress"
CHART_VERSION="1.54.3"
VALUES_FILE="${SCRIPT_DIR}/haproxy-helm-config.yml"

helm repo add haproxytech https://haproxytech.github.io/helm-charts
helm repo update haproxytech

helm upgrade --install "${RELEASE_NAME}" "${CHART}" \
  --version "${CHART_VERSION}" \
  --create-namespace \
  --namespace "${NAMESPACE}" \
  --values "${VALUES_FILE}" --wait

echo
kubectl get all -n haproxy-controller
