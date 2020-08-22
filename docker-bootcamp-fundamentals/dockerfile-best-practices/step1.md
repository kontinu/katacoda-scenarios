# Unir instrucciones en RUN

podemos unir instrucciones en un single RUN

`katacoda-scenarios/1.getting-started-docker/dockerfile-bestpractices/0.Dockerfile`{{open}}



`cd katacoda-scenarios/1.getting-started-docker/dockerfile-bestpractices/ 2>/dev/null;  docker build -t step1 -f 0.Dockerfile .`{{execute}}

E inspeccionemos el tamaño

`docker image ls |grep step1`{{execute}}

# .dockerignore

`ls  -ltrash katacoda-scenarios/1.getting-started-docker/dockerfile-bestpractices/ignore/`{{execute}}