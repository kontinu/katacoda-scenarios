# Unir instrucciones en RUN

podemos unir instrucciones en un single RUN

**Abrir**
`katacoda-scenarios/1.getting-started-docker/dockerfile-bestpractices/1.Dockerfile`{{open}}



`cd katacoda-scenarios/1.getting-started-docker/dockerfile-bestpractices/ 2>/dev/null;  docker build --no-cache -t step1 -f 1.Dockerfile .`{{execute}}

E inspeccionemos el tamaño

`docker image ls |grep step1`{{execute}}

# .dockerignore

`ls  -ltrash ignore/`{{execute}}

**Abrir**
`katacoda-scenarios/1.getting-started-docker/dockerfile-bestpractices/.dockerignore`{{open}}

Que pasa si removemos? y volvemos a construir?