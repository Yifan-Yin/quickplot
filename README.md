
<!-- README.md is generated from README.Rmd. Please edit that file -->

# quickplot

<!-- badges: start -->

<!-- badges: end -->

The purpose of quickplot is to produce `ggplot` in a more convenient
way. It can make a beautiful ggplot using a single function.

## Installation

You can install the released version of quickplot from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("quickplot")
```

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("Yifan-Yin/quickplot")
```

## Basic Usage

Make a boxplot to visualize the distribution of life Expectancy in
different different continents by using the `ggboxplot()` function.

``` r
library(quickplot)
library(gapminder)
#> Warning: package 'gapminder' was built under R version 4.0.3
## use ggboxplot to make a boxplot
ggboxplot(gapminder, categorical_variable = 'continent', numeric_variable = 'lifeExp')
```

<img src="man/figures/README-example-1.png" width="100%" />
