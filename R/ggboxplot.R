#' Title
#'
#' @param data a data frame or a tibble from which the input variables are taken
#' @param categorical_variable a string that contains the name of a categorical variable of interest that is used for the boxplot and is mapped to the x axis
#' @param numeric_variable a string that contains a numeric variable of interest that is used for the boxplot and is mapped to the y axis
#' @param xlab a string that contains the text for the x axis. If not specified, the default value is the name of the categorical variable
#' @param ylab a string that contains the text for the y axis. If not specified, the default value is the name of the numeric variable
#'
#' @return
#' ggboxplot returns an object of class ggplot.
#' @export
#' @example
#' data <- data.frame(tree = c('cedar', 'maple'), dbh = 1:2)
#' ggboxplot(data, 'tree', 'dbh')

ggboxplot <- function(data, categorical_variable, numeric_variable, xlab = categorical_variable, ylab = numeric_variable){
  if (!all(class(data) %in% c('tbl', 'data.frame', 'tbl_df'))){
    stop('The input data is not a data frame or tibble')
  }
  else{
    # get the class of each column
    variable_class <- purrr::map_chr(data, class)
    # if no numeric columns are found, a stop message will be shown
    if (!variable_class[[numeric_variable]] %in% c('integer', 'numeric')){
      stop('The input numeric variable is not in the class of numeric or integer')
    }
    # if there are numeric columns, continue the function
    else{
      # convert strings into symbols for curly-curly use
      x <- dplyr::sym(categorical_variable)
      y <- dplyr::sym(numeric_variable)

      # make a boxplot

      plot <- ggplot2::ggplot(data, ggplot2::aes(y = {{ y }}, x = {{ x }})) +
        ggplot2::geom_boxplot() +
        ggplot2::xlab(xlab) +
        ggplot2::ylab(ylab)
    }}
  # return a plot
  plot
}
