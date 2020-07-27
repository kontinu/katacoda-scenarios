# Docker Compose

"Compose es una herramienta para definir y correr aplicaciones Docker multi-container. Con compose, usamos YAML para declarar los servicios que necesite su aplicacion. Luego con un comando sencillo, creamos e iniciamos todos esos servicios

Compose es util en ambientes de testing, staging, produccion y CI."

> OJO que compose es para single-engine.

En el mundo compose basta con 3 pasos:

1. definir el los requerimientos de su app en Dockerfile
2. Declarar la estructura de los servicios que componen su app en su totalidad: DBs, proxys, backends, etc.
3. `docker-compose up` inicia y corre su ambiente completo.
"

Un docker-compose luce asi:
<pre>
<code class="yaml hljs">
version: '2.0'
services:
  web:
    build: .
    ports:
    - "5000:5000"
    volumes:
    - .:/code
    - logvolume01:/var/log
    links:
    - redis
  redis:
    image: redis
volumes:
  logvolume01: {}
</code>
</pre>


---

Algunos comandos de docker-compose son capaces de:

- Start, stop, y rebuild services
- Ver el estado de los servicios actualmente corriendo
- Stream la salida de los logs de los servicios corriendo
- Correr comandos one-off en un servicio.