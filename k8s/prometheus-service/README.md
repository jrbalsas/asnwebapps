# Prometheus k8s installation

Prometheus installation with Grafana and Alert Manager for local k8s cluster experiments

## Requeriments

* Functional local k8s cluster, e.g. DKE, kind, minikube, with ingress controller installed, e.g. traefik
* `helm` and 'kubectl' tools installed

## Instalation 
* Execute instalation script `helm_install.sh` for deploying the service in a testing k8s cluster

## Usage

Access to specific path in cluster ip, e.g. in DKS cluster
* http://localhost/grafana  (credentials: admin/prom-operator)
* http://localhost/prometheus
* http://localhost/alert-manager