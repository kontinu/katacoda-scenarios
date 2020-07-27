## Docker Networks

Creemos una red local para que los contenedores puedan verse uno al otro; dentro de una red creada de esta manera hay Service Discovery automáticamente. Esto es podemos descubrir a un contenedor llamado "web1" mediante su nombre propio.

Ademas corramos nuestra aplicacion formada por:

- WebApp (que se comunica con Redis para incrementar el numero de visitas)
- Redis (que lleva el conteo de cuantas visitas)

`docker network create mynetwork`{{execute T1}}


`docker network ls`{{execute T1}}

## Redis

Creemos Redis pero poniendolo en la red que acabamos de crear

`docker run --name redis -d --network mynetwork redis:alpine`{{execute T1}}

## Nuestra App

Creemos el contenedor de nuestra app en la misma red que acabamos de crear y configuremos con variables de entorno.

`docker run -p 5500:5000 -it --network mynetwork -e "REDIS_HOST=redis"  mcano/docker:intro`{{execute T1}}


`REDIS_HOST=redis` se utiliza de esa manera por que es el service discovery que Docker provee por defecto.

### Visitemos nuestra App

https://[[HOST_SUBDOMAIN]]-5500-[[KATACODA_HOST]].environments.katacoda.com/
