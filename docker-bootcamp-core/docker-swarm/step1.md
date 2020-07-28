# Clonar repositorio

`git clone https://github.com/kontinu/container-bootcamps-src.git`{{execute}}

`cd container-bootcamps-src/core`{{execute}}


# Setup

Revise ambos hostnames

- `hostname`{{execute HOST1}}
- `hostname`{{execute HOST2}}

## Master

check swarm is enabled


`docker info |grep -i swarm`{{execute HOST1}}


`docker swarm init || echo "Already in Swarm Mode"`{{execute HOST1}}


`docker node ls`{{execute HOST1}}


`docker swarm join-token worker`{{execute HOST1}}

## Workers

Copy mananger token join command and run in worker



