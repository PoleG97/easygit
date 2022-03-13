## **Integración con el sistema**

Con el fin de facilitar el uso por parte del usuario, es posible que este script (easygit.sh) sea accesible desde cualquier ubicación de la máquina, en lugar, de que sería normal, tener que ubicarse en el directorio donde esté el .sh y ejecutar la línea “./easygit.sh —” seguido de los argumentos que indique su modo de funcionamiento.
Para hacerlo accesible, como comentamos, lo único que debemos hacer es colocar este .sh en una ubicación mencionada en el PATH, como por ejemplo /bin/.

>Ver el PATH
>
Podemos ver el PATH ejecutando en la terminal “” echo $PATH “” el cuál nos devolverá todas la ubicaciones que estén contempladas para ser accesibles desde cualquier ubicación

## **Funcionamiento**

El script contempla 2 opciones, 2 parámetros, cualquiera de ellos debe ser pasado en la ejecución del mismo, de la siguiente forma
```
easygit.sh startlab
```
```
easygit.sh endlab
```
```
easygit.sh help
```

El primero de todos, se coloca en la ubicación y clona la repo y el segundo, se encarga de hacer la limpieza
En este segundo caso nos preguntará 2 veces si queremos borrar, en ambos casos escribimos “yes” y pulsamos ENTER.

## **Consideraciones**

Hay que modificar el script para modificar la variable “ruta”, en la cuál cada uno debe insertar en ese formato, la ruta donde desea que se clone la repo. 
