# check cluster health

`kubectl cluster-info`{{execute}}

# imperative commands

This tells kubernetes create a Deployment named=nginx from `nginx` image.


`kubectl run nginx --image=nginx`{{execute}}

---
## Explore objects

List all running deployments:

`kubectl get deployments`{{execute}}


Get the resulting YAML of the object we created:

`kubectl get deployments nginx -oyaml`{{execute}}

> try to understand the YAML output

Show the details of the deployment:

`kubectl describe deployments nginx`{{execute}}


List running pods and its labels:

` kubectl get pods --show-labels`{{execute}}


# imperative configuration

Create the resource that is specified in `/nginx.yaml`{{open}}


`kubectl create -f files/nginx.yaml`{{execute}}



`kubectl get -f files/nginx.yaml --show-labels`{{execute}}

