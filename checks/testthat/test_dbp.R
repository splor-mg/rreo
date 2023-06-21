test_that("Despesa Bruta com Pessoal 2018", {
  expect_equal(diff("DBP", "VL_EMP", 2018), accounting(0))
  expect_equal(diff("DBP", "VL_LIQ", 2018), accounting(0))
})

test_that("Despesa Bruta com Pessoal 2019", {
  expect_equal(diff("DBP", "VL_EMP", 2019), accounting(0))
  expect_equal(diff("DBP", "VL_LIQ", 2019), accounting(0))
})

test_that("Despesa Bruta com Pessoal 2020", {
  expect_equal(diff("DBP", "VL_EMP", 2020), accounting(0))
  expect_equal(diff("DBP", "VL_LIQ", 2020), accounting(0))
})

test_that("Despesa Bruta com Pessoal 2021", {
  expect_equal(diff("DBP", "VL_EMP", 2021), accounting(0))
  expect_equal(diff("DBP", "VL_LIQ", 2021), accounting(0))
})

test_that("Despesa Bruta com Pessoal 2022", {
  expect_equal(diff("DBP", "VL_EMP", 2022), accounting(0))
  expect_equal(diff("DBP", "VL_LIQ", 2022), accounting(0))
})
