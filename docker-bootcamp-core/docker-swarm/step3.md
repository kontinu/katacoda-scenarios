
---
## 3. Simple Stack deploy

>Recuerda que es un stack?

inspeccionemos nuestra declaracion de stack y entendamosla.

`container-bootcamps-src/core/docker-compose.simple.yml`{{open}}


deploy it

`docker stack deploy -c docker-compose.simple.yml --resolve-image=always --with-registry-auth compose_swarm`{{execute}}

> Nota: stack deploy es un comando idempotente

`docker service ls`{{execute}}


<br>

APP

https://[[HOST_SUBDOMAIN]]-5000-[[KATACODA_HOST]].environments.katacoda.com/

VISUALIZER

https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/

<br>
Show current status

`docker stack ps compose_swarm`{{execute}}

---
## 4. Environment Variables injection

> 💡 This will give you a small intro to how you can manage configuration per environment (dev,qa,stage,production)


inspect the stack file and try to find the directive "FOO=${FOO:-BAR}"

`container-bootcamps-src/core/docker-compose.simple.yml`{{open}}

inject the new value

`export FOO="Development"`{{execute}}

deploy it and see it update automatically

`docker stack deploy -c docker-compose.simple.yml --resolve-image=always --with-registry-auth compose_swarm`{{execute}}



`docker stack services compose_swarm`{{execute}}




PROD

`docker stack deploy -c <(docker-compose --env-file .configs/production.env -f docker-compose.simple.yml config ) --resolve-image=always --with-registry-auth compose_swarm_prod`{{execute}}




<br>

> info "🥇"
> Dare you to put your own Text there, see how sometimes the application becomes unaccessible?

---
## 5. Scale web app

- Want to handle more traffic?
- Want to be more resilient?
- Want High Availability?

Swarm got you covered

`docker service scale compose_swarm_web=4`{{execute}}


<br>

https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/

---

## 6. Declarative Deployment Replicas
Instead of scaling your service everytime, why don't we declare it?


Inspect the .replicas.yml file and find "deploy: " section

`container-bootcamps-src/core/compose/docker-compose.replicas.yml`{{open}}

### Deploy new update for the stack

`DEPLOYMENT_REPLICAS=7 docker stack deploy -c compose/docker-compose.replicas.yml --resolve-image=always compose_swarm`{{execute}}



https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/

---
## 7. Rolling Updates
Rolling updates let you update your app with zero-downtime.
<br>

> 💡 v1 has been running for 2 weeks now and you are ready to ship your new and hottest feature on v2, with rolling updates you can easily ship v2 let it coexist with v1 until v1 gets fully drain (removed) and v2 gets out.



inspect .rolling file and find the "update_config:" section, try to understand it

`container-bootcamps-src/core/compose/docker-compose.rolling.yml`{{open}}


Deploy/update this new configuration for your stack


`docker stack deploy -c <(docker-compose -f compose/docker-compose.rolling.yml config) --resolve-image=always compose_swarm`{{execute}}

update image

`docker stack deploy -c <(IMAGE_NAME=mcano/compose-to-swarm:v2 docker-compose -f compose/docker-compose.rolling.yml config) --resolve-image=always compose_swarm`{{execute}}



> Lets force update to see the rolling updates

Do this how many times you need in order to see it working.

graceful full restart of your app
`docker service update --force compose_swarm_web`{{execute}}

> Go to your visualizer (click in your upper link port 8080) and see how the services are spread.



---
## 8. Host limit resource

One can prevent memory starvation or CPU consumption of your app by adding "resources:" section


inspect .resources file and find the "resources:" section, try to understand it

`container-bootcamps-src/core/compose/docker-compose.resources.yml`{{execute}}

Deploy/update this new configuration for your stack


`docker stack deploy -c compose/docker-compose.resources.yml --resolve-image=always compose_swarm`{{execute}}



## 9. Health Check and Self healing
Auto restarts and health-check can also be possible by adding "healthcheck: "



Run docker ps first to see there's no (healthy)
`docker ps`{{execute}}

inspect .health file and find the "healthcheck:" section, try to understand it

`container-bootcamps-src/core/compose/docker-compose.health.yml`{{open}}

Deploy/update this new configuration for your stack

`docker stack deploy -c compose/docker-compose.health.yml --resolve-image=always compose_swarm`{{execute}}


after a few seconds run

`docker ps`{{execute}}


Do a: `docker service ps compose_swarm_web`, Identify the placement of a container (identify on which node is running).

Jump into that node and run `docker ps` find the container and its ID (first column), kill it and see how it self heals

`docker kill <container ID>`

> info "info"
> Go to your visualizer (click in your upper link port 8080) and see how the services are spread and self healed.



## Full Production + LB

`docker stack deploy -c <(docker-compose --env-file .configs/production.env -f docker-compose.yml config ) --resolve-image=always --with-registry-auth compose_swarm_prod`{{execute}}

