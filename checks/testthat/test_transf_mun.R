test_that("Transferências a Municípios 2018", {
  expect_equal(diff("TRANSF_MUN", "VL_LOA_DESP", 2018), accounting(0))
  expect_equal(diff("TRANSF_MUN", "VL_CRED_AUT", 2018), accounting(0))
  expect_equal(diff("TRANSF_MUN", "VL_EMP", 2018), accounting(0))
  expect_equal(diff("TRANSF_MUN", "VL_LIQ", 2018), accounting(0))
})

test_that("Transferências a Municípios 2019", {
  expect_equal(diff("TRANSF_MUN", "VL_LOA_DESP", 2019), accounting(0))
  expect_equal(diff("TRANSF_MUN", "VL_CRED_AUT", 2019), accounting(0))
  expect_equal(diff("TRANSF_MUN", "VL_EMP", 2019), accounting(0))
  expect_equal(diff("TRANSF_MUN", "VL_LIQ", 2019), accounting(0))
})

test_that("Transferências a Municípios 2020", {
  expect_equal(diff("TRANSF_MUN", "VL_LOA_DESP", 2020), accounting(0))
  expect_equal(diff("TRANSF_MUN", "VL_CRED_AUT", 2020), accounting(0))
  expect_equal(diff("TRANSF_MUN", "VL_EMP", 2020), accounting(0))
  expect_equal(diff("TRANSF_MUN", "VL_LIQ", 2020), accounting(0))
})

test_that("Transferências a Municípios 2021", {
  expect_equal(diff("TRANSF_MUN", "VL_LOA_DESP", 2021), accounting(0))
  expect_equal(diff("TRANSF_MUN", "VL_CRED_AUT", 2021), accounting(0))
  expect_equal(diff("TRANSF_MUN", "VL_EMP", 2021), accounting(0))
  expect_equal(diff("TRANSF_MUN", "VL_LIQ", 2021), accounting(0))
})

test_that("Transferências a Municípios 2022", {
  expect_equal(diff("TRANSF_MUN", "VL_LOA_DESP", 2022), accounting(0))
  expect_equal(diff("TRANSF_MUN", "VL_CRED_AUT", 2022), accounting(0))
  expect_equal(diff("TRANSF_MUN", "VL_EMP", 2022), accounting(0))
  expect_equal(diff("TRANSF_MUN", "VL_LIQ", 2022), accounting(0))
})
