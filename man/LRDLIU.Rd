\docType{data}
\name{LRDLIU}
\alias{LRDLIU}
\title{LRD Atmosphere and SKIRTOR Dust Emission Template}
\source{
  Stalevski et al. (2012), MNRAS, 420, 2756 \cr
  Stalevski et al. (2016), MNRAS, 458, 2288 \cr
  Liu et al. (2026, in prep), \url{http://arxiv.org/abs/2603.02317}
}
\usage{data("LRDLIU")}
\description{
  A data frame representing the LRD atmosphere models and the SKIRTOR thermal
  emission AGN template used for SED fitting of LRD optically thick blackbody
  models.
}
\format{
  A list containing the LRD atmosphere and SKIRTOR dust emission model. For the SKIRTOR emission, this is only the torus
  thermal emission for energy balance in the LRD atmospheres,
  i.e., the same SKIRTOR model without the power-law accretion disk. The format
  is:

  \describe{
    \item{Wave}{Numeric vector; wavelengths in microns.}
    \item{Aspec}{Numeric array \code{[1:5, 1:4, 1:4, 1:8, 1:3, 1:1, 1:10, 1:132]};
      the SED grid with named dimensions corresponding to model parameters.}
    \item{params}{Character vector of parameter names: \code{"Teff"},
      \code{"logg"}.}
    \item{Teff}{Numeric vector; effective temperatures in Kelvin of the
      atmosphere grid.}
    \item{logg}{Numeric vector; log10 of surface gravity in cm/s\ifelse{html}{\out{&sup2;}}{\eqn{^2}} for the grid.}
    \item{SKIRTORDUST}{Data frame; for the \code{\link{LRDBBSKIRTOR}} and \code{\link{SKIRTOR}} thermal emission model. }
  }
}
\keyword{datasets}