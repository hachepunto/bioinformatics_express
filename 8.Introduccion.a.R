#########################################################################
### Bioinformatics express                                            ###
### Introducción a R                                                  ###
###                                	                                  ###
### Instituto Nacional de Medicina Genómica                           ###
### Julio 2024                                                        ###
### Hugo Tovar <hatovar@inmegen.gob.mx>                               ### 
#########################################################################

### LO BÁSICO ##########################

# el símbolo '<-' se usa para indicar asignación. También se usa para
# guardar información en un objeto:

x <- 50

# En este primer comando asignaste el valor 50 al objeto llamado 'x'.
# Los objetos en R se usan para guardar información. Para encontrar que
# está almacenado en un objeto solo es necesario escribir su nombre:

x

# R no corre lineas que comiencen con '#'. Esto se usa para crear
# comentarios.

# R ya tiene integrados algunos valores de algunas constantes fundamentales.
# Por ejemplo para encontrar el valor de Pi, solo escribe: 

pi

# Puedes copiar el valor de Pi en otro objeto. Por ejemplo:

y <- pi
y
pi

### VARIABLES ###############################################

# Hay 4 tipos de datos comúnmente utilizados en R:
# 1. Numéricos - números
# 2. Caracteres - texto
# 3. Lógicos - verdadero/falso
# 4. Valores especiales


## 1. NUMÉRICOS ##
# Supongamos que tenemos los factores de cambio de 5 famosos genes
# relacionados con cáncer:

logFCh <- c(1, 0, 0, 6, -2)
logFCh

# La función *mode* nos dice el tipo de datos contenidos en el objeto
# *logFCh*

mode(x = logFCh)

## 2. CARACTERES ##
# Supongamos que tenemos los nombres de esos 5 genes:

genes <- c("TP53", "MYC", "BRCA1", "BRCA2", "ATM")
genes

mode(genes)

# IMPORTANTE: Tomar en cuenta que los valores de caracteres siempre van
# entre comillas. Esto generaría un error:

genes <- c(TP53, MYC, BRCA1, BRCA2, ATM)

## 3. LÓGICOS ##
# Supongamos ahora que el log Fold Change de cada gen cambió o no 
# respecto a un control:

increm <- c(TRUE, FALSE, FALSE, TRUE, TRUE)
increm

mode(increm)

# IMPORTANTE: Tomar en cuenta que valores lógicos NO van entre comillas
# y se escriben en mayúsculas


## 4. VALORES ESPECIALES ##
# 4.1. NA: valor perdido, no disponible (not available)

x <- NA
x
is.na(x)

# 4.2. Inf: infinito

100/0

-100/0

100-Inf

# 4.3. NaN: no es un número (not a number) 

Inf-Inf

# 4.4. NULL: nulo - usado para indicar un valor de argumento no especificado

x <- NULL
x
is.null(x)


### FUNCIONES ################################################################


# En R, las acciones, la manipulación de datos, las gráficas y los
# análisis se llevan a cabo usando funciones, las cuales son elementos
# de R que hacen acciones en específico. Por ejemplo, la función 'rnorm'
# genera valores a azar con distribución normal:

rnorm(50)

# Las funciones actúan en o son modificadas por argumentos. Los
# argumentos definen como trabajará una función. En este ejemplo, la
# función 'rnorm' es modificada por un argumento que tiene el valor de
# 50. Como resultado, obtienes 50 valores al azar de una distribución
# normal. Puedes pedir el número de valores que quieras:

rnorm(50)
rnorm(5)
rnorm(1)

# Puedes almacenar el resultado de una función en un objeto para usarlo
# después con otro propósito:

x <- rnorm(50)

# Puedes hacer cosas con los valores almacenados en 'x'. Por ejemplo,
# puedes usar la función 'mean' para calcular la media de los valores
# dentro de 'x':

mean(x)

# Puedes calcular otros estadísticos, como la desviación estándar, o
# simplemente crear un resumen de los valores en x:

sd(x)
summary(x)

# Puedes cambiar el orden de los valores:

x
sort(x)
sorted <- sort(x, decreasing=TRUE)

# Por ejemplo, nota que la función 'sort' toma dos argumentos, uno son
# los valores en 'x', el otro es el valor 'TRUE'. ya aprenderemos más
# acerca de los argumentos.

# También puedes hacer un histograma de estos valores:

hist(x)

# R también tiene 'operadores' que efectúan una multitud de acciones.
# Los más comunes son los operadores aritméticos de suma '+', resta '-',
# multiplicación '*', y división '/'.

5+2
5-2
5*2

# También podemos multiplicar los valores en 'x' por una constante
# usando operadores:

x*2

# Tambien podemos escribir una sola linea de código que haga múltiples
# acciones y guarde la salida. Por ejemplo:

y <- rnorm(50)*2

### ESCRIBIR EN R ES SIMILAR A ESCRIBIR EN ESPAÑOL ##########################

# Un comando en español: Salta tres veces 
# 1. *Salta* es el verbo que define una acción
# 2. *tres veces* y *hacia adelante* son dos modificadores de esa acción

# Otro comando en español: Genera una secuencia del 5 al 20 con valores
# cada 0.5

# 1. *Genera una secuencia* es la acción a tomar
# 2. *Del 5* modifica la acción definiendo donde empezar
# 3. *al 20* define el final de la secuencia
# 4. *con valores cada 0.5* define como construir la secuencia 

# ¿Cómo darle el comando anterior a una computadora? Utilizando un
# lenguaje de programación como R.

seq(from = 5, to = 20, by = 0.5)

# 1. *seq* es el nombre de una función, y define una acción a tomar en R
# 2. *from*: es el nombre de un argumento que define el inicio de la
#    secuencia, en este caso el valor de from es 5
# 3. *to = 20* es un segundo argumento con su valor 20 que define el
#    final de la secuencia
# 4. *by = 0.5* es un tercer argumento que define la separación entre
#    valores en la secuencia

### LA ANATOMÍA BÁSICA DE UN COMANDO EN R ###################################

seq(from = 5, to = 20, by = 0.5)

# 1. Nombre de la función
# 2. Paréntesis abierto
# 3. Nombre del argumento
# 4. Símbolo de igual (=)
# 5. Valor dado al argumento
# 6. Coma (,)
# 7. Repetir 3,4, y 5 para cada argumento
# 8. Paréntesis cerrado

### ALGUNAS REGLAS BÁSICAS SOBRE ARGUMENTOS #################################

# Los argumentos CASI siempre tienen nombres (ej. "from", "to", "by").

# Cada función tiene un orden pre-determinado de argumentos. Por
# ejemplo, para la función "seq" el orden es "from" primero, luego "to",
# y luego "by".

# Uno asigna valores a los argumentos utilizando el símbolo de igual
# (ej. *from = 5*)

# Los nombres de los argumentos pueden ser eliminados si los valores se
# dan a la función en el orden pre-determinado. Por ejemplo, estos dos
# comandos son equivalentes:

seq(from = 5, to = 20, by = 0.5)
seq(5, 20, 0.5)

# Pero son distintos de este: 

seq(0.5, 5, 20)

# El orden de los argumentos puede modificarse SOLO si se utilizan los
# nombres. Por ejemplo, estos comandos son equivalentes:

seq(from = 5, to = 20, by = 0.5)
seq(by = 0.5, from = 5, to = 20)

# ¡Algunos argumentos tienen valores predeterminados!

seq(to=20)

# Estos argumentos con valores predeterminados no necesitan ser
# especificados para que la función trabaje, pero uno tiene que tener
# cuidado de que los valores predeterminados son los que uno quiere.

# La descripción de cada función y sus argumentos puede encontrarse en
# la ayuda de la función. Para acceder a la ayuda, utiliza la función
# *help*

help(seq)

# o usa el símbolo de interrogación:

?seq

# 8. Cuando aparecen *...* en el archivo de ayuda de una función
#    frecuentemente significan multiples argumentos sin nombre:

?c
c(9, 5, 3, 5)

# Un par de cosillas extras que es necesario que saber: 

# R es sencible a las mayúsculas y minúsculas, Así que la función seq
# existe, pero la función Seq no:

Seq(from = 5, to = 20, by = 0.5)

# 10. En R los espacios en blanco no significan nada:

seq(from=5,to=20,by=0.5)
seq(from = 5, to = 20, by = 0.5)
seq     (   from     =     5,      to     =     20,      by     =     0.5   )



### OPERADORES ###########################################

# Los operadores son similares a funciones en R porque representan
# acciones, pero su sintaxis es distinta. Los operadores se ponen ENTRE
# valores. Los más comunes son los operadores aritméticos.

# Estos dos comandos son equivalentes:

sum(19, 5) # Usando la función 'sum'
19 + 5 # Usando el operador '+'

# Otros ejemplos:
19-5
19*5
19/5
19^5

# Un operador usado comúnmente es ':', el cual genera secuencias regulares:

1:10

25:4

pi:6


### FUENTES PRINCIPALES DE AYUDA SOBRE FUNCIONES Y SUS ARGUMENTOS  ##########

# 1. Lee el archivo de ayuda para la función
# 2. Pregúntale a ChatGPT
# 3. Pregunta a un amigo
# 4. Has una pregunta en un foro en línea
# 5. Estudia el código detrás de la función 

ls()
ls
rnorm


### OBJETOS #######################################################

# 1. Vectores: 1 dimensión - numéricos, caracteres, lógicos
# 2. Matrices: 2 dimensiones
# 3. Data frames (Marcos de datos): 2 dimensiones

### 1. VECTORES ################################################################
# Vectores representan una secuencia lineal de valores, cada valor con una 
# posición en la secuencia:

logFCh
genes
increm

# CLASE es el principal atributo de un vector

class(logFCh)
class(genes)
class(increm)

# LONGITUD es otro de los principales atributos de un vector

length(logFCh)
length(genes)
length(increm)

## IMPORTANTE: Los vectores pueden tener SOLO un tipo de datos: numéricos, 
#              caracteres o lógicos. NUNCA UNA COMBINACIÓN.

x <- c(1,2,3)
x
class(x)

x2 <- c(1,2,3,"a")
x2
class(x2)

### 2. MATRICES ################################################################
# Las matrices son parecidas a vectores, pero tienen dos dimensiones:
# FILAS Y COLUMNAS.

# Supongamos que tenemos los niveles de expresión de 5 genes (filas) en 
# muestras distintas (columnas):

expr.M <- matrix(1:(5*4), nrow = 5, ncol = 4)
expr.M

class(expr.M)

## IMPORTANTE: Las matrices, como vectores,  pueden tener SOLO un tipo
#  de datos: numéricos, caracteres o lógicos. NUNCA UNA COMBINACIÓN.

expr.M2 <- matrix(sample(c(1:20, letters), 5*4), nrow=5, ncol=4)
expr.M2

class(expr.M2)
mode(expr.M2)

### 3. DATA FRAMES #########################################################
# Los data frames organizan variables (columnas) medidos para diferentes 
# observaciones (filas). De esta manera, CADA COLUMNA PUEDE TENER VALORES DE 
# TIPOS DISTINTOS (numéricos, caracteres, lógicos o factores).

genes
expr.M
increm

genes.code <- 1:length(genes)

expr.data <- data.frame(genes.code, genes, expr.M, increm)
expr.data

class(expr.data)

mode(expr.data$genes)
mode(expr.data$increm)

# Las columnas (variables) en un marco de datos deben todos tener la misma 
# longitud.



### PAQUETES DE R ###############################################

# Los PAQUETES son conjuntos de funciones (algunos con datos incluidos o
# solo paquetes de datos) que pueden ser usados como extensiones a las
# disponibles por defaults en R

# La mayoría de los paquetes se pueden encontrar en:
# http://cran.r-project.org/web/packages/

# Para que un paquete pueda ser usado, primero necesita ser instalado
# usando *install.pacakges*

library(gprofiler2) #Esto no funciona

install.packages("gprofiler2")

# Después, cada vez que va a ser usado, el paquete necesita ser cargado
# con *library*

library(gprofiler2)

??gprofiler2

# Los paquetes pueden ser actualizados con *update.packages*

update.packages("gprofiler2")


### BIOCONDUCTOR  ########################################################

# Bioconductor es un proyecto que provee de herramientas para el
# análisis y la compresión de los datos genómicos de tecnologías de alto
# rendimiento.

# Básicamente es un repositorio paralelo a los de r-project con paquetes
# especializados en genómica Su sitio web está en: www.bioconductor.org
# y para usarlo hay que instalar el paquete básico y luego el conjunto
# de paquetes específicos que necesitemos.

# instalar Bioconductor:

if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install(version = "3.19")

# instalar un paquete:

if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install("DESeq2")



### ABRIR Y GUARDAR ###################################################

### A. DIRECTORIO DE TRABAJO #############################################

# El directorio de trabajo (working directory) es una carpeta la
# computadora donde R escribe o lee archivos de manera pre-determinada.

# Para conocer cual es el directorio de trabajo actual:

getwd()

# Para cambiar el directorio de trabajo:
# setwd(dir="dirección a una carpeta en tu computadora"), por ejemplo:

setwd(dir="~/bioinformatics_express")

getwd() # Confirma el cambio del directorio de trabajo

# Lista los archivos y carpetas en el directorio de trabajo:

list.files()
dir()

# ARCHIVO EJEMPLO #################################

url <- "https://raw.githubusercontent.com/hachepunto/R_Basics_workshop/master/Datasets/Example_expression_set.txt"

download.file(url, "Example_expression_set.txt")

dir()

### B. PRINCIPALES FUNCIONES PARA ABRIR Y GUARDAR ARCHIVOS #####################

# 1. read.table: abre marco de datos 
# 2. load: abre cualquier objeto binario de R
# 3. readRDS: abre binarios RDS con un solo objeto de R

# 4. write.table: guarda un marco de datos
# 5. save: guarda cualquier objeto de R
# 6. saveRDS: guardar binarios que solo tienen un solo objeto de R



### C. ABRIR UNA TABLA DE DATOS ################################################

help(read.table)

## PRINCIPALES ARGUMENTOS:
# 1. file: El nombre del archivo a abrir - y su dirección si el archivo
#    no está en el directorio de trabajo.
# 2. header: TRUE o FALSE. TRUE si la primera fila del archivo
#    representa los nombres de las columnas.
# 3. sep: El caracter que se usa para separar valores, más
#    frecuentemente: "\t" o ",".


expr.data <- read.table(file = "Example_expression_set.txt", 
                        header = TRUE, 
                        sep = "\t")

head(expr.data)

## IMPORTANTE: *read.table* siempre abre datos como un marco de datos

class(expr.data)
names(expr.data)

summary(expr.data)

## BONUS: Abrirl de un sitio en internet ###################################
# *read.table* también puede leer archivos en una dirección de internet

expr.data <- read.table(url)


### D. GUARDAR UNA TABLA DE DATOS ##########################################

help(write.table)

## PRINCIPALES ARGUMENTOS:
# 1. x: El objeto de R (marco de datos o matriz) a grabar en un archivo
# 2. file: El nombre del archivo a crear - y su dirección si uno quiere el 
#    archivo en otra carpeta que no es el directorio de trabajo.
# 4. sep: El caracter que se usa para separar valores, más
#    frecuentemente: "\t" o ",".

expr.data # Este es el marco de datos que habíamos creado

write.table(x = expr.data, 
            file = "expr_data.txt", 
            row.names = FALSE, 
            sep = "\t")

dir()

# Podemos volver a abrir el archivo que creamos:

expr.data2 <- read.table(file = "expr_data.txt", 
                          header = TRUE, 
                          sep = "\t")

identical(expr.data, expr.data2)
    
    
### E. GUARDAR OBJETOS BINARIOS DE R  ##############################################
    
# Algunas veces es conveniente guardar objetos de R en un documento
# binario. Ya sea para:

# 1) Cuando no es eficiente guardar datos en formato de texto.
# 2) Cuando es más conveniente guardar distintos objetos de R juntos.
# 3) Con datos numéricos, con la intención de no perder precisión cuando
#    se convierte a texto.

# La función principal para guardar objetos de R en binario es *save*

help(save)

## PRINCIPALES ARGUMENTOS:
# 1. '...': lista de objetos de R a guardar.
# 2. file: El nombre del archivo a crear - y su dirección si uno quiere el 
#    archivo en otra carpeta que no es el directorio de trabajo.

save(expr.data, expr.data2, file ="expr_data.RData" )

dir()

# limpiemos el ambiente de R
rm(list = ls())

load("expr_data.RData")

# Comúnmente es conveniente guardar un solo objeto en un solo archivo.
# Para eso usamos la función *saveRDS* que guarda un solo objeto binario
# de R. Para traerlo de vuelta al ambiente de R usamos *readRDS*.

saveRDS(expr.data, file = "expr_data.RDS")
readRDS("expr_data.RDS")
saved_rds <- readRDS("expr_data.RDS")

# A veces, cuando tienes muchos objetos, es conveniente guardar todo el
# ambiente de trabajo. La función de atajo de *save* para hacer esto es
# *save.image*.

save.image(file = "R_bioinformatics.RData")




