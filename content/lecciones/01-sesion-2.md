Title: Git Sesion 2
Author: Mauricio Collazos
Date: 2019-02-01
![QR](/img/qr-1.png)
---
class: center, middle, light, first-slide
# Git
## Mauricio Collazos
.footnote[]
---
# Sacar archivos de la zona de transacción

```bash
git add nuevo_hola_mundo.txt
git status
git reset nuevo_hola_mundo.txt
git status
```

---
# Cambiar el HEAD de la rama actual

```bash
git log
git reset --hard d11c7519477056b20e4e2686e70f1c21fbc62926
```


---
# Navegar entre versiones

```bash
git log --oneline
git checkout d11c751
```

---
# Creación de ramas

```bash

git branch nueva_rama
git checkout nueva_rama
```


---
# Mezclar ramas

```bash
echo "hola mundo nueva rama" >> hola_mundo_rama.txt
git add hola_mundo_rama.txt
git commit -m "new branch commit"

git checkout master
echo "cambios a hola mundo " >> hola_mundo.txt
git commit -am "cambios a hola mundo"
git merge nueva_rama

git log --graph --oneline
```

---
# Eliminar ramas

```bash
git branch -d nueva_rama
git log --graph --oneline

# Para remotos
git push --delete origin nueva_rama
```

---
# Algunos comandos útiles para remotos
```
git fetch origin
git remote set-url origin https://github.com/ma0c/curso_rapido_git
```

---
# Flujos de trabajo colaborativo
- Trabajo centralizado
- Ramas por características
- Bifurcaciones
- GitFlow
---
class: center
# [Gitflow](https://nvie.com/posts/a-successful-git-branching-model/) para trabajo colaborativo
![Gitflow by atlassian](https://wac-cdn.atlassian.com/dam/jcr:a9cea7b7-23c3-41a7-a4e0-affa053d9ea7/04%20(1).svg)
[Gitflow workflow](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow)
---
# Gitflow
```
# Ubuntu
sudo apt-get install git-flow

# CentOS
sudo yum install gitflow

# OS X
brew install git-flow
```

[Windows](https://github.com/nvie/gitflow/wiki/Windows)

---
# Inicializar
```bash
git flow init
```


---
# Crear característica
```bash
git flow feature start requerimiento1
echo "Realización del requerimiento 1" >> hola_mundo.txt
git commit -am "finishing req1"
git flow feature finish requerimiento1
git flow feature publish requerimiento1

git log --graph --oneline
```

---
# Manejo de versiones
```bash
git flow release start version1
git flow release finish version1

git log --graph --oneline
```