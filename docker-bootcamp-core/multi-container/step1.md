# Local Environment

<img src="./assets/single-engine.png" class="center" alt="About me" style="width:300px;">

## Solo docker run?


```
docker run -d --rm  -p 7777:80 --name=web_server nginx
```{{ execute "T1" }}

```
docker ps
```{{ execute "T1" }}


### Abrir puerto 7777

https://[[HOST_SUBDOMAIN]]-7777-[[KATACODA_HOST]].environments.katacoda.com/



```
docker run -it --rm --name container1 alpine sh
```{{ execute "T2" }}


```
ping -c4 web_server
```{{ execute "T2" }}


---

