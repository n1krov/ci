# 🔠 Contador de Vocales

Un pequeño proyecto en Python que cuenta la cantidad de vocales en una cadena de texto.

Este repositorio está configurado con **integración continua** usando **GitHub Actions** y **pruebas automatizadas** con `pytest`.

---

## 🚀 Características

- ✅ Cuenta vocales en cadenas de texto
- 🧪 Pruebas automáticas con `pytest`
- 🔄 Integración continua con GitHub Actions
- 🌱 Flujo de trabajo basado en ramas (`master`, `dev`, `feature/*`)
- 📦 Preparado para despliegue con Docker (opcional)

---

## 📁 Estructura del proyecto

```

vocal\_counter/
├── src/
│   └── counter.py          # Función principal
├── tests/
│   └── test\_counter.py     # Pruebas con pytest
├── .github/
│   └── workflows/
│       └── ci.yml          # Workflow de CI
├── requirements.txt        # Dependencias del proyecto
└── README.md               # Este archivo 😄

````

---

## 🧠 Cómo usar

### 🔧 Requisitos

- Python 3.11 o superior
- `pip`

### 📥 Instalación

```bash
git clone https://github.com/tu_usuario/vocal_counter.git
cd vocal_counter
python -m venv venv
source venv/bin/activate  # o .\venv\Scripts\activate en Windows
pip install -r requirements.txt
````

### ▶️ Ejecutar

```python
from src.counter import contar_vocales

print(contar_vocales("Hola mundo"))  # Output: 4
```

---

## 🧪 Ejecutar pruebas

```bash
pytest
```

---

## 🔄 Flujo de trabajo con ramas

* `main` → Rama principal (producción)
* `dev` → Rama de integración
* `feature/...` → Funcionalidades nuevas (se integran a `dev`)

```bash
# Crear nueva funcionalidad
git checkout dev
git checkout -b feature/nombre-feature

# Hacer cambios, commit, y push
git push origin feature/nombre-feature

# Abrir Pull Request hacia dev
```

---

## 🤖 CI con GitHub Actions

El archivo [`ci.yml`](.github/workflows/ci.yml) define un workflow de integración continua que:

1. Instala dependencias
2. Corre pruebas con `pytest`
3. Muestra logs de errores directamente en GitHub

Se ejecuta automáticamente en:

* Push a `main` o `dev`
* Pull Request a `main` o `dev`

---

## 🐳 (Opcional) Docker

Podés contenerizar la app con este `Dockerfile` (a futuro):

```dockerfile
FROM python:3.11-slim

WORKDIR /app
COPY . .
RUN pip install -r requirements.txt

CMD ["pytest"]
```

---

## 📜 Licencia

MIT License - libre para usar, modificar y distribuir.

---

## ✍️ Autor

* **n1krov** – [GitHub](https://github.com/n1krov)

---

## ❤️ Contribuciones

¡Se aceptan sugerencias, mejoras y PRs!
Recordá hacer un fork, crear una rama `feature/...`, y abrir un Pull Request 😉
