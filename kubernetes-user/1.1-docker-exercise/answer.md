# Answer

### Step 1

`docker version`{{execute}}

### Step 2 - Dockerfile


```Dockerfile

## Uncomment when necessary
# use a base image
FROM nginx:alpine

# install any dependencies ... REPLACE xyz
RUN apk add --update curl

# copy the bootstrap.sh file to /
COPY bootstrap.sh /

# make the bootstrap.sh file executable by running chmod +x <file>
RUN chmod +x /bootstrap.sh

#specify the CMD should be in list format
CMD [ "/bootstrap.sh" ]

```

# Step 3 -  build your dockerfile

`docker builld -t docker-exercise:v1.0 -f files/Dockerfile files/`{{execute}}

`docker image list`{{execute}}


`docker image history docker-exercise:v1.0`{{execute}}


# Step 4 - Running

`docker run -d -p 8080:80 docker-exercise:v1.0 --name=my-app`{{execute}}

Repeat

`docker run -d -p 8082:80 docker-exercise:v1.0 --name=my-app-2`{{execute}}

`docker run -d -p 8084:80 docker-exercise:v1.0 --name=my-app-3`{{execute}}
