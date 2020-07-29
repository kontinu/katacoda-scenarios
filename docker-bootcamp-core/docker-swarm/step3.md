
---
## 3. Simple Stack deploy

>Recuerda que es un stack?

inspeccionemos nuestra declaracion de stack y entendamosla.

`cat docker-compose.simple.yml`{{execute}}


deploy it

`docker stack deploy -c docker-compose.simple.yml --resolve-image=always --with-registry-auth compose_swarm`{{execute}}

> Nota: stack deploy es un comando idempotente

`docker service ls`{{execute}}


<br>

**App**

https://[[HOST_SUBDOMAIN]]-5000-[[KATACODA_HOST]].environments.katacoda.com/

**Vis**

https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/

<br>

mostrar el status actual

`docker stack ps compose_swarm`{{execute}}

---
## 4. Environment Variables injection

> 💡 This will give you a small intro to how you can manage configuration per environment (dev,qa,stage,production)


Inspeccione el YAML y encuentre esta directiva "FOO=${FOO:-BAR}" tratemos de reemplazar.

`cat docker-compose.simple.yml`{{execute}}

Inyectemos el nuevo valor

`export FOO="Development"`{{execute}}

Hagamos deploy y veamos hacer el cambio automaticamente.

`docker stack deploy -c docker-compose.simple.yml --resolve-image=always --with-registry-auth compose_swarm`{{execute}}



`docker stack services compose_swarm`{{execute}}




**PROD**

Observe como seria un deploy a produccion, podemos usar `.configs/production.env`


`docker stack deploy -c <(docker-compose --env-file .configs/production.env -f docker-compose.simple.yml config ) --resolve-image=always --with-registry-auth compose_swarm_prod`{{execute}}


https://[[HOST_SUBDOMAIN]]-9090-[[KATACODA_HOST]].environments.katacoda.com/



<br>

> info "🥇"
> Dare you to put your own Text there, see how sometimes the application becomes unaccessible?

---
## 5. Scale web app

- Quisiera manejar mas trafico ?
- Quisiera que su app fuera mas tolerante a fallos ?
- Quisiera alta disponibilidad ?

Swarm got you covered

`docker service scale compose_swarm_web=4`{{execute}}


<br>

https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/

---
