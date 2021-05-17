# Hello World Deployment

Let's explore a remote YAML :

`curl -L https://k8s.io/examples/service/access/hello-application.yaml`{{execute}}


Now create the deployment and see the power of kubectl cli, you can even apply resources from a URL.

`kubectl apply -f https://k8s.io/examples/service/access/hello-application.yaml`{{execute}}


to explore the objects we just created run:

`kubectl get po,deploy`{{execute}}

We have a Deployment that controls 2 Pods, but we can't access it.

# Expose it


`kubectl expose deployment hello-world --type=NodePort --name=example-service`{{execute}}

This creates a service of type NodePort, to inspect the Object:

`kubectl get svc`{{execute}}


https://[[HOST_SUBDOMAIN]]-9090-[[KATACODA_HOST]].environments.katacoda.com/
