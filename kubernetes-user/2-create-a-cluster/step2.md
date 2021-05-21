# kubectl
To interact with Kubernetes during this bootcamp we’ll use the command line interface, kubectl. We’ll explain kubectl in detail in the next modules, but for now, we’re just going to look at some cluster information. To check if kubectl is installed you can run the kubectl version command:

`kubectl version`{{execute}}

OK, kubectl is configured and we can see both the version of the client and as well as the server. The client version is the kubectl version; the server version is the Kubernetes version installed on the master. You can also see details about the build.


# cluster information
Let’s view the cluster details. We’ll do that by running kubectl cluster-info:

`kubectl cluster-info`{{execute}}

During this tutorial, we’ll be focusing on the command line for deploying and exploring our application. To view the nodes in the cluster, run the kubectl get nodes command:

`kubectl get nodes`{{execute}}

This command shows all nodes that can be used to host our applications. Now we have only one node, and we can see that its status is ready (it is ready to accept applications for deployment).



# Kubernetes system (kube-system) pods

`kubectl get pods --namespace kube-system`{{execute}}


> here we see a new flag `--namespace` which specifies under which namespace we want to get the pods, we will learn about Namespaces in a further lesson.

