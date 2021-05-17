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

Show the details of the deployment:
`kubectl describe deployments nginx`{{execute}}


List running pods and its labels:
` kubectl get pods --show-labels`{{execute}}


# imperative configuration

`kubectl create -f files/nginx.yaml`{{execute}}

this creates the Objects that are specified in `/nginx.yaml`{{open}}


`kubectl get -f files/nginx.yaml`{{execute}}
