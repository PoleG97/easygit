#!/bin/bash

argumento=$1
ruta="/mnt/c/Users/jairo/Desktop/Clase/Trabajos/BCI_lab"    # Cambiar por la ruta desada

function arg_error {
    echo "Debes proporcionar uno de estos argumentos"
    echo "mygit.sh startlab"
    echo "mygit.sh endlab"
    echo "mygit.sh help"
    exit
}

if [ $# -eq 1 ] ; then 
    if [ $1 = "startlab" ] ; then
      
        cd ${ruta}                                          # Vamos a la carpeta
        git clone https://github.com/GuzmanGS/P_BCI.git     # Clonamos la repo de git

    elif [ $1 = "endlab" ] ; then
        
        cd ${ruta}                                          # Vamos a la carpeta del git

        rm -R "${ruta}/P_BCI/.git"                          # Borramos tener git en la carpeta
        cd ${ruta}
        rm -R "${ruta}/P_BCI"                               # Borramos toda los archivos repo

    elif [ $1 = "help" ] ; then                             # Ayuda sobre el uso de git

        echo -e "COMO TRABAJAR CON GIT \n"
        echo "1) Ver los archivos cambiados (pendientes de subir): git status"
        echo "2) Añadir esos archivos (todos) a la lista para subir: git add *"
        echo "   > Si quieres subir algunos determinado cambiar * por los nombres a subir"
        echo "3) Añadir un commint antes de subir los cambios: git commit -m texto"
        echo "   > Nota: el texto del commit debe ir entre comillas dobles"
        echo "4) Con el commit hecho, hacemos el push: git push"
        echo "   > Nota: si queremos el push a una rama concreta ponemos el nombre de la misma al final"

    else
        arg_error
    fi
else
    arg_error
fi  
