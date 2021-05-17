# Hello World

Lets create a deployment and see the power of kubectl cli, you can even apply resources from a URL.


`kubectl apply -f https://k8s.io/examples/service/access/hello-application.yaml`{{execute}}

Let's explore what the YAML has:

`curl -L https://k8s.io/examples/service/access/hello-application.yaml`{{execute}}


to explore the objects we just created run:

`kubectl get po,deploy`{{execute}}

# Expose it


`kubectl expose deployment hello-world --type=NodePort --name=example-service` {{execute}}

This creates a service of type NodePort, to inspect the Object:

`kubectl get svc`{{execute}}
