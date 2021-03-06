% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/shrink.phi.R
\name{shrink.phi}
\alias{shrink.phi}
\title{Shrinkaged Estimates of Error Variance}
\usage{
shrink.phi(phi.hat, den.df)
}
\arguments{
\item{phi.hat}{a numerical vector of the estimated  of error variance of all
genes.}

\item{den.df}{denominator degree of freedom associated with the estimated
variances phi.hat (=n sample -rank(design)).}
}
\value{
a list of 3 components \item{phi.shrink}{vector of shrinkaged
  estimates of variance.} \item{d0}{estimated prior degree of freedom used
  inthe  shrinkage procedure.} \item{phi0}{estimated prior variance used in
  the shrinkage procedure.}
}
\description{
This function implements Smyth's approach (empirical bayes estimate of error
variance of genes, limma paper 2004).
}
\examples{
phi.hat <- rchisq(1000, 1)
den.df <- 2
shrinkout <- rmRNAseq:::shrink.phi(phi.hat, den.df)
hist(shrinkout$phi.shrink)
}
