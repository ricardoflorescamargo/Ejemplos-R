

# Primera parte -----------------------------------------------------------
###Abriendo un csv con "read_delim". se utilizala libreria "readr"
getwd()
#setwd("")

library(readr)

sistema<- read_delim("C:/Users/USUARIO/Desktop/R/Ejemplo1/Data/sistema-unico-de-atencion-ciudadana-2011.csv", 
                                                       ";", escape_double = FALSE, trim_ws = TRUE)
View(sistema)#vista de la data que se obtiene

class(sistema) # para ver como esta ordenada la data
summary(sistema) # resumen estadistico de las columnas.
str(sistema) # representación textual del objeto

colnames(sistema) #veremos los nombres de las columnas
nrow(sistema) # se observa el número de filas
ncol(sistema) # se observ eñ número de columnas

#manipulando la data
#data.frame/tbl/tbl_df/spec_tbl_df
sistema_df<-as.data.frame(sistema)
class(sistema_df)

#solo funciona cuando es una data frame
head(sistema_df) #muestra las pirmeras seis filas
tail(sistema_df) #muestra las ultimas seis filas
plot(sistema)#debe aplicarse a una data que fue procesada


# Segunda parte -----------------------------------------------------------
#Se abre datos que contiene valores numéricos (metadata=info)
#la función read.table es propia de [R]
Datos<-read.table("C:/Users/USUARIO/Desktop/R/Ejemplo1/Data/DATOS.txt")

#nombres/dimensiones/filas/columnas
colnames(Datos);dim(Datos);nrow(Datos);ncol(Datos)

#Datos en nueva ventana/6 primeros/6 ultimos
View(Datos[c(1:6),]);head(Datos);tail(Datos)
    #al poner "Datos[c(1:6),]" solo veremos las 6 primeras filas 

#clase/carac de las variables/estadistico
class(Datos);str(Datos);summary(Datos)

plot(Datos)





