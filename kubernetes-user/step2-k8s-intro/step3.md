# Hello World Deployment

Let's explore a remote YAML :

`curl -L https://k8s.io/examples/service/access/hello-application.yaml`{{execute}}


Now create the deployment and see the power of kubectl cli, you can even apply resources from a URL.

`kubectl apply -f https://k8s.io/examples/service/access/hello-application.yaml`{{execute}}


to explore the objects we just created run:

`kubectl get po,deploy`{{execute}}

We have a Deployment that controls 2 Pods, but we can't access it.

# Expose it

Creates a service of type LoadBalancer

`kubectl expose deployment hello-world --type=LoadBalancer --name=example-service`{{execute}}

to inspect the Service:
`kubectl get svc`{{execute}}


https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/
