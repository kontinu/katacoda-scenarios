# Clonar repositorio

`git clone https://github.com/kontinu/container-bootcamps-src.git`{{execute}}

`cd container-bootcamps-src/core`{{execute}}


# Setup

Revise ambos hostnames

- `hostname`{{execute T1}}
- `hostname`{{execute T2}}

## Master

check swarm is enabled


`docker info |grep -i swarm`{{execute}}


`docker swarm init || echo "Already in Swarm Mode"`{{execute}}


`docker node ls`{{execute}}


`docker swarm join-token worker`{{execute}}

## Workers

Copy mananger token join command and run in worker



