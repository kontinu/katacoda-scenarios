## Repositorio

`git clone https://github.com/kontinu/katacoda-scenarios.git`{{execute}}

`cd 1.getting-started-docker/dockerfile-bestpractices/`{{execute}}

# Basics

Podemos hacer todo por separado.

`1.getting-started-docker/dockerfile-bestpractices/0.Dockerfile`{{open}}


Ese Dockerfile agregaria 6 capas. Una capa por cada linea.

- FROM
- ADD
- COPY
- RUN

son los 4 comandos que agregan capas.

Probemos construirla

`cd 1.getting-started-docker/dockerfile-bestpractices/;  docker build -t step0 -f 0.Dockerfile .`{{execute}}

E inspeccionemo

`docker image history step0`{{execute}}


# Algunas cosas que estan mal!

TODO, desde el FROM hasta cada capa.


