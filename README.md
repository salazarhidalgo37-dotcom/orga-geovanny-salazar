# Proyecto WordPress con Docker y Jenkins

## Descripción

Este proyecto implementa un ambiente de WordPress con MySQL utilizando Docker Compose. Además, integra Jenkins para automatizar el despliegue mediante un pipeline que permite descargar el código desde GitHub, detener servicios existentes, levantar nuevamente los contenedores y verificar su funcionamiento.

La arquitectura permite trabajar con un entorno automatizado de integración continua (CI), donde Jenkins administra los servicios Docker del proyecto.

---

## Tecnologías utilizadas

- Docker
- Docker Compose
- Jenkins
- WordPress
- MySQL
- GitHub

---

## Estructura del proyecto
wordpress-docker/
│
├── docker-compose.yml
├── Dockerfile
├── Jenkinsfile
├── .env
├── README.md
│
└── imagenes/
├── pipeline.png
├── docker_ps.png
├── docker_network_ls.png
├── docker_volume_ls.png
└── wordpress_inicio.png


---

## Archivos principales

- `docker-compose.yml`  
  Define los servicios necesarios para ejecutar la aplicación:
  - WordPress
  - MySQL
  - Red interna de Docker
  - Volúmenes persistentes

- `.env`  
  Contiene las variables de entorno utilizadas por los contenedores, como usuarios, contraseñas y nombre de la base de datos.

- `Dockerfile`  
  Permite crear una imagen personalizada de Jenkins con las herramientas necesarias para ejecutar comandos Docker y Docker Compose.

- `Jenkinsfile`  
  Contiene el pipeline automatizado encargado de:
  - Descargar el código desde GitHub.
  - Ejecutar Docker Compose.
  - Detener servicios anteriores.
  - Crear nuevamente los contenedores.
  - Verificar que los servicios estén activos.

- `README.md`  
  Documentación general del proyecto.

---

## Dockerfile

El Dockerfile se utiliza para crear una imagen personalizada de Jenkins.

Sus funciones principales son:

- Utilizar Jenkins LTS como imagen base.
- Instalar el cliente Docker dentro del contenedor Jenkins.
- Agregar Docker Compose.
- Permitir que Jenkins ejecute comandos Docker mediante el acceso al socket del sistema.

El Dockerfile permite que Jenkins pueda administrar los contenedores creados mediante Docker Compose durante la ejecución del pipeline.

---

## Configuración de Docker Compose

El archivo `docker-compose.yml` define los servicios del proyecto:

### WordPress

Servicio encargado de ejecutar la aplicación web.

Características:

- Imagen oficial de WordPress.
- Puerto de acceso:
http://localhost:8084


- Conexión con la base de datos MySQL.

### MySQL

Servicio encargado del almacenamiento de datos.

Características:

- Imagen MySQL 5.7.
- Persistencia mediante volumen Docker.
- Comunicación interna con WordPress mediante la red creada por Docker Compose.

---

## Jenkins Pipeline

El pipeline definido en el archivo `Jenkinsfile` realiza las siguientes etapas:

### 1. Checkout

Descarga el código fuente desde el repositorio de GitHub.

### 2. Down

Detiene y elimina los servicios anteriores utilizando:
docker compose down


### 3. Up

Levanta nuevamente los servicios:
docker compose up -d

### 4. Verify

Comprueba que los contenedores estén ejecutándose mediante:
docker ps

- Redes creadas mediante:


docker network ls


- Volúmenes Docker mediante:


docker volume ls


- Pantalla inicial de WordPress funcionando correctamente.

Estas evidencias permiten comprobar el despliegue correcto utilizando Docker Compose y la automatización realizada mediante Jenkins.

---

## Resultado final

El proyecto cuenta con un ambiente automatizado donde Jenkins controla el ciclo de vida de los servicios Docker, permitiendo levantar WordPress y MySQL de forma rápida, repetible y organizada.
