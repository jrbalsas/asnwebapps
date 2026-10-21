# HAProxy ingress controller

* Adapted from  https://www.haproxy.com/documentation/kubernetes-ingress/community/installation/on-prem/

> **Disclaimer:** for testing purposes only

## Requeriments
* Functional local k8s cluster, e.g. kind, minikube
* `helm` and `kubectl` tools installed

## Usage 
* Execute instalation script `helm_install.sh` for deploying an ingress controller based in Haproxy load balance in a testing k8s cluster
* Check haproxy dashboard in url `/dashboard/`

## Uninstall

```bash
helm uninstall haproxy-ingress -n haproxy-controller
kubectl delete namespace haproxy-controller
```
