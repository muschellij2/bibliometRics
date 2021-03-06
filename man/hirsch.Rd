% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hirsch.R
\name{hirsch}
\alias{hirsch}
\alias{egghe}
\alias{ifactor}
\title{Calculate Hirsch's h-index or Egghe's g-index}
\usage{
hirsch(bib, year = NULL)

egghe(bib, year = NULL)

ifactor(bib, year = NULL, n = 2)
}
\arguments{
\item{bib}{A list with an element called  \code{pubs}, which is a
\code{data.frame} with column \code{'Publication Year'}.  Usually
from \code{\link{read.wos}}}

\item{year}{Maximum year to include for calculation}

\item{n}{number of years}
}
\value{
A scalar number
}
\description{
Calculate Hirsch's h-index or Egghe's g-index
}
\examples{
wos_file = system.file("sbegueria.txt", package = "bibliometRics")
bib <- read.wos(wos_file)
hirsch(bib)
hirsch(bib, 2010)
egghe(bib)
egghe(bib, 2010)
ifactor(bib) # 2-year impact factor
ifactor(bib,2013) # 2-year impact factor, year 2013
ifactor(bib,n=5)  # 5-year impact factor#'
}
