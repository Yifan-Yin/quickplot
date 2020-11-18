test_that('test the function', {
  # the input numeric variable (the variable 'country' is in the class of factor) does not meet the requirement to be in the class of integer or numeric. The function will stop and return an error message
  expect_error(ggboxplot(data.frame(tree = c('cedar', 'maple'), dbh = 1:2), 'tree', 'tree'), 'The input numeric variable is not in the class of numeric or integer')
  # the input data is a string, which does not meet the requirement to be a data frame or tibble. The function will stop and return an error message
  expect_error(ggboxplot('a', categorical_variable = 'continent', numeric_variable = 'lifeExp'), 'The input data is not a data frame or tibble')
  # test the result is in the class of ggplot
  expect_true(all(class(ggboxplot(data.frame(tree = c('cedar', 'maple'), dbh = 1:2), categorical_variable = 'tree', numeric_variable = 'dbh')) %in% c('ggplot', 'gg')))
})
