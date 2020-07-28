
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
