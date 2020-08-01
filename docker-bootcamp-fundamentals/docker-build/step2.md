# Clonar repositorio

`git clone https://github.com/kontinu/container-bootcamps-src.git`{{execute}}

`cd container-bootcamps-src/fundamentals/web`{{execute}}


Inspeccionemos los archivos.

`Dockerfile`{{open}}

`index.html`{{open}}

---

## Build

`docker image build --tag web:v1.0 .`{{execute}}

> que significa cada flag?

- image build: construir una imagen
- --tag < nombre de la imagen en el repo>:<tag>
- `.` build context.

El resultado? una imagen

## Local images

`docker image ls`{{execute}}

> inspeccione cada una de las COLUMNAS.
