# Metric-server controller for k8s cluster

Metric-server is a basic resource in k8s cluster for gathering metrics from resources (cpu/memory usage) in the cluster. It is needed for comands like `kubectl top pod` or `kubectl top nodes`

## Requeriments
* Functional local k8s cluster, e.g. kind, minikube
* `helm` and 'kubectl' tools installed

## Instalation 
* Execute instalation script `helm_install.sh` for deploying the service in a testing k8s cluster