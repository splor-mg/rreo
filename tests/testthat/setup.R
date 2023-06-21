library(data.table); library(formattable); library(readxl)

rreo <- jsonlite::read_json(here::here("data/rreo.json"))
dt <- read_xlsx(here::here("data/base_gifp_2018_2022.xlsx")) |> as.data.table()
dt[, BO := TRUE]