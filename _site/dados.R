library(jsonlite)
library(tidyverse)

d <- read.csv("https://noco.db.enoisconteudo.com.br/dashboard/#/nc/view/6770570c-860c-4c7d-b6bf-41130dfecf4e",  header = T)

names(d)

d <- d %>% select(latitude, longitude, nome_veiculo, localizacao, formato, segmento_titulo, segmentos, genero, raca, bairro, CEP, link_site, link_social)


d$segmentos <- as.list(d$segmentos)


write_json(d, "teste.json")
