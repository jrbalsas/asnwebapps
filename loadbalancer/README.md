# Simple deployement with load balancer

This docker-compose deployment launches a **Traefik** load balancer for allowing access to a backend web app.

## Requeriments

Docker, docker-compose, make

## Usage

You can control the local container with ```docker compose``` commands, i.e. up, stop, start, down, etc. however, if available, the ```make``` utility can be used to simplify usual operations.

- Build and launch containers

```bash
$ make
```
- Monitor container resources

```bash
$ make mon
```
- Build containers images

```bash
$ make build
```
- Stop and remove containers

```bash
$ make clean
```
All balancers have enabled their monitoring interfaz accesible via web. Check their config file for accesing details, e.g. ``http://localhost/stats`` for haproxy or nginx

## Options
- Load balancer can be configured on its own config file (see load balancer folder). After editing config file, the loadbalancer must be restarted to get the new configuration, e.g. 

```bash
$ docker compose restart traefik
```