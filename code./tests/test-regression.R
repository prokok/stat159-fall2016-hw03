source("../functions/regression-functions.R")


context("Test for residual_sum_squares") 
test_that("residual_sum_squares", {
  reg = lm(mpg ~ disp + hp, data = mtcars)
  regsum = summary(reg)
  
  expect_equal(residual_sum_squares(reg), sum(reg$residuals^2))
  expect_length(residual_sum_squares(reg), 1)
  expect_gte(residual_sum_squares(reg), 0)
  expect_type(residual_sum_squares(reg), 'double')
})


context("Test for total_sum_squares") 
test_that("total_sum_squares", {
  reg = lm(mpg ~ disp + hp, data = mtcars)
  regsum = summary(reg)
  
  expect_equal(total_sum_squares(reg), sum((mtcars$mpg - mean(mtcars$mpg))^2))
  expect_length(total_sum_squares(reg), 1)
  expect_gte(total_sum_squares(reg), 0)
  expect_type(total_sum_squares(reg), 'double')
})


context("Test for r_squared") 
test_that("r_squared", {
  reg = lm(mpg ~ disp + hp, data = mtcars)
  regsum = summary(reg)
  
  expect_equal(r_squared(reg), regsum$r.squared)
  expect_length(r_squared(reg), 1)
  expect_gte(r_squared(reg), 0)
  expect_type(r_squared(reg), 'double')
})


context("Test for f_statistic") 
test_that("f_statistic", {
  reg = lm(mpg ~ disp + hp, data = mtcars)
  regsum = summary(reg)
  
  expect_equal(f_statistic(reg), as.vector(regsum$fstatistic[1]))
  expect_length(f_statistic(reg), 1)
  expect_gte(f_statistic(reg), 0)
  expect_type(f_statistic(reg), 'double')
})


context("Test for residual_std_error") 
test_that("residual_std_error", {
  reg = lm(mpg ~ disp + hp, data = mtcars)
  regsum = summary(reg)
  
  expect_equal(residual_std_error(reg), regsum$sigma)
  expect_length(residual_std_error(reg), 1)
  expect_gte(residual_std_error(reg), 0)
  expect_type(residual_std_error(reg), 'double')
})


