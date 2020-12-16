# Sample container with SpringBoot Insecure app

## Requeriments

Docker, make. *Optional:* jdk, mvn for local development

## Usage
You can control the local container with ```docker-compose``` commands, i.e. up, stop, start, down, etc. however, if available, the ```make``` utility can be used to simplify usual operations.

- Build app, container and launch container

```bash
$ make
```
- Build container image

```bash
$ make build
```
- Stop container and remove Image

```bash
$ make clean
```

## Options
- The path of the embedded database can be modified in ```application.properties```
