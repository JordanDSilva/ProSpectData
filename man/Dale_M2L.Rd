\name{Dale_M2L}
\alias{Dale_M2L}
\alias{Dale_M2L_func}
\alias{Dale_M2L_variableDTH_func}
\docType{data}
\title{
Dale Template Mass-to-Light
}
\description{
Returns the correct mass-to-light for a given \option{alpha_SF} (which is akin to dust temperature).
}
\usage{
data("Dale_M2L")
data("Dale_M2L_func")
data("Dale_M2L_variableDTH_func")
}
\format{
  \code{Dale_M2L} is a data frame with 64 observations on the following 2 variables.
  \describe{
    \item{\code{alpha_SF}}{Numeric vector; desired interpolated alpha slope of the star forming population. Lower values mean hotter dust.}
    \item{\code{M2L}}{Numeric vector; mass-to-light of the dust.}
  }
  \code{Dale_M2L_func} is a spline fit to \code{Dale_M2L}, and takes the input \option{alpha_SF} and returns the respective \option{M2L}. 
  
  \code{Dale_M2L_variableDTH_func} is similar to \code{Dale_M2L_func} but includes extra options to account for the variable DTH ratio when computing the mass-to-light.. \option{alpha_SF} is input and returns the respective \option{M2L}. \option{qPAH_VSG} is the mass fraction in PAH molecules and very-small-grains. Default qPAH_VSG=0.14 from Dale (2014) templates. \option{pivwave} is the pivot wavelength at which PAHs and VSGs no longer emit (transition between MIR and FIR). Default pivwave=10^5.4 from comparison with MagPhys. \option{step_speed} is the speed of the transition between PAH,VSGs (MIR) and big grains emission (FIR). Default step_speed=9 from comparison with MagPhys.
}
\details{
Simple data set and corresponding function that provide the mass-to-light which is used in \code{ProSpectSED} to compute dust masses.
}
\examples{
data(Dale_M2L)
data(Dale_M2L_func)
plot(Dale_M2L, log='y')
curve(Dale_M2L_func, col='red', add=TRUE)
curve(Dale_M2L_variableDTH_func, col='red', lty = 2, add=TRUE)

data(Dale_Msol)
sum(c(0,diff(Dale_Msol$Wave))*Dale_Msol$Aspec[[1]][30,])
Dale_M2L[30,'M2L']
}
\keyword{datasets}
