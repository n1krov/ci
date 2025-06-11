# Estrategia de ramas para GitHub Actions

Utilizo `master` como rama estable para producción, así que lo ideal es:

### 🔁 Flujo

```
dev/
├── feature/funcionalidad1
├── feature/funcionalidad2
├── dev/agregar_gh_actions ← rama para setup de integración
```

* `master`: versión *estable* (liberaciones, despliegues).
* `dev`: rama *de integración*, donde se van uniendo las `feature/*`.
* `feature/*`: ramas por cada funcionalidad o cambio concreto (como CI, una función nueva, refactor, etc).


### ¿Cómo tratar CI con `master` y `dev`?

* CI se **ejecuta en cada push o PR** a `dev` y `master`.
* Solo se permite hacer *merge a master* **si CI en `dev` pasó exitosamente.**
* A futuro podés configurar *protección de rama* en GitHub para que `master` no reciba cambios sin pasar el workflow.


### Aqui un ejemplo de configuración ideal para `.github/workflows/ci.yml`

```yaml
on:
  push:
    branches: [ master, dev ]
  pull_request:
    branches: [ master, dev ]
```

Esto significa:

* Si alguien hace push directo a `dev` o `master`, corre CI.
* Si alguien abre un PR hacia `dev` o `master`, también corre CI automáticamente antes del merge.

###  hacer `PR` desde `dev/agregar_gh_actions` a `dev`

1. Crea la rama `dev/agregar_gh_actions`
2. Subí tu archivo `ci.yml`
3. Hacés un `commit`, `push`
4. Abrí un PR de `dev/agregar_gh_actions` hacia `dev`
5. GitHub corre CI en ese PR

- Si todo pasa, mergeás a `dev`
- Luego, cuando el sistema esté maduro, hacés PR desde `dev` a `master`


