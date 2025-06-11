# Contador de Vocales

<!-- [![CI/CD](https://github.com/n1krov/ic/actions/workflows/ci.yml/badge.svg?branch=master)](https://github.com/n1krov/ic/actions/workflows/ci.yml) -->

![CI](https://github.com/n1krov/ci/actions/workflows/ci.yml/badge.svg)
![Python](https://img.shields.io/badge/python-3.11%2B-blue)
![License](https://img.shields.io/github/license/n1krov/ic)
![Status](https://img.shields.io/badge/status-active-brightgreen)
![Last Commit](https://img.shields.io/github/last-commit/n1krov/ic)
![Contributors](https://img.shields.io/github/contributors/n1krov/ic)
![Issues](https://img.shields.io/github/issues/n1krov/ic)
![Pull Requests](https://img.shields.io/github/issues-pr/n1krov/ic)
![Code Size](https://img.shields.io/github/languages/code-size/n1krov/ic)
![Tests](https://img.shields.io/badge/tests-passed-brightgreen)
![Tests](https://img.shields.io/badge/tests-100%25-brightgreen)



---

Este proyecto es un ejemplo simple para demostrar la integración y entrega continua (CI/CD) usando **GitHub Actions**, **Python** y **pytest** para un taller académico.

## Descripción

- El código implementa una función que cuenta vocales, incluyendo mayúsculas y caracteres acentuados.
- Se incluyen pruebas automatizadas con `pytest`.
- El pipeline de CI se ejecuta con GitHub Actions.

---

## Uso local

### Requisitos

- Python 3.11 o superior
- `pip`
- (opcional) Docker

### Instalación

```bash
git clone https://github.com/n1krov/ic.git
cd ic
python -m venv venv
source venv/bin/activate  # En Windows: venv\Scripts\activate
pip install -r requirements.txt
````

### Ejecutar tests

```bash
pytest -vv
```

---

## CI/CD

* Al hacer `push` o `pull request` a la rama `master`, se ejecuta el workflow que:

  1. Instala dependencias.
  2. Corre los tests automatizados.
  3. (opcional) Construye y prueba una imagen Docker.

---

## TODO

* [ ] Mover `test_contador.py` a `tests/`
* [ ] Crear archivo `pytest.ini` para mejorar imports
* [ ] Agregar Dockerfile y workflow de despliegue
* [ ] Incluir documentación detallada en `/docs`

---

© 2025 - Lautaro (`n1krov`)

