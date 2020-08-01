# Port Forwarding

Para especificar puertos


`docker container run -it -p 8080:80 nginx`{{execute}}


Lo expone en el puerto `8080:`

https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/


EXPOSE en el Dockerfile si sirve :)

`docker container un -it -P -d nginx`{{execute}}

> lamentablemente en Katacoda no tengo como exponer esta variable.

`docker container ps`{{execute}}