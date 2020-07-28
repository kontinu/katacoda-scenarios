# Clonar repositorio

`git clone https://github.com/kontinu/container-bootcamps-src.git`{{execute}}

`cd container-bootcamps-src/core`{{execute}}



# [Docker Compose](https://docs.docker.com/compose/)


Para empezar a utilizar debe copiar el .env.example a .env


`cp .env.example .env`{{execute}}

> con estas podemos hacer "templating" :)

## Local Development - Hot Reload


`container-bootcamps-src/core/docker-compose.yml`{{open}}
`container-bootcamps-src/core/compose/docker-compose-hotreload.yml`{{open}}

Config nos permite ver como seria el yaml final *after templating*

`docker-compose -f docker-compose.yml -f compose/docker-compose-hotreload.yml config`{{execute}}



Up corre los servicios
`docker-compose -f docker-compose.yml  -f compose/docker-compose-hotreload.yml up`{{execute}}


## Visiste el app
https://[[HOST_SUBDOMAIN]]-5000-[[KATACODA_HOST]].environments.katacoda.com/



## Edite el app

Edite Línea #23 `<h2> Version: v3</h2>` coloque la version que ud quiera


`container-bootcamps-src/core/app/templates/index.html`{{open}}


Vuelva a visitar el app y observe su cambio.


https://[[HOST_SUBDOMAIN]]-5000-[[KATACODA_HOST]].environments.katacoda.com/
