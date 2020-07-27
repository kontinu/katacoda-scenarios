# Local Environment

<img src="./assets/single-engine.png" class="center" alt="About me" style="width:300px;">

## Solo docker run?


```
docker run -d --rm  -p 7777:80 --name=web_server nginx
```{{ execute "T1" }}

Abrir puerto 7777: https://[[HOST_SUBDOMAIN]]-7777-[[KATACODA_HOST]].environments.katacoda.com/



```
docker run -it --rm --name container1 alpine sh
````{{ execute "T1" }}

???+ danger "Does not work"


---

## Fixed docker runs
```bash
#create a local network, so that containers can see each other
docker network create mynetwork

# create the backend Redis container and attach it to the network
docker run --name redis -d --network mynetwork redis:alpine

# create the app container, expose it in a different port
docker run -p 5500:5000 -it --network mynetwork -e "REDIS_HOST=redis"  mcano/docker:intro

# OR if you prefer local environment development supported by Docker
docker run -p 5500:5000 -it --network mynetwork -e "REDIS_HOST=redis" -v $(pwd):/code mcano/docker:intro sh
```