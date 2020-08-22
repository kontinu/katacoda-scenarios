# Parametrizar Docker Builds


**Abrir**


`katacoda-scenarios/1.getting-started-docker/dockerfile-bestpractices/4.Dockerfile`{{open}}


`cd katacoda-scenarios/1.getting-started-docker/dockerfile-bestpractices/ 2>/dev/null;  docker build -t step4 -f 4.Dockerfile .`{{execute}}

e inspeccionemos el historial

`docker image history step4`{{execute}}


Compilemos con otra imagen

`cd katacoda-scenarios/1.getting-started-docker/dockerfile-bestpractices/ 2>/dev/null;  docker build --build-arg="VERSION=3.3"  -t step4 -f 4.Dockerfile .`{{execute}}

`docker image history step4`{{execute}}