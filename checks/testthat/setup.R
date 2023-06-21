library(data.table); library(formattable); library(readxl)

diff <- function(criterio, var, ano) {
  calculado <- sum(dt[ANO == ano & dt[[criterio]] == TRUE][[var]])
  publicado <- rreo[[criterio]][[as.character(ano)]][[var]]
  diff <- round(calculado, 2) - round(publicado, 2)
  accounting(diff)
}

rreo <- jsonlite::read_json(here::here("data/rreo.json"))
dt <- read_xlsx(here::here("data/base_gifp_2018_2022.xlsx")) |> as.data.table()
dt[, BO := TRUE]