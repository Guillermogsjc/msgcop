\name{msgcop.mcmc}
\alias{msgcop.mcmc}
\alias{plot.psgc}
\alias{summary.psgc}
\alias{print.sum.psgc}
\title{Semiparametric Bayesian Gaussian copula estimation}
\description{
\code{msgcop.mcmc} is used to semiparametrically estimate the
parameters of a Gaussian copula. It can be used for posterior
inference on the copula parameters, or for imputation of
missing values in matrix-valued data.
}
\usage{
msgcop.mcmc(Y, S0 = diag(dim(Y)[2]), n0 = dim(Y)[2] + 2, nsamp = 100, odens = max(1, round(nsamp/1000)), seed = 1, verb = TRUE)
}
\arguments{
  \item{Y}{ an n x p matrix. Missing values are allowed.   }
  \item{S0}{ a p x p positive definite matrix }
  \item{n0}{ a positive integer }
  \item{nsamp}{ number of iterations of the Markov chain. }
  \item{odens}{ output density: number of  iterations  between
       saved samples.  }
 \item{seed}{ an integer for the random seed}
 \item{verb}{ print progress of MCMC(TRUE/FALSE)? }
}
\details{
This function produces MCMC samples from the posterior
distribution of a correlation matrix, using a scaled 
inverse-Wishart prior distribution and a partial set
likelihood. It also provides imputation for missing values 
in a multivariate dataset. 
}
\value{
 An object of class \code{psgc} containing the following components:
\item{C.psamp }{an array of size p x p x \code{nsamp/odens},
   consisting of posterior samples of the correlation matrix.  }
  \item{Y.pmean }{the original datamatrix with imputed
                   values replacing missing data   }
  \item{LPC }{the log-probability of the latent variables at each
      saved sample. Used for diagnostic purposes.   }
}
\references{http://www.stat.washington.edu/hoff/}
\author{Peter Hoff }
\examples{
fit<-msgcop.mcmc(swiss)
summary(fit)
plot(fit)
}
\keyword{ multivariate }
\keyword{ models }
