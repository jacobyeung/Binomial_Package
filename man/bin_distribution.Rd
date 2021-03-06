% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/binomial.R
\name{bin_distribution}
\alias{bin_distribution}
\title{bin_distribution}
\usage{
bin_distribution(trials, prob)
}
\arguments{
\item{trials}{(integer) number of trials}

\item{prob}{(numeric) probability of success}
}
\value{
a data.frame with two classes: c("bindis", "data.frame")
}
\description{
creates a data.frame with two classes: c("bindis", "data.frame")
}
\examples{
bin_distribution(trials = 5, prob = 0.5)
}
