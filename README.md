# Curso de backend con Git

Curso rápido para el manejo de [git](https://git-scm.com/) para [Universidad ICESI](http://www.icesi.edu.co)
En este repositorio encontrará:

- [content](content): Todo el contenido del curso: presentaciones y artículos
- [ejercicios](ejercicios): Código en Python correspondiente a cada clase
- [output](output): Una versión compilada de la página del curso
- [project](project): Referencias a repositorios con código de los proyectos realizados en este curso
- [themes](themes): Tema de Pelican para construir el sitio estático

Este sitio fue construido usando [Pelican](https://blog.getpelican.com/)

Para configurar el ambiente de desarrollo

```bash
# Create an environment
conda create --name curso_rapido_git
# Activate the environment
source activate curso_rapido_git
# Install pelican dependencies
conda install -c conda-forge pelican markdown livereload
```


Para ejecutar local

```bash
pelican --autoreload
```

Y para verlo en el navegador

```bash
cd output
python3 -m http.server 
# Para salir cntrl + c
```


