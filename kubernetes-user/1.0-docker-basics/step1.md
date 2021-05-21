### Launching a container

To launch a container in docker we specify the following

`docker run -d nginx`{{execute}}

The `-d` means run in detached mode.

> In other words this means: run an "nginx" image in detached mode
> where does `nginx` image lives? .... docker.io Container Registry

This doesn't allow us to access our nginx instance though as we didn't expose it!

Let's try again:

`docker run -d -p 8081:80 nginx`{{execute}}

Now you should be able to access the basic html website with:

`curl localhost:8081`{{execute}}

## Run a named container

`docker run -d  --name=my-container nginx`{{execute}}


# Running containers

To see currently running containers run:

`docker ps`{{execute}}

If you want to see the whole output:

`docker ps --no-trunc`{{execute}}


We can even see it exposed publicly:

https://[[HOST_SUBDOMAIN]]-8081-[[KATACODA_HOST]].environments.katacoda.com/

# Stop a container
to stop a running container you can run the following command

`docker stop <container_name|container_id>`

`docker stop my-container`{{execute}}

`docker ps`{{execute}}

> once a container is stopped we can start it again using

`docker start my-container`{{execute}}

`docker ps`{{execute}}

# List current (local) downloaded images

`docker image list`{{execute}}

> these are our downloaded "executables", if an image does not exist locally, `docker run ... ` or `docker image pull`  will download it automatically if you are authenticated to the registry where your image lives, docker.io allows to pull images with no authentication.


Let's say you want to download `ubuntu:20.10` image:

`docker image pull ubuntu:20.10`{{execute}}
