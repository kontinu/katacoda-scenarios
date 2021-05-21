# Step 1

- check docker version installed


---
# Step 2 - Dockerfile

Update the Dockerfile inside the `files/` folder with the following requirements

- base image: nginx:alpine
- dependencies: install curl as a dependency, if you dont install it container will fail.
- COPY the bootstrap.sh file inside the container to the `/` folder  (/bootstrap)
- RUN: make sure to make the bootstrap.sh file executable (chmod +x ...)
- CMD: run the `/bootstrap.sh` as the CMD in "list" format (["item"])

---
# Step 3 -  build your dockerfile

Build your dockerfile using the following command.

`docker builld -t docker-exercise:v1.0 -f files/Dockerfile files/`{{execute}}

Tag your image with the name docker-exercise:v1.0


List local images to check your image size.


You can see your image's history using `docker history <image>` try seeing if you understand the output of it

---

# Step 4 - Running

Run your container once.

- Run it in detached mode `-d`.
- Port exposed local 8080 & 80 inside the container
- Name your container 'my-app'


Access your container externally:

https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/


# Repeat

Start two more containers, one in port 8082 and 8084, you might probably need different names.

https://[[HOST_SUBDOMAIN]]-8082-[[KATACODA_HOST]].environments.katacoda.com/


https://[[HOST_SUBDOMAIN]]-8084-[[KATACODA_HOST]].environments.katacoda.com/
