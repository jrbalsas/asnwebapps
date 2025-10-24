# Sample configuration of KIND k8s cluster

## Requeriments
* Docker installation
* `kind` tool installed

## Usage 
* Edit cluster config `kind-cluster.yml`  to define the characteristics of the desired cluster
* Create cluster with command:
```sh
 $ kind create cluster --config ./kind-cluster.yml
```