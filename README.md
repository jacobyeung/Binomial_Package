
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Binomial Distribution

The package “binomial” is a method to calculate the various attributes
of a binomial distribution given parameters. Below is an example of how
to install the package.

``` r
devtools::install_github("jacobyeung/Binomial_Package")
library(binomial)
```
Dependencies: 
ggplot2
## Using the math Choose function

To calculate the number of comibnations in which k successes can occur
in n trials, we use the bin\_choose() function:

``` r
bin_choose(n = 5, k = 2)
#> [1] 10
```

# Creating a Binomial Random Variable

To create a binomial random variable with k trials and probability prob,
we use the function bin\_variable():

``` r
variable = bin_variable(trials = 5, prob = 0.5)
```

## Calculating the Binomial Probability

To calculate the probability of k successes, each independent with
probability prob, on n repeated trials, we use the bin\_probability()
function:

``` r
bin_probability(success = 2, trials = 5, prob = 0.5)
#> [1] 0.3125
```

## Calculating the Binomial Distribution

To calculate the binomial distribution of k trials and probability prob,
we use the bin\_distribution() function:

``` r
distribution = bin_distribution(trials = 5, prob = 0.5)
distribution
#>   Success Probability
#> 1       0     0.03125
#> 2       1     0.15625
#> 3       2     0.31250
#> 4       3     0.31250
#> 5       4     0.15625
#> 6       5     0.03125
```

### Displaying the Binomial Distribution

To plot the above calculated binomial distribution, we use the function
plot.bindis():

``` r
plot.bindis(distribution)
```

![](README-unnamed-chunk-7-1.png)<!-- -->

## Finding the Cumulative Distribution of a Binomial Random Variable

To find the cumulative distribution of k trials and probability prob, we
use the function bin\_cumulative():

``` r
cumulative_distribution = bin_cumulative(trials = 5, prob = 0.5)
cumulative_distribution
#>   Success Probability cumulative
#> 1       0     0.03125    0.03125
#> 2       1     0.15625    0.18750
#> 3       2     0.31250    0.50000
#> 4       3     0.31250    0.81250
#> 5       4     0.15625    0.96875
#> 6       5     0.03125    1.00000
```

### Displaying the Cumulative Distribution

To plot the above calculated cumulative distribution, we use the
function plot.bincum():

``` r
plot.bincum(cumulative_distribution)
```

![](README-unnamed-chunk-9-1.png)<!-- -->

# Creating the Summary of a Binomial Variable

To create the summary of a binomial variable, we use the function
summary.binvar():

``` r
summary.binvar(variable)
#> "Summary Binomial"
#> 
#> Parameters
#> - number of trials: 5 
#> - prob of success : 0.5 
#> 
#> Measures
#> - mean    : 2.5 
#> - variance: 1.25 
#> - mode    : 3 
#>  - mode    : 2 
#> - skewness: 0 
#> - kurtosis: -0.4
```

## Displaing the Summary of a Binomial Variable

To display the summary of a binomial variable, we use the function
print.summary.binvar():

``` r
print.summary.binvar(variable)
#> "Summary Binomial"
#> 
#> Parameters
#> - number of trials: 5 
#> - prob of success : 0.5 
#> 
#> Measures
#> - mean    :  
#> - variance:  
#> - mode    :  
#> - skewness:  
#> - kurtosis:
```
