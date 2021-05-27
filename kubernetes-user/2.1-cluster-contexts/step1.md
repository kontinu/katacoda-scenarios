In this scenario we will use:

- minikube
- kind (kubernetes in Docker)

To mimic multiple clusters.


### Minikube commands

We already installed minikube for you. Check that it is properly installed, by running the minikube version command:

`minikube version`{{execute}}


Check the status of the cluster:

`minikube status`{{execute}}


### Kind

`kind get clusters`{{execute}}


Now this are tools to manage a local cluster, in a real World scenario you may probably have multiple clusters located somewhere else not only locally:

- GKE (google kubernetes engine Clusters)
- AKS (Azure Kubernetes clusters)
- Digital Ocean.
- OpenShift
