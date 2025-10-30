#!/bin/bash

## Instalación con despliegue prometheus para recopilación de métricas en k8s
## 
## Graphana default credentials: admin/prom-operator


helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo add stable https://charts.helm.sh/stable
helm repo update

helm install kind-prometheus prometheus-community/kube-prometheus-stack --create-namespace -n prometheus -f ./prometheus-helm-config.yml

kubectl get all -n prometheus
