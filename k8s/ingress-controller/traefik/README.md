# Traefik ingress controller

* Adapted from  https://doc.traefik.io/traefik/getting-started/install-traefik/

> **Disclaimer:** for testing purposes only

## Requeriments
* Functional local k8s cluster, e.g. kind, minikube
* `helm` and `kubectl` tools installed

## Usage 
* Execute instalation script `helm_install.sh` for deploying an ingress controller based in Traefik load balance in a testing k8s cluster
* Access ingress dashboard in url `/dashboard/`

## Uninstall

```bash
helm uninstall traefik -n traefik
kubectl delete namespace traefik
```
