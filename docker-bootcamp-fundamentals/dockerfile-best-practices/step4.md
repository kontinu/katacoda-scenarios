# Parametrizar Docker Builds


**Abrir**


`katacoda-scenarios/1.getting-started-docker/dockerfile-bestpractices/4.Dockerfile`{{open}}


`cd katacoda-scenarios/1.getting-started-docker/dockerfile-bestpractices/ 2>/dev/null;  docker build -t step3 -f 3.Dockerfile .`{{execute}}

e inspeccionemos el tamaño

`docker image ls |grep step3`{{execute}}

> Ojo: no se puede usar en todos los casos