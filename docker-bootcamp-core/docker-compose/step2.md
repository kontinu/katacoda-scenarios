
## Workflow

![1](assets/workflow.png)




### Template docker-compose.yml file

En compose se puede inyectar variables de entorno de dos maneras:
- .env file
- env vars

En los archivos .yml se puede utilizar la notación `${VAR:-default}` para poder reemplazar estas variables.

`container-bootcamps-src/core/.env`{{open}}

`container-bootcamps-src/core/docker-compose.yml`{{open}}



`docker-compose config`{{execute interrupt }}

### Build

**build and up**


`docker-compose -f docker-compose.yml up --build`{{execute}}


**solo build**
`docker-compose -f docker-compose.yml build`{{execute}}


> cambie su .env y apunte a un repository valido.
> probablemenet necesitara de hacer docker login

**push**

`docker-compose -f docker-compose.yml push`{{execute}}

## Start detached

`docker-compose up -d`{{execute interrupt}}




## Networking

`docker network ls`{{execute}}

`docker network inspect $(docker network ls --format "{{.Name}}" --filter name=skynet)`{{execute}}


## docker-compose useful commands


running containers

`docker-compose ps`{{execute}}

running processes in containers

`docker-compose top`{{execute}}

logs

`docker-compose logs`{{execute}}



## Down
`docker-compose down`{{execute}}