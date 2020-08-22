# Existen Mejores practicas al momento de desarrollar tu Dockerfile.

> Segund lo recomendado por [Docker](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/) y por experience
entre esas :

- Entender el build context
- Usar .dockerignore
- Usar multi-stage-builds de ser posible
- No instalar paquetes innecesarios
- Desacoplar aplicaciones
- Minimizar cantidad de capas (RUN, COPY, ADD las crean)
- Ordenar A-Z multilines “&& \”
- Aprovechar y entender el build cache


## Repositorio

`git clone https://github.com/kontinu/katacoda-scenarios.git`{{execute}}

`cd 1.getting-started-docker/dockerfile-bestpractices/`{{execute}}