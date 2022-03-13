#!/bin/bash

#Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

argumento=$1
ruta="/mnt/c/Users/jairo/Desktop/Clase/Trabajos/BCI_lab"    # Cambiar por la ruta desada

function arg_error {
    echo -e "${yellowColour}[*]${endColour}Debes proporcionar uno de estos argumentos"
    echo "easygit.sh startlab"
    echo "easygit.sh endlab"
    echo "easygit.sh help"
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
        echo -e "1) Ver los archivos cambiados (pendientes de subir): ${blueColour}git status${endColour}"
        echo -e "2) Añadir esos archivos (todos) a la lista para subir: ${blueColour}git add *${endColour}"
        echo "   > Si quieres subir algunos determinado cambiar * por los nombres a subir"
        echo -e "3) Añadir un commint antes de subir los cambios: ${blueColour}git commit -m texto${endColour}"
        echo "   > Nota: el texto del commit debe ir entre comillas dobles"
        echo -e "4) Con el commit hecho, hacemos el push: ${blueColour}git push${endColour}"
        echo "   > Nota: si queremos el push a una rama concreta ponemos el nombre de la misma al final"

    else
        arg_error
    fi
else
    arg_error
fi  
