# Swarm Services


## 1. Habilite Visualizer en el puerto 8080

`docker service create  --name=viz  --publish=8080:8080/tcp  --constraint=node.role==manager  --mount=type=bind,src=/var/run/docker.sock,dst=/var/run/docker.sock  dockersamples/visualizer`{{execute HOST1}}

# espere hasta que diga "service converged"

https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/


---

## 2. Creemos un servicio sencillo

Comandos de `service`

`docker service --help`{{execute HOST1}}

# Cree un servicio con base en la imagen Nginx

> 💡 explicar el comando

`docker service create --name nginx-ws -p 8888:80 nginx`{{execute HOST1}}


# Listar los servicios actualmente corriendo

`docker service ls`{{execute HOST1}}



## Visite Nginx y Visualizer

**Vis**

https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/

**Nginx**

https://[[HOST_SUBDOMAIN]]-8888-[[KATACODA_HOST]].environments.katacoda.com/



**Escalemos los servicios**

`docker service scale nginx-ws=3`{{execute HOST1}}

> Go to your visualizer (click in your upper link port 8080) and see how the services are spread.

**Revise los logs del servicio**

`docker service logs nginx-ws`{{execute}}

**Borre el servicio**

`docker service rm nginx-ws`{{execute}}


Revise los servicio que actualmente estan corriendo.

`docker service ls`{{execute}}
