### Dockerfile & building our own

At the core of everything in Docker is the Dockerfile.

A dockerfile describes how to build a container, anything that should be included with it and any command it should execute when executed.

Look at the file `/Dockerfile`{{open}}:


# Docker build

`docker build -t my-nginx:local -f files/Dockerfile files/ `{{execute}}

> -t : specifies the name of the result image
> -f : specifies the location of the Dockerfile
> files/:  specifies the context
