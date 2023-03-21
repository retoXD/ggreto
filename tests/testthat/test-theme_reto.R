library(ggplot2)
test_that("themes work", {
  expect_no_error(
    iris %>%
      ggplot(aes(x = Sepal.Length, y =  Petal.Length, fill = Petal.Width)) +
      geom_point() +
      facet_wrap(. ~ Species) +
      theme_reto("light")
  )
  expect_no_error(
    iris %>%
      ggplot(aes(x = Sepal.Length, y =  Petal.Length, fill = Petal.Width)) +
      geom_point() +
      facet_wrap(. ~ Species) +
      theme_reto("dark")
  )
  expect_error(
    iris %>%
      ggplot(aes(x = Sepal.Length, y =  Petal.Length, fill = Petal.Width)) +
      geom_point() +
      facet_wrap(. ~ Species) +
      theme_reto("foobar")
  )
})
