### Minikube commands

We already installed minikube for you. Check that it is properly installed, by running the minikube version command:

`minikube version`{{execute}}

OK, we can see that minikube is in place.


Start the cluster, by running the minikube start command:

`minikube start`{{execute}}

Great! You now have a running Kubernetes cluster in your online terminal. Minikube started a virtual machine for you, and a Kubernetes cluster is now running in that VM.


Check the status of the cluster:

`minikube status`{{execute}}



## Enable the dashboard

`minikube addons enable dashboard`{{execute}}

`kubectl apply -f files/dashboard.yaml`{{execute}}

## Launch dashboard 🚀

```
# in your regular local minikube you'll need to run this command
minikube dashboard
```


https://[[HOST_SUBDOMAIN]]-30000-[[KATACODA_HOST]].environments.katacoda.com/


