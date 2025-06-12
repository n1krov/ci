# 🛠️ Roadmap del Proyecto: Contador de Vocales con CI/CD

## ✅ Recordatorios clave

- **Ramas**:
  - `master` → solo código probado y listo para producción.
  - `dev` → integración de features antes de pasar a producción.
  - `feature/*` → ramas para cada nueva funcionalidad. Se mergean con PRs hacia `dev`.

- **CI actual**: Funciona bien para este flujo. Está configurado para ejecutarse en `push` o `pull_request` hacia `dev` y `master`.

---

## 🛠️ Roadmap pendiente

### 🥇 1. Despliegue (Docker + VPS)

Aunque el proyecto sea simple (contador de vocales), esto sirve para **aprender cómo hacer despliegue de código Python con Docker**.

#### 🔹 1.1 Crear imagen Docker
- [ ] Crear un `Dockerfile` que instale Python, tu script y las dependencias.
- [ ] (Opcional) Crear `docker-compose.yml` si querés manejarlo más limpio.

#### 🔹 1.2 Subirlo a un servidor (VPS)
- [ ] Conseguir un VPS gratuito o económico (Ej: Oracle Free Tier, DigitalOcean, etc.)
- [ ] Conectarte vía `ssh` y subir tu imagen o código.
- [ ] Ejecutar el contenedor.
- [ ] Confirmar que funciona (aunque sea por consola o logs).


### 🥈 2. Feedback (Entorno para seguimiento)

#### 🔹 2.1 Logs desde GitHub Actions
- [x] Ya disponibles en cada ejecución de CI

#### 🔹 2.2 Trello u otro tablero
- [ ] Crear un tablero en [Trello](https://trello.com/) o similar
- [ ] Definir columnas: `To Do`, `In Progress`, `Review`, `Done`
- [ ] Organizar tareas (como este roadmap)

> 📌 Más adelante, podés integrarlo con GitHub usando herramientas como [Zapier](https://zapier.com/) o GitHub Projects.


### 🥉 3. Changelog (`CHANGELOG.md`)

- [ ] Crear archivo `CHANGELOG.md`
- [ ] Seguir formato [Keep a Changelog](https://keepachangelog.com/es-ES/1.0.0/)
- [ ] Iniciar con:

```markdown
# Changelog

Todas las novedades importantes de este proyecto se documentan en este archivo.

## [Unreleased]
### Agregado
- Primer archivo README
- Configuración inicial de CI
- Licencia MIT

## [0.1.0] - 2025-06-05
### Agregado
- Estructura de ramas
- Archivo `.gitignore`
- Flujo de integración continua con Pytest

