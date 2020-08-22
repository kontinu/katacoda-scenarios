# Unir instrucciones en RUN

podemos unir instrucciones en un single RUN

`1.getting-started-docker/dockerfile-bestpractices/0.Dockerfile`{{open}}



`cd 1.getting-started-docker/dockerfile-bestpractices/;  docker build -t step1 -f 0.Dockerfile .`{{execute}}

E inspeccionemos el tamaño

`docker image ls |grep step1`{{execute}}

# .dockerignore

`ls  1.getting-started-docker/dockerfile-bestpractices/`{{execute}}