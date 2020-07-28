# Swarm Steps



## 1. Habilite Visualizer en el puerto 8080

`docker service create  --name=viz  --publish=8080:8080/tcp  --constraint=node.role==manager  --mount=type=bind,src=/var/run/docker.sock,dst=/var/run/docker.sock  dockersamples/visualizer`{{execute HOST1}}

# espere hasta que diga "service converged"

https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/


---

## 2. Creemos un servicio sencillo

Comandos de `service`

`docker service --help`{{execute HOST1}}

# Cree un servicio con base en la imagen Nginx

`docker service create --name nginx-ws -p 80:80 nginx`{{execute HOST1}}


# List the current services

`docker service ls`{{execute HOST1}}



## Visite Nginx y Visualizer

https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/


https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/



**Escalemos los servicios**

`docker service update --replicas 3 nginx-ws`{{execute HOST1}}

> Go to your visualizer (click in your upper link port 8080) and see how the services are spread.

**Revise los logs del servicio**
`docker service logs nginx-ws`{{execute}}

**Borre el servicio**
`docker service rm nginx-ws`{{execute}}


Revise los servicio que actualmente estan corriendo.

`docker service ls`{{execute}}
