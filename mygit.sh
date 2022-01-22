#!/bin/bash

argumento=$1
ruta="/mnt/c/Users/jairo/Desktop/Clase/Trabajos/BCI_lab"    # Cambiar por la ruta desada

function arg_error {
    echo "Debes proporcionar uno de estos argumentos"
    echo "mygit.sh startlab"
    echo "mygit.sh endlab"
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

    else
        arg_error
    fi
else
    arg_error
fi  
