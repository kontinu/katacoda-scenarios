
## 6. Declarative Deployment Replicas
En lugar de escalar cada vez o contratar a alguien para que lo haga  🐿

Mejor declaramos el estado deseado.


inspeccione el archivo .replicas.yml  y encuentre  la seccion "deploy: "

`cat compose/docker-compose.replicas.yml`{{execute}}

### Deploy new update for the stack

`DEPLOYMENT_REPLICAS=7 docker stack deploy -c compose/docker-compose.replicas.yml --resolve-image=always compose_swarm`{{execute}}



https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/

---
## 7. Rolling Updates
Rolling updates para tener deployments con zero-downtime.


<br>

> 💡 v1 ha estado corriendo por casi 2 semanas y estamos listos para mandar a produccion nuestro nuevo caracteristica v2, con estos rollin updates facilmente podemos actualizar v1 sin tener ninguna caida durante el upgrade.



inspeccione el archivo .rolling.yaml y encuentre la seccion "update_config:" intente entenderla.

`cat compose/docker-compose.rolling.yml`{{execute}}


Deploy/update this new configuration for your stack


`docker stack deploy -c <(docker-compose -f compose/docker-compose.rolling.yml config) --resolve-image=always compose_swarm`{{execute}}

actualicemos la imagen.

`docker stack deploy -c <(IMAGE_NAME=mcano/compose-to-swarm:v2 docker-compose -f compose/docker-compose.rolling.yml config) --resolve-image=always compose_swarm`{{execute}}



> forcemos estos rolling updates

Haga esto cuantas veces sea necesario y observe visualizer para ver que es lo que sucede detras de camaras.
reiniciemos nuestra app de manera graceful.


`docker service update --force compose_swarm_web`{{execute}}




---
## 8. Host limit resource

Uno puede prevenir que un contenedor en particular consuma toda nuestra Memoria y/o CPU usando la seccion "resources:"


inspeccione el archivo .resources y encuentre la seccion "resources:", intente entenderla.

`container-bootcamps-src/core/compose/docker-compose.resources.yml`{{execute}}

Deploy/update.


`docker stack deploy -c compose/docker-compose.resources.yml --resolve-image=always compose_swarm`{{execute}}



## 9. Health Check and Self healing

Los reinicios automaticos en caso de fallo y  healthcheck tambien son posibles utilizando "healthcheck: "



Run docker ps first to see there's no (healthy)
`docker ps`{{execute}}

inspeccione el archivo .health y encuentre la seccion "healthcheck:" , intente entenderla.

`cat compose/docker-compose.health.yml`{{execute}}

Deploy/update

`docker stack deploy -c compose/docker-compose.health.yml --resolve-image=always compose_swarm`{{execute}}


Despues de algunos segundos ...


`docker ps`{{execute}}


Do a: `docker service ps compose_swarm_web`, Identify the placement of a container (identify on which node is running).

Jump into that node and run `docker ps` find the container and its ID (first column), kill it and see how it self heals

`docker kill <container ID>`

> info "info"
> Go to your visualizer (click in your upper link port 8080) and see how the services are spread and self healed.



## Full Production + LB

`docker stack deploy -c <(docker-compose --env-file .configs/production.env -f docker-compose.yml config ) --resolve-image=always --with-registry-auth compose_swarm_prod`{{execute}}

