context("Testing Binomial Distribution")

test_that("check_prob with 2 ok and 1 invalid prob", {
  expect_true(check_prob(0.5))
  expect_true(check_prob(0.75))
  expect_error(check_prob(1.1))
})

test_that("check_trials with 2 ok and 1 invalid trials", {
  expect_true(check_trials(5))
  expect_true(check_trials(6))
  expect_error(check_trials(0.5))
})

test_that("check_success with 2 ok and 1 invalid success", {
  expect_true(check_success(1, 2))
  expect_true(check_success(1, 3))
  expect_error(check_success(4, 1))
})

test_that("aux_mean with 3 ok input", {
  expect_equal(aux_mean(5, 0.5), 2.5)
  expect_equal(aux_mean(10, 0.6), 6)
  expect_is(aux_mean(1.5, .7), "numeric")
})

test_that("aux_variance with 2 ok and 1 invalid input", {
  expect_length(aux_variance(2, 0.9), 1)
  expect_equal(aux_variance(11, 0.68), 2.3936)
  expect_error(aux_variance(1.2, "a"))
})

test_that("aux_mode with 2 ok and 1 invalid input", {
  expect_is(aux_mode(65, 0.85), "numeric")
  expect_is(aux_mode(105, 0.76), "numeric")
  expect_error(aux_mode(5, "Blob"))
})

test_that("aux_skewness with 2 ok and 1 invalid input", {
  expect_length(aux_skewness(57, 0.95), 1)
  expect_length(aux_skewness(160, 0.69), 1)
  expect_error(aux_skewness(1.7, "l"))
})

test_that("aux_kurtosis with 2 ok and 1 invalid input", {
  expect_equal(aux_kurtosis(21, 0.78), -0.008214008)
  expect_equal(aux_kurtosis(72, 0.27), -0.01286713)
  expect_error(aux_kurtosis(1.8, "a"))
})

test_that("bin_choose with 3 invalid input", {
  expect_error(bin_choose(5, 10))
  expect_error(bin_choose(10, 17))
  expect_error(bin_choose(1.5, "f"))
})

test_that("bin_probability with 2 ok and 1 invalid input", {
  expect_length(bin_probability(5, 10, 0.5), 1)
  expect_length(bin_probability(12, 17, 0.8), 1)
  expect_error(bin_probability(13, 17, 2.6))
})

test_that("bin_distribution with 2 ok and 1 invalid input", {
  expect_length(bin_distribution(5, 0.5), 2)
  expect_length(bin_distribution(12, 0.8), 2)
  expect_error(bin_distribution(1, 50))
})

test_that("bin_cumulative with 2 ok and 1 invalid input", {
  expect_length(bin_cumulative(21, 0.5), 3)
  expect_length(bin_cumulative(2, 0.74), 3)
  expect_error(bin_cumulative(-15, 0.6))
})










