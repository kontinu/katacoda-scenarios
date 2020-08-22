# Aprovechar app managers para instalar y desinstalar

podemos aprovechar los manejadores de paquetes para instalar las aplicaciones durante BUILD pero desinstalarlas despues de usarlas. Aparte ordenamos los paquetes por nombre.

**Abrir**

`katacoda-scenarios/1.getting-started-docker/dockerfile-bestpractices/2.Dockerfile`{{open}}



`cd katacoda-scenarios/1.getting-started-docker/dockerfile-bestpractices/ 2>/dev/null;  docker build -t step2 -f 2.Dockerfile .`{{execute}}

E inspeccionemos el tamaño

`docker image ls |grep step2`{{execute}}

