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
ruta=""    # Cambiar por la ruta desada

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
        echo -e "${purpleColour}1)${endColour} Ver los archivos cambiados (pendientes de subir): ${blueColour}git status${endColour}"
        echo -e "${purpleColour}2)${endColour} Añadir esos archivos (todos) a la lista para subir: ${blueColour}git add *${endColour}"
        echo -e "   ${greenColour}> Nota:${endColour} Si quieres subir algunos determinado cambiar * por los nombres a subir"
        echo -e "${purpleColour}3)${endColour} Añadir un commint antes de subir los cambios: ${blueColour}git commit -m texto${endColour}"
        echo -e "   ${greenColour}> Nota:${endColour} El texto del commit debe ir entre comillas dobles"
        echo -e "${purpleColour}4)${endColour} Con el commit hecho, hacemos el push: ${blueColour}git push${endColour}"
        echo -e "   ${greenColour}> Nota:${endColour} Si queremos el push a una rama concreta ponemos el nombre de la misma al final"
    
        echo -e "${purpleColour}1)${endColour} Abrimos la rama deseada: ${blueColour}git checkout ${endColour}"
        echo -e "   ${greenColour}> Nota:${endColour} El nombre de la rama va al final"
        echo -e "   ${greenColour}> Nota:${endColour} Podemos ver todas las ramas con ${blueColour}git branch ${endColour}"
        echo -e "   ${greenColour}> Nota:${endColour} Ahora con la rama abierta podemos trabajar tranquilamente en nuestra parte"
        echo -e "${purpleColour}2)${endColour} Trabajamos con el push y commit como en el anterior"
        echo -e "${purpleColour}*)${endColour} Creamos una rama: ${blueColour}git branch ${endColour}"
        echo -e "   ${greenColour}> Nota:${endColour} El nombre de la rama va al final"
        
        echo -e "${purpleColour}1)${endColour} Nos posicionamos en la master con: ${blueColour}git checkout master${endColour}"
        echo -e "${purpleColour}1)${endColour} Pasamos la rama a la rama principal: ${blueColour}git merge${endColour}"
        echo -e "   ${greenColour}> Nota:${endColour} El nombre de la rama que volvar va al final"
        echo -e "   ${greenColour}> Nota:${endColour} Podemos añadir un commit al final añadiendo: ${blueColour}-m texto${endColour}"
        echo -e "   ${greenColour}> Nota:${endColour} El texto del commit debe ir entre comillas dobles"
    else
        arg_error
    fi
else
    arg_error
fi  
