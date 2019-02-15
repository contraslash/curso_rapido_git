#!/bin/bash

mkdir clase2
cd clase2
git init
touch hola_mundo.txt
echo "hola mundo" >> hola_mundo.txt
git add hola_mundo.txt
git status
git commit -m "added first hola mundo"

echo "nuevo hola mundo" >> nuevo_hola_mundo.txt
git status
git add nuevo_hola_mundo.txt
git status
git reset nuevo_hola_mundo.txt
git status

git add nuevo_hola_mundo.txt
git commit -m "added second hola mundo"

echo "nueva linea hola mundo" >> nuevo_hola_mundo.txt
git commit -am "added new line to nuevo hola mundo"

git reset HEAD^ nuevo_hola_mundo.txt
git status

echo "otra linea a nuevo hola mundo" >> nuevo_hola_mundo.txt
git commit -am "new changes to nuevo_hola_mundo"

git reset --soft d11c7519477056b20e4e2686e70f1c21fbc62926

git commit -m "added new hola mundo"

git log --oneline
git checkout d11c751
git status
git checkout 4c13033

git branch nueva_rama
git checkout nueva_rama

echo "hola mundo nueva rama" >> hola_mundo_rama.txt
git add hola_mundo_rama.txt
git commit -m "new branch commit"