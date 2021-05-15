# Run our local image

`docker run -d -p 9090:80 my-nginx:local`{{execute}}

> -d: start it in detached mode
> -p: port-forward local 9090 to port 80 inside the container
> my-nginx:local : the name of the image to run


# List running container

`docker container ps`{{execute}}

### Exercise

Try launching a `httpd` container on port 8050 and connect to it

