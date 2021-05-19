# Deploying something to kubernetes

Using kubectl run, it allows containers to be deployed onto the cluster - `kubectl create deployment first-deployment --image=katacoda/docker-http-server`{{execute}}

The status of the deployment can be discovered via the running Pods - `kubectl get pods`{{execute}}

Once the container is running it can be exposed via different networking options, depending on requirements. One possible solution is NodePort, that provides a dynamic port to a container.

`kubectl expose deployment first-deployment --port=80 --type=NodePort`{{execute}}

---

# Dashboard

Enable the dashboard using Minikube with the command `minikube addons enable dashboard`{{execute}}

Make the Kubernetes Dashboard available by deploying the following YAML definition. This should only be used on Katacoda.

`kubectl apply -f /opt/kubernetes-dashboard.yaml`{{execute}}

The Kubernetes dashboard allows you to view your applications in a UI. In this deployment, the dashboard has been made available on port 30000 but may take a while to start.

To see the progress of the Dashboard starting, watch the Pods within the kube-system namespace using `kubectl get pods -n kubernetes-dashboard -w`{{execute}}

Once running, the URL to the dashboard is

https://[[HOST_SUBDOMAIN]]-3000-[[KATACODA_HOST]].environments.katacoda.com/

