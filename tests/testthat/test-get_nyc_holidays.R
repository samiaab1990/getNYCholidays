test_that("get_nyc_holidays returns a vector", {
  expect_true(inherits(get_nyc_holidays(), "Date"))
})

test_that("get_nyc_holidays return_data_frame = TRUE returns dataframe",{
  expect_true(is.data.frame(get_nyc_holidays(return_data_frame=TRUE)))
})
