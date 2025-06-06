# 📌 Plan del Proyecto: Contador de Vocales en Python

## 🎯 Objetivo

Crear una función en Python que cuente cuántas vocales hay en una cadena de texto, con pruebas automatizadas y flujo de integración continua usando GitHub Actions.

---

## ⚙️ Herramientas y tecnologías

| Área | Herramienta |
|------|-------------|
| Lenguaje | Python 3.11 |
| Testing | pytest |
| Versionado | Git + GitHub |
| CI | GitHub Actions |
| Ramas | `master`, `dev`, `feature/*` |
| Feedback | Logs vía GitHub Actions |
| Despliegue | (Opcional) Docker + VPS |

---

## 🧱 Estructura esperada

```

vocal\_counter/
├── src/
│   └── counter.py
├── tests/
│   └── test\_counter.py
├── .github/
│   └── workflows/
│       └── ci.yml
├── requirements.txt
├── README.md
├── proyecto.md
└── .gitignore

````

---

## 🔁 Flujo de trabajo

1. Trabajar en rama `feature/...`
2. Pull Request hacia `dev`
3. GitHub Actions ejecuta tests
4. Si pasa, merge a `dev`
5. Si `dev` es estable, merge manual a `master`
6. (Opcional) Despliegue desde `master`

---

## 📋 Tareas

- [x] Definir estructura de carpetas
- [x] Crear función `contar_vocales`
- [x] Escribir pruebas con `pytest`
- [x] Crear `.gitignore`
- [x] Escribir `README.md`
- [x] Crear workflow de CI (`ci.yml`)
- [ ] Configurar despliegue opcional con Docker
- [ ] Documentar despliegue (VPS o GitHub Pages si aplica)

---

## 🧪 Pruebas esperadas

```python
assert contar_vocales("hola") == 2
assert contar_vocales("AEIOU") == 5
assert contar_vocales("xyz") == 0
assert contar_vocales("") == 0
````

---

## 📦 Despliegue (opcional)

* Crear `Dockerfile`
* Subir imagen a VPS o contenedor remoto
* Automatizar despliegue (a futuro)

