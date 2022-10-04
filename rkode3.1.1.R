library(PxWebApiData)
library(ggplot2)
library(tidyverse)

Data <- ApiData("https://data.ssb.no/api/v0/no/table/11155/",
                Kjonn = "0", UtdNivaa = "TOT", ContentsCode = c("ArbLedigProsent"), Alder = c("20-64", "15-24"), Tid = "2020")

Data <- Data[[1]] 

ggplot(Data, aes(x = alder, y = value)) +
  geom_col() +
  theme_minimal() +
  labs(x = "Alder",
       y = "Arbeidsledighet i prosent",
       title = "Forskjell i arbeidsledighet mellom aldersgrupper i Norge (2020)",
       caption = "Kilde: https://data.ssb.no/api/v0/no/table/11155/ (hentet 03.10.2022)")
