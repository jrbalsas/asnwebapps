#!/bin/bash

## Instalación de servicio básico de recopilación de métricas en k8s
## https://artifacthub.io/packages/helm/metrics-server/metrics-server


helm repo add metrics-server https://kubernetes-sigs.github.io/metrics-server/
helm repo update

helm install metrics-server metrics-server/metrics-server --create-namespace -n metrics-server -f ./metrics-server-helm-config.yml

kubectl get all -n metrics-server

