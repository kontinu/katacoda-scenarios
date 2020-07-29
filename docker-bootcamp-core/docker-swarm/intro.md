# Docker Bootcamp v1.5 - Core

Este laboratorio aprenderemos Docker Swarm.

Docker swarm es un orquestador de contenedores en multi-engine, que permite administrar varios Nodos que conforman un Cluster, estos Nodos pueden ser: Wokers o Masters.

Los Master Nodes son los encargados de decidir en qué Nodo (ya sea master o worker node) colocar los contenedores y asi aprovechar los recursos de una mucho mejor manera.

Docker Swarm declarativo se hace usando el mismo archivo [docker-compose.yml](https://docs.docker.com/compose/compose-file) que ud ya conoce ++


# Intro [Swarm Mode](https://docs.docker.com/engine/swarm/)
Esta seccion le dara lo necesario para ir a un ambiente de produccion con Docker swarm.


<img src="./assets/swarm.png" class="center" alt="Swarm" style="width:300px;">

<br><br>
<details>
  <summary>Swarm vs K8</summary>

<h4>Docker swarm es mejor que kubernetes .... <br> pero ustedes no estan listos para esta conversacion </h4>
<img src="./assets/swarmvsk8.png" class="center" alt="Swarm vs K8" style="width:400px;">

<br>
- Just Kidding

</details>

<br><br>

# Features


<ul>
<li> Cluster management integrated with Docker Engine</li>


<li> Declarative service model </li>

<li> Scaling </li>

<li> Desired state reconciliation (The swarm manager node constantly monitors the desired state )</li>

<li> Multi-host networking </li>

<li> Service discovery </li>

<li> Load balancing</li>

<li> Secure by default (intra node) </li>

<li> Rolling updates </li>

<li> Hyper EASY </li>

</ul>

