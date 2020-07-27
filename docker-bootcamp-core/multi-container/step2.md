## Docker Networks

Creemos una red local para que los contenedores puedan verse uno al otro.

Ademas corramos nuestra aplicacion formada por:

- WebApp (que se comunica con Redis para incrementar el numero de visitas)
- Redis (que lleva el conteo de cuantas visitas)

`docker network create mynetwork`{{execute T1}}


## Creemos Redis pero poniendolo en la red que acabamos de crear

`docker run --name redis -d --network mynetwork redis:alpine`{{execute T1}}

## Creemos el contenedor de nuestra app en la misma red que acabamos de crear y configuremos con variables de entorno.

`docker run -p 5500:5000 -it --network mynetwork -e "REDIS_HOST=redis"  mcano/docker:intro`{{execute T1}}


`REDIS_HOST=redis` se utiliza de esa manera por que es el service discovery que Docker provee por defecto.

### Visitemos nuestra App

https://[[HOST_SUBDOMAIN]]-5500-[[KATACODA_HOST]].environments.katacoda.com/
