# Deploying something to kubernetes

Using kubectl run, it allows containers to be deployed onto the cluster -

`kubectl create deployment first-deployment --image=katacoda/docker-http-server`{{execute}}

The status of the deployment can be discovered via the running Pods & the Deployment itself

`kubectl get pods`{{execute}}

`kubectl get deploy`{{execute}}

Once the Pod is running it can be exposed via different networking options, depending on requirements. One possible solution is NodePort, that provides a dynamic port to a container.

`kubectl expose deployment first-deployment --port=80 --type=NodePort`{{execute}}

---

# Dashboard

go and visit the dashboard, try to explore as much as possible.

https://[[HOST_SUBDOMAIN]]-30000-[[KATACODA_HOST]].environments.katacoda.com/


---
# Clean up

Now you can clean up the resources you created in your cluster:

`
kubectl delete service first-deployment
kubectl delete deployment first-deployment
`{{execute}}

Optionally, stop the Minikube virtual machine (VM):

`minikube stop`{{execute}}

Optionally, delete the Minikube VM:

`minikube delete`{{execute}}
