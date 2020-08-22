# Existen Mejores practicas al momento de desarrollar tu Dockerfile.

> Segun lo recomendado por [Docker](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/) y por experiencia



- Entender el build context
- Usar .dockerignore
- Usar multi-stage-builds de ser posible
- No instalar paquetes innecesarios
- Desacoplar aplicaciones
- Minimizar cantidad de capas (RUN, COPY, ADD las crean)
- Ordenar A-Z multilines “&& \”
- Aprovechar y entender el build cache


