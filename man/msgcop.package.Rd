\name{msgcop-package}
\alias{msgcop-package}
\alias{msgcop}
\docType{package}
\title{
Semiparametric Bayesian Gaussian copula estimation
}
\description{
 This package estimates parameters of a Gaussian
        copula, treating the univariate marginal distributions
        as nuisance parameters as described in Hoff(2006). It also
        provides a semiparametric imputation procedure for missing
       multivariate data.
}
\details{
\tabular{ll}{
Package: \tab msgcop\cr
Type: \tab Package\cr
Version: \tab 0.9 \cr
Date: \tab 2006-10-06\cr
License: \tab GPL Version 2 or later \cr
}
This function produces MCMC samples from the posterior
distribution of a correlation matrix, using a scaled
inverse-Wishart prior distribution and a partial set
likelihood. It also provides imputation for missing values
in a multivariate dataset.
}
\author{
Peter Hoff <hoff@stat.washington.edu>
}
\references{
 Hoff (2006) ``Marginal set likelihood for semiparametric copula estimation''
}
\keyword{ multivariate }
\examples{

fit<-msgcop.mcmc(swiss)
summary(fit)
plot(fit)

}
