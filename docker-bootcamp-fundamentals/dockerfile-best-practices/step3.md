# Multistage builds

Esto ya es super avanzado.

- Stage1: compilar y sacar binario(s)
- Stage2: copiar binario de Stage1 y usar ese en una imagen runtime

Usemos una simple app en C

**Abrir**

`katacoda-scenarios/1.getting-started-docker/dockerfile-bestpractices/src/loopy.c`{{open}}

`katacoda-scenarios/1.getting-started-docker/dockerfile-bestpractices/3.Dockerfile`{{open}}


`cd katacoda-scenarios/1.getting-started-docker/dockerfile-bestpractices/ 2>/dev/null;  docker build -t step3 -f 3.Dockerfile .`{{execute}}

e inspeccionemos el tamaño

`docker image ls |grep step3`{{execute}}

> Ojo: no se puede usar en todos los casos