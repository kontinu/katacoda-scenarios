### Dockerfile & building our own

At the core of everything in Docker is the Dockerfile.

A dockerfile describes how to build a container, the application environment anything that should be included with it and any command it should execute when executed.

Look at the file `/Dockerfile`{{open}}


# Docker build

`docker build -t my-nginx:local -f files/Dockerfile files/ `{{execute}}

```
-t : specifies the name of the result image
-f : specifies the location of the Dockerfile
files/:  specifies the context
```


# inspect local images

`docker image list`{{execute}}


> can you tell the size of your image?

> why do we care about image size? (why does it matter?)
