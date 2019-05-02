library(tidyverse)
library(readxl)
viajes_metrica <- "r2rlp_Report.xlsx"
raw_viajes <- read_excel(viajes_metrica, sheet = "Sheet1")
tidy_viajes <- raw_viajes %>% separate("Vehículo", "unidad", sep = " ") %>% 
  separate("HORA SALIDA", "fecha_salida", sep = " ") %>% 
  separate("HORA LLEGADA", "fecha_llegada", sep = " ") %>% select(-DESTINO, - `CONSUMO EN RALENTI (L)`, -`CONSUMO EN PTO (L)`, -T.MANEJO, -T.RALENTI, -`Velocidad Promedio (km/h)`)
raw_control <- read_excel("CONTROL SEVER 2019  (4).xlsx", sheet = "GASTOS 2019")
tidy_control <- raw_control %>% filter(FECHA == 2019-03-30 : 2019-04-12)

