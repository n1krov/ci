# Workflow de CI para Python con GitHub actions

A continuacion detallo como voy a armar un workflow de **integración continua** en **GitHub Actions** que se ejecuta automáticamente cuando hay:

* *Push o Pull Request* a `master` o `dev`
* Corre `pytest`
* Te muestra los logs de resultado en GitHub

El workflow se va a guardar en la siguiente ruta:

```
.github/workflows/ci.yml
```

>¿Quieres ver el .yml?
```url
https://github.com/n1krov/ci/blob/master/.github/workflows/ci.yml
```

## Los Requisitos

En el `requirements.txt` se encuentra la lista de dependencias del proyecto.

```
pytest
```

> Ademas de `pytest`, aqui voy a ir incluyendo otras dependencias que necesite el proyecto.


## El Workflow

| Paso           | Descripción                                               |
| -------------- | --------------------------------------------------------- |
| `on`           | Ejecuta el workflow al hacer push o PR a `master` o `dev` |
| `checkout`     | Clona el repo en la runner de GitHub                      |
| `setup-python` | Instala Python 3.11                                       |
| `pip install`  | Instala las dependencias del proyecto                     |
| `pytest`       | Corre los tests con salida detallada                      |

