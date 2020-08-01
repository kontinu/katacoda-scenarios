# Linux distros shells.

Podriamos aprender Linux con Docker?

---
### Ubuntu 18.04

Inspeccione el hostname del host
`hostname`{{execute}}


`docker container run  --rm -it ubuntu:18.04 bash`{{execute}}

> instala un Ubuntu package

```
# el hostname del contenedor?
hostname


curl
apt-get update -y
apt-get install -y curl
```{{execute}}

```
curl google.com

read -p "exit"
exit
```{{execute}}

---

## Centos 8


`docker container run  --rm -it centos:8 bash`{{execute}}

> Instala un paquete de Centos

```
wget
yum install -y wget

read -p ""
exit
```{{execute}}


---
## Alpine 3.11

`docker container run  --rm -it alpine:3.11 sh`{{execute}}

> ojo con `sh` alpine por default no trae bash (bourne again shell)


Ves que facil podria ser usar Docker para aprender Linux?