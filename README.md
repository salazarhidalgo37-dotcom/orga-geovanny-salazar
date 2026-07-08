# Proyecto WordPress con Docker y Jenkins

## Descripción
Este proyecto despliega un ambiente de WordPress y MySQL usando Docker Compose, con integración a Jenkins para automatizar el pipeline.

##  Archivos principales
- `docker-compose.yml` → Define los servicios (WordPress y MySQL).
- `.env` → Variables de entorno (usuarios, contraseñas, base de datos).
- `Jenkinsfile` → Pipeline automatizado para levantar y verificar el ambiente.
- `README.md` → Documentación del proyecto.

## ▶️ Uso
1. Clonar el repositorio:
   git clone https://github.com/salazarhidalgo37-dotcom/orga-geovanny-salazar.git

## Levantar el hambiente:
docker compose up -d

## Acceder a WordPress:
http://localhost:8084

