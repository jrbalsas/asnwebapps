#!/bin/bash

## Instalación de controlador Ingress Traefik en cluster k8s
## https://doc.traefik.io/traefik/getting-started/install-traefik/#use-the-helm-chart

helm repo add traefik https://traefik.github.io/charts

helm repo update

echo "Installing traefik controller in k8s. Please wait..."
helm install traefik traefik/traefik --create-namespace -n traefik -f ./traefik-helm-config.yml --wait

kubectl get all -n traefik

