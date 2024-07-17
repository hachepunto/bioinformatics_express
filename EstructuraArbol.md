# Estructura de Archivos

En los sistemas los archivos están organizados por directorios. Los directorios son archivos especiales que contienen información que permite localizar otros archivos en los dispositivos de almacenamiento. Los directorios pueden contener a su vez otros directorios los cuales se denominan subdirectorios. A la estructura resultante de esta organización se le conoce como estructura de **árbol invertido**.

<img src = ./Images/filesystem.png style = "display: block; margin: 0 auto;height: 350px; width:700px;"/>

La imagen anterior demuestra un directorio principal llamado **/** que contiene diversas subcarpetas, por ejemplo **boot** o **home**. Este primer nivel de subcarpetas puede contener otras subcarpetas como **lib** siendo un segundo nivel de directorio o archivos como **yourname** o **www**.

Es de utilidad conocer esta estructura porque podemos mandar a llamar cualquier archivo o directorio (carpeta) en cualquier nivel; esto se aplica cuando se ejecutan comandos que requieren argumentos de entrada referentes a archivos específicos.

A continuación se explica la estructura en cada nivel y como moverse en el árbol de acuerdo a la siguiente estructura.

<img src = ./Images/tree.png style = "display: block; margin: 0 auto;height: 270px; width:200px;"/>

Lo primero que debes de hacer es crear la carpeta **Root** y acceder a ella.


[!TIP]
> Recuerda usar el comando **mkdir** (make directory) para crear y **cd** (change directory) para moverte entre las carpetas.

```
$ mkdir ./Root
$ cd Root
```

Descarga el archivo [File1.txt](./Root/file1.txt) y colócalo dentro de la carpeta **Root**.

De acuerdo al diagrama anterior, necesitamos crear el primer y segundo nivel de subcarpetas **Branch1** , **Branch2**, **Sub_Branch1** y **Sub_Branch2**.

[!TIP] 
> Puedes crear todas las carpetas de todos los niveles con el comando **mkdir** utilizando la opción **-p** . 
```
$ mkdir -p ./Branch1/Sub_Branch1
```
Recuerda que puedes moverte entre carpetas arriba y abajo.

<img src = ./Images/change.png style = "display: block; margin: 0 auto;"/>


Ya creados todos las directorios verificaremos que tenga la estructura adecuada. Ubicándonos en la carpeta **Root**.
```
$ powershell -command "tree /f /a"
```
Tendriamos que observar una estructura como sigue:

<img src = ./Images/tree1.png style = "display: block; margin: 0 auto;"/>

Ahora tendremos que copiar el archivo **file1.txt** a las subcarpetas **Branch2** y **Sub_Branch1**.

[!TIP]
>Recuerda que el comando **cp** (copy) permite copiar un archivo y colocarlo en una dirección específica con otro nombre.

```
$ cp file1.txt ./Branch2/file2.txt
$ cp file1.txt ./Branch1/Sub_Branch1/file3.txt
```

Verificando la estructura de los archivos tendría que verse como a continuación:
<img src = ./Images/tree2.png style = "display: block; margin: 0 auto;"/>

# Llamado de Archivos

A continuación se harán ejercicios para el llamado de archivos de diferentes carpetas.

## Ejercicio 1
Posicionándote en la carpeta de **Root** lee el archivo **file2.txt** y **file3.txt**

<img src = ./Images/tree3.png style = "display: block; margin: 0 auto;height: 270px; width:200px;"/>

[!TIP]
> Usa el comando **more.com** para leer el contenido del archivo

```
$ more.com ./Branch2/file.txt
```
A lo cual te tendría que aparecer el siguiente texto
> *Este archivo es muestra*

## Ejercicio 2
Ubicate dentro de la carpeta **Sub_Branch1** y lee el archivo **file1.txt** y **file2.txt**.

<img src = ./Images/tree4.png style = "display: block; margin: 0 auto;height: 270px; width:200px;"/>
