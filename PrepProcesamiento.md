# Preprocesamiento

Por medio de esta unidad se aprenderá a utilizar las herramientas bioninformáticas para lleavar a cabo el procesamiento inicial de datos de RNA-Seq, las cuales son:

- FastQC
- Trimmomatic
- Kallisto

Dentro de la carpeta de trabajo ```bioinformatics_express``` se van a crear una carpeta llammada ```tools``` en donde guarderemos todas las herramientas y así facilitar su localización y uso.



## Instalación **Windows**

**1. FastQC** 

1. Acceder a la liga de descarga :
https://www.bioinformatics.babraham.ac.uk/projects/download.html#fastqc

2. Ubicar dentro de la página la sección que muestra en a continuación, descargar la opción: **FastqQC (Win/Linux zip file)**.
<img src = ./Images/FastQC.png style = "display: block; margin: 0 auto;height: 200px; width:700px;"/>

3. Una vez descargado el archivo **.zip** moverlo a la carpeta **tools**.
4. Descomprimir el archivo dentro de esa misma carpeta.
5. Eliminar el archivo **.zip**.

**2. Trimmomatic**

1. Acceder a la liga de derscarga:
http://www.usadellab.org/cms/?page=trimmomatic

2. Ubicar la opción de descarga que se muestra a continuación, descargar la opción que dice **binary**.
<img src = ./Images/Trimmomatic.png style = "display: block; margin: 0 auto;height: 200px; width:700px;"/>

3. Una vez descargado el archivo **.zip** moverlo a la carpeta **tools**.
4. Descomprimir el archivo dentro de esa misma carpeta.
5. Eliminar el archivo **.zip**.

**3. Kallisto**
1. Acceder a la liga de derscarga:
https://pachterlab.github.io/kallisto/download.html

2. Ubicar la opción de descarga que se muestra a continuación, descargar la opción correspondiente para **Windows**.
<img src = ./Images/Kallisto.png style = "display: block; margin: 0 auto;height: 450px; width:700px;"/>

3. Una vez descargado el archivo **.zip** moverlo a la carpeta **tools**.
4. Descomprimir el archivo dentro de esa misma carpeta.
5. Eliminar el archivo **.zip**.


## Instalación **macOS**

La instalación en el sistema operativo macOS es muy similar al de windows. La principal diferencia es que seguramente será necesario instalar la última versión de Java JDK como prerequisito antes de poder usar el software. Debemos hacerlo así:


**0. Java JDK** 

1.	Acceder a la liga de descarga : https://www.oracle.com/java/technologies/downloads/#jdk22-mac

2. Ubicar la opción de descarga que se muestra a continuación, descargar la opción que dice **AMD64 DMG Installer** si tienes una Mac con _procesador ARM_ (M1 o M2) o bien el que dice **x64 DMG Installer** si tienes una Mac con _procesador Intel_.
<img src = ./Images/jdk.png style = "display: block; margin: 0 auto;height: 400px; width:800px;"/>

3. Una vez descargado el archivo **.dmg** darle doble click para montar el disco virtual. Una ventana emergerá en el Finder:
<img src = ./Images/dmg_JDK.png style = "display: block; margin: 0 auto;height: 450px; width:700px;"/>

4. Doble click al archivo **.pkg** que está adentro y sigue las instrucciones de instalación.
5. Eliminar el archivo **.dmg**.


Ahora sí instalemos las herramientas en Mac:

**1. FastQC** 

1. Acceder a la liga de descarga :
https://www.bioinformatics.babraham.ac.uk/projects/download.html#fastqc

2. Ubicar dentro de la página la sección que muestra en a continuación, descargar la opción: **FastqQC (Mac DMG image)**.
<img src = ./Images/FastQC.png style = "display: block; margin: 0 auto;height: 200px; width:700px;"/>

3. Una vez descargado el archivo **.dmg** darle doble click para montar el disco virtual. Una ventana emergerá en el Finder:
<img src = ./Images/dmg_FastQC.png style = "display: block; margin: 0 auto;height: 450px; width:700px;"/>

4. Copia y pega o arrastra el icono de FastQC.app a tu carpeta **tools**.
5. Eliminar el archivo **.dmg**.
6. En algún paso siguiente del curso tendrás que usar esta ruta en la terminal:

   ```
   /ruta/a/bioinformatics_express/tools/FastQC.app/Contents/MacOS/fastqc
   ```

No olvides sustituir donde dice “ruta a” por la ruta verdadera.
   
**2. Trimmomatic**

1. Acceder a la liga de derscarga:
http://www.usadellab.org/cms/?page=trimmomatic

2. Ubicar la opción de descarga que se muestra a continuación, descargar la opción que dice **binary**.
<img src = ./Images/Trimmomatic.png style = "display: block; margin: 0 auto;height: 200px; width:700px;"/>

3. Una vez descargado el archivo **.zip** moverlo a la carpeta **tools**.
4. Descomprimir el archivo dentro de esa misma carpeta.
5. Eliminar el archivo **.zip**.

**3. Kallisto**
1. Acceder a la liga de derscarga:
https://pachterlab.github.io/kallisto/download.html

2. Ubicar la opción de descarga que se muestra a continuación, descargar la opción correspondiente para **Mac**.
<img src = ./Images/Kallisto.png style = "display: block; margin: 0 auto;height: 450px; width:700px;"/>

3. Una vez descargado el archivo **.zip** moverlo a la carpeta **tools**.
4. Descomprimir el archivo dentro de esa misma carpeta.
5. Eliminar el archivo **.zip**.

