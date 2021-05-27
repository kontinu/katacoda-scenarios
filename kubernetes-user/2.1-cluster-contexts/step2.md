## Contexts

contexts are stored in ~/.kube/config, let's explore whats inside

`cat ~/.kube/config`{{execute}}

> gotta be careful with this file, it contains sensitive data.


or you can use kubectl command

`kubectl config view`{{execute}}

What context is currently in use?

`kubectl config get-contexts`{{execute}}

> is the one with the * right beside it.

or

`kubernetes config current-context`{{execute}}


# use a specific context (Change context)
