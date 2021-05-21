# Run our local image

`docker run -d -p 9090:80 my-nginx:local`{{execute}}

```
-d: start it in detached mode
-p: port-forward local 9090 to port 80 inside the container
my-nginx:local : the name of the image to run
```

This means we are running our own executable! 🎉


## Run a second instance

`docker run -d -p 9092:80 my-nginx:local`{{execute}}

> obviously we need to use a different local port '9092'


# List running container

`docker container ps`{{execute}}


# Open them

https://[[HOST_SUBDOMAIN]]-9090-[[KATACODA_HOST]].environments.katacoda.com/

https://[[HOST_SUBDOMAIN]]-9092-[[KATACODA_HOST]].environments.katacoda.com/


### Exercise

Try launching a `httpd` (apache web server) container on port 8050 and connect to it, it listens in port 80 ... so the port-forward should be something like : `-p 8050:80`

Once you finish you can connect to it using the following link:

https://[[HOST_SUBDOMAIN]]-8050-[[KATACODA_HOST]].environments.katacoda.com/
