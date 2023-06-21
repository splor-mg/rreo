test_that("Despesa Total 2018", {
  expect_equal(diff("BO", "VL_LOA_DESP", 2018), accounting(0))
  expect_equal(diff("BO", "VL_CRED_AUT", 2018), accounting(0))
  expect_equal(diff("BO", "VL_EMP", 2018), accounting(0))
  expect_equal(diff("BO", "VL_LIQ", 2018), accounting(0))
})

test_that("Despesa Total 2019", {
  expect_equal(diff("BO", "VL_LOA_DESP", 2019), accounting(0))
  expect_equal(diff("BO", "VL_CRED_AUT", 2019), accounting(0))
  expect_equal(diff("BO", "VL_EMP", 2019), accounting(0))
  expect_equal(diff("BO", "VL_LIQ", 2019), accounting(0))
})

test_that("Despesa Total 2020", {
  expect_equal(diff("BO", "VL_LOA_DESP", 2020), accounting(0))
  expect_equal(diff("BO", "VL_CRED_AUT", 2020), accounting(0))
  expect_equal(diff("BO", "VL_EMP", 2020), accounting(0))
  expect_equal(diff("BO", "VL_LIQ", 2020), accounting(0))
})

test_that("Despesa Total 2021", {
  expect_equal(diff("BO", "VL_LOA_DESP", 2021), accounting(0))
  expect_equal(diff("BO", "VL_CRED_AUT", 2021), accounting(0))
  expect_equal(diff("BO", "VL_EMP", 2021), accounting(0))
  expect_equal(diff("BO", "VL_LIQ", 2021), accounting(0))
})

test_that("Despesa Total 2022", {
  expect_equal(diff("BO", "VL_LOA_DESP", 2022), accounting(0))
  expect_equal(diff("BO", "VL_CRED_AUT", 2022), accounting(0))
  expect_equal(diff("BO", "VL_EMP", 2022), accounting(0))
  expect_equal(diff("BO", "VL_LIQ", 2022), accounting(0))
})
