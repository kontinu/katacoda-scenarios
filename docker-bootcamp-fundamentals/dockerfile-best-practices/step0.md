## Repositorio

`git clone https://github.com/kontinu/katacoda-scenarios.git`{{execute}}

`cd katacoda-scenarios/1.getting-started-docker/dockerfile-bestpractices/`{{execute}}

# Basics

Podemos hacer todo por separado.

`katacoda-scenarios/1.getting-started-docker/dockerfile-bestpractices/0.Dockerfile`{{open}}


Ese Dockerfile agregaria 1 capa por cada linea.

- FROM
- ADD
- COPY
- RUN

son los 4 comandos que agregan capas.

Probemos construirla

`cd katacoda-scenarios/1.getting-started-docker/dockerfile-bestpractices/ >/dev/null;  docker build -t step0 -f 0.Dockerfile .`{{execute}}

E inspeccionemo

`docker image history step0`{{execute}}


# Algunas cosas que estan mal!

TODO, desde el FROM hasta cada capa.


