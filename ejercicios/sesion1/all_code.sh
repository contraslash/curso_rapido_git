#!/bin/bash
# Creamos un directorio
# mkdir significa Make directory (crear directorio)
mkdir clase1
# Accedemos al directorio
# cd significa Change directory (cambiar de directorio)
cd clase1
# Inicializamos el repositorio de git con git init
git init
# Verificamos que cambios hay en la zona de trabajo, y staging
git status
# Creamos un archivo
# El comando touch permite crear archivos, de manera mas general modifica los metadatos de un archivo indicando cuando fue abierto por última vez por eso el touch (tocar)

touch hola_mundo.txt
# Para windows crear un archivo se puede hacer por medio de type nul > hola_mundo.txt, indicandole a windows que escriba "nada" en un archivo nuevo
# type nul > hola_mundo.txt
# Re verificamos los cambios
git status
# Se pueden observar los cambios de archivos en la zona de trabajo
# Añadimos los cambios a la zona de transacción
git add hola_mundo.txt
# Verificamos los cambios
git status
# Podemos ver los cambios a los archivos usando el comando diff
git diff hola_mundo.txt
# Antes de consolidar los cambios git necesita saber quienes somos
git config user.name "Mauricio Collazos"
# Y nuestro email
git config user.email "ma0@contraslash.com"
# Completamos la transacción por medio de un commit
git commit -m "primer hola mundo"
# Verificamos todo el historial con log
git log
# Creamos un remoto
git remote add origin https://github.com/ma0c/hola_mundo_git.git
# Subimos lso cambios al remoto
git push origin master
# Salimos de la zona de trabajo
cd ..
# Clonamos el repositorio de un amigo
git clone https://github.com/ma0c/hola_mundo_git_de_un_amigo
# Entramos a la zona de trabajo de un amigo
cd hola_mundo_git_de_un_amigo
# Modificamos el contenido
echo "un nuevo contenido" >> hola_mundo.txt
# Guardamos los cambios en un solo comando
git commit -am "nuevos cambios"
# Verificamos que nuestro amigo nos de permiso de escritura en el repo
git push origin master
# Salimos del area de trabajo
cd ..
# Esperamos a que nuestro amigo haga los cambios a nuestro repositorio
# Entramos al área de trabajo
cd clase1
# Obtenemos los cambios de nuestro amigo
git pull origin master