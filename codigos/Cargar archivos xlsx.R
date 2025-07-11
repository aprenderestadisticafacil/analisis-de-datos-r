# Autor: Iván Cruz
# Año: 2025
# Licencia: CC BY-NC 4.0 (https://creativecommons.org/licenses/by-nc/4.0/)
# Uso permitido solo para fines personales, educativos o de investigación. Uso comercial prohibido sin autorización.

###############################
#### Crgar datos xlsx a R #####
###############################

#Para leer archivos Excel necesitamos el paquete readxl. Solo lo instalas una vez:
install.packages("readxl")

#Y cada vez que trabajes en un nuevo proyecto, lo cargas con:
library(readxl)

#Conocer la ruta del archivo 
ruta_excel <- file.choose()
ruta_excel

#Leer archivo Excel tipo 1 (Básico)
datos1 <- read_excel(ruta_excel)

#Vemos las primeras 6 filas de los datos cargados
head(datos1)

#Leer archivo Excel tipo 2 (Hoja diferente a la primera)
datos2 <- read_excel(ruta_excel,
                     sheet = "datos2",
                     col_names = TRUE)

#Vemos las primeras 6 filas de los datos cargados
head(datos2)

#Leer archivo Excel tipo 3 (Hoja diferente a la primera y rango específico)
datos3 <- read_excel(ruta_excel,
                     sheet = "datos3",
                     range = "B6:E33",
                     col_names = TRUE)

#Vemos las primeras 6 filas de los datos cargados
head(datos3)
