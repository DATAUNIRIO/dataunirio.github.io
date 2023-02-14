library(dplyr)
library(ddplot)
gapminder_subset <- gapminder::gapminder %>% select(country, year, pop) %>%
  filter(country %in% c("Japan", "Mexico", "Germany", "Brazil", "Mexico", "Philippines", "Vietnam")) %>%
  mutate(pop = pop/1e6)

gapminder_subset %>%
  barChartRace(
    x = "pop",
    y = "country",
    time = "year",
    ytitle = "Country",
    xtitle = "Population (in millions)",
    title = "Bar chart race of country populations"
  )



library(readxl)
emendas <- read_excel("~/GitHub/dataunirio.github.io/emendas/emendas_por_UO.xlsx")

emendas_subset <- emendas %>% select(UO, Ano, Liquidado) %>%
  filter(UO %in% c('26245 - Universidade Federal do Rio de Janeiro',
'26433 - Instituto Federal do Rio de Janeiro',
'26249 - Universidade Federal Rural do Rio de Janeiro',
'26269 - Fundação Universidade do Rio de Janeiro',
'26236 - Universidade Federal Fluminense'))


emendas_subset$UO <- gsub('26245 - Universidade Federal do Rio de Janeiro','UFRJ',emendas_subset$UO)
emendas_subset$UO <- gsub('26433 - Instituto Federal do Rio de Janeiro','IFRJ',emendas_subset$UO)
emendas_subset$UO <- gsub('26249 - Universidade Federal Rural do Rio de Janeiro','Rural',emendas_subset$UO)
emendas_subset$UO <- gsub('26269 - Fundação Universidade do Rio de Janeiro','UNIRIO',emendas_subset$UO)
emendas_subset$UO <- gsub('26236 - Universidade Federal Fluminense','UFF',emendas_subset$UO)
emendas_subset$Ano <- as.integer(emendas_subset$Ano)

emendas_subset = emendas_subset %>% group_by(UO, Ano) %>% summarise(Valor_liquidado=sum(Liquidado)) 

#emendas_subset = arrange(emendas_subset, UO, Ano)

emendas_subset %>%
  barChartRace(
    x = "Valor_liquidado",
    y = "UO",
    time = "Ano",
    ytitle = "Universidade",
    xtitle = "Emendas",
    title = "Emendas das Universidades por ano",
    frameDur = 1500,
    transitionDur = 1500,
  )

#26378 - Complexo Hospitalar e de Saúde da Universidade Federal do Rio de Janeiro

