# Sample Kubernetes deployments and resources

## Requirements

Kubernetes cluster, e.g. DKS, kind, minikube, microk8s, ...

## Install local ingress controller

`ingress-controller` folder contains diferent ingress controlers for using ingress resources in local clusters, e.g. in Docker Kubernetes System, DKS, kind, minikube...

> Currently only traefik helm based installation is recommended.

## Deploy Samples

After installing ingress controller, just use `apply` command and select file or folder with k8s deployment instructions, e.g 

```bash
$ kubectl apply -f testapp/
```

or

```bash
$ kubectl apply -f testapp-waf/
```

Check published NodePort to access web application, e.g.

```bash
$ kubectl get services -o wide
$ curl http://localhost:SERVICE_PORT/
```

## Delete samples

Use `delete` command with the same resource files/folders

```bash
$ kubectl delete -f testapp/
```
