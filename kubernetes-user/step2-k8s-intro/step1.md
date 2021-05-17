# imperative commands

`kubectl run nginx --image=nginx`{{execute}}

This tells kubernetes create a Deployment named=nginx from `nginx` image.


`kubectl get deployments`{{execute}}


`kubectl get deployments nginx -oyaml`{{execute}}


`kubectl describe deployments nginx`{{execute}}



# imperative configuration

`kubectl create -f files/nginx.yaml`{{execute}}

this creates the Objects that are specified in `/nginx.yaml`{{open}}


`kubectl get -f files/nginx.yaml`{{execute}}
