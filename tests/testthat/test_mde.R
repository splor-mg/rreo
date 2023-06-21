check <- function(criterio, var, ano) {
  calculado <- sum(dt[ANO == ano & dt[[criterio]] == TRUE][[var]])
  publicado <- rreo[[criterio]][[as.character(ano)]][[var]]
  diff <- round(calculado, 2) - round(publicado, 2)
  accounting(diff)
}

test_that("MDE 2020", {
  expect_equal(accounting(0), check("MDE", "VL_LOA_DESP", 2020))
  expect_equal(accounting(0), check("MDE", "VL_CRED_AUT", 2020))
  expect_equal(accounting(0), check("MDE", "VL_EMP", 2020))
  expect_equal(accounting(0), check("MDE", "VL_LIQ", 2020))
})

test_that("TOTAL 2022", {
  expect_equal(accounting(0), check("BO", "VL_LOA_DESP", 2022))
  expect_equal(accounting(0), check("BO", "VL_CRED_AUT", 2022))
  expect_equal(accounting(0), check("BO", "VL_EMP", 2022))
  expect_equal(accounting(0), check("BO", "VL_LIQ", 2022))
})

test_that("ASPS 2019", {
  expect_equal(accounting(0), check("ASPS", "VL_LOA_DESP", 2019))
  expect_equal(accounting(0), check("ASPS", "VL_CRED_AUT", 2019))
  expect_equal(accounting(0), check("ASPS", "VL_EMP", 2019))
  expect_equal(accounting(0), check("ASPS", "VL_LIQ", 2019))
})