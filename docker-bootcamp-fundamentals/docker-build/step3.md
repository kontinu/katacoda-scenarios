## Corramos nuestro contenedor

`docker run -it -p 8080:80 --rm -d web:v1.0`{{exeute}}

https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/


> vea el nombre de la IMAGE
`docker ps`{{execute}}

Es nuestra imagen!!

---
## Nueva version v1.1

`index.html`{{open}}

> Edite lo que usted desee en HTML

volvamos a construir.

`docker image build --tag web:v1.1 .`{{execute}}



Local images

`docker image ls`{{execute}}

> inspeccione cada una de las COLUMNAS.

---

# Run v1.1
Corramos nuestro contenedor


`docker run -it -p 9090:80 --rm -d web:v1.1`{{exeute}}
> ojo con el puerto

https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/


> vea el nombre de la IMAGE
`docker ps`{{execute}}

Es nuestra imagen!!