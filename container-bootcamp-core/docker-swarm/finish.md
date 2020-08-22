# Algunas cosas extras de Docker Swarm, stacks and services.


- endpoint_mode (vip, dnsrr)
- mode (global)
- placement
- max_replicas_per_node
- [rollback_config](https://docs.docker.com/compose/compose-file/#rollback_config)

## PLUS!

docker -H ssh://root@${leader} node ls