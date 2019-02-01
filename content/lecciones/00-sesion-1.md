Title: Git
Author: Mauricio Collazos
Date: 2019-02-01
![]()
---
class: center, middle, light, first-slide
# Git
## Mauricio Collazos
.footnote[]
---
class: center, middle
# Git
Git es un sistema de control de versiones (Version Control System) creado en 2005 por Linus Torvalds para satisfacer las necesidades de desarrollo distribuido del kernel de linux. En la actualidad git es el sistema de control de versiones más popular y una herramienta necesaria para el desarrollo de software en equipos. Con este taller se introduce al uso de git para proyectos de software, explicando los comandos más relevantes y realizando prácticas para familiarizar al asistente con todos los conceptos
---
class: center, middle
# Zonas
![Zonas de Git](/img/zonas.png)
---
# Inicializar el repositorio
```bash
git init
```
![Git init](/img/init.png)
[Historia y Estructura de git](https://medium.com/@willhayjr/the-architecture-and-history-of-git-a-distributed-version-control-system-62b17dd37742?fbclid=IwAR2Mv5XADMVweZ1K7F0gnEXIBRTjyNTQWgLmZ80ayr_uYbq_SvP3MNUc04Y)
---
# Ver el estado del repositorio
```bash
git status
```
---
# Crear archivos
```bash
touch hola_mundo.txt
echo "Hola mundo" >> hola_mundo.txt
```
![touch](/img/nuevo_archivo.png)
---
# Añadir cambios a la zona de transacción
```bash
git add hola_mundo.txt
```
![Add](/img/archivo_transaccion.png)
---
# Configurar el usuario que hace los cambios
```bash
git config user.name "Mauricio Collazos"
git config user.email "ma0@contraslash.com"
```

---
# Guardar el primer cambio
```bash
git commit -m "primer hola mundo"
```
![commit](/img/primer_commit.png)
---
# Verificar cambios
```bash
git log
```
---
# Creación de remotos
```bash
git remote add origin https://github.com/ma0c/hola_mundo_git.git
```
![remote](/img/remoto.png)
---
# Subir los cambios
```bash
git push origin master
```
![push](/img/push.png)
---
# Clonar repositorios
```bash
git clone https://github.com/ma0c/hola_mundo_git_de_un_amigo
```
![push](/img/clone.png)
---
# Halar cambios de otros
```bash
git pull origin master
```
![push](/img/pull.png)