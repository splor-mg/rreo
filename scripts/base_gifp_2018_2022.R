library(execucao); library(relatorios); library(data.table); library(jsonlite)

add_criterios_desp <- function(base, detalhe) {
  
  base <- add_criterio_seplag(base, detalhe)
  base[, OBRIG := is_obrig(base, detalhe)]
  base[, MDE := is_mde_desp(base)]
  base[, FAPEMIG := is_fapemig_desp(base)]
  base[, OUTROS_PODERES := is_outros_poderes(base)]
  base[, ASPS := is_asps_desp(base, detalhe)]
  base[, INTRA_SAUDE := is_intra_saude_desp(base, detalhe)]
  base[, TRANSF_MUN := is_transf_const_mun_desp(base)]
  base[, DTP := is_dtp(base)]
  base[, DBP := is_dbp(base)]
  base[, COMPLEMENTACAO := is_complementacao_desp(base, detalhe)]
  
  return(base[])
}

cols <- c("ANO", "UO_COD","ACAO_COD", "GRUPO_COD", "IPG_COD", "FONTE_COD", "IPU_COD")
criterios <- c("CRITERIO_SEPLAG","OBRIG", "TRANSF_MUN", "MDE", "ASPS", "INTRA_SAUDE", "FAPEMIG", "OUTROS_PODERES", "DTP", "DBP")
anos <- 2018:2022


cred_inicial <- loa_desp[ANO %in% anos]
cred_inicial <- add_criterios_desp(cred_inicial, "ELEMENTO_ITEM_COD")
cred_inicial <- cred_inicial[
  ,
  .(VL_LOA_DESP = sum(VL_LOA_DESP)),
  by = c(cols, criterios)
]

cred_aut <- exec_suplementacao[ANO %in% anos]
cred_aut$ELEMENTO_COD <- NA
cred_aut$ELEMENTO_ITEM_COD <- NA
cred_aut <- add_criterios_desp(cred_aut, "ACAO_COD")
cred_aut <- cred_aut[
  ,
  .(VL_CRED_AUT = sum(VL_CRED_AUT)), 
  by = c(cols, criterios)
]

execucao <- exec_desp[ANO %in% anos]
execucao <- add_criterios_desp(execucao, "ELEMENTO_ITEM_COD")
execucao <- execucao[
  , 
  .(VL_EMP = sum(VL_EMP), VL_LIQ = sum(VL_LIQ)), 
  by = c(cols, criterios)
]


dt <- merge(cred_inicial, cred_aut, by = c(cols, criterios), all = TRUE)
dt <- merge(dt, execucao, by = c(cols, criterios), all = TRUE)
setnafill(dt, fill = 0, cols=c("VL_LOA_DESP","VL_CRED_AUT", "VL_EMP","VL_LIQ"))
dt <- adiciona_desc(dt, columns = c("ACAO_COD"))
writexl::write_xlsx(dt, "data/base_gifp_2018_2022.xlsx")