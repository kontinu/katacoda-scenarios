# Step 1

- check docker version installed



# Step 2 - Dockerfile

Update the Dockerfile inside the `files/` folder with the following requirements

- base image: nginx:alpine
- dependencies: install curl as a dependency, if you dont install it container will fail.
- COPY the bootstrap.sh file inside the container to the `/` folder  (/bootstrap)
- RUN: make sure to make the bootstrap.sh file executable (chmod +x ...)
- CMD: run the `/bootstrap.sh` as the CMD in "list" format (["item"])
