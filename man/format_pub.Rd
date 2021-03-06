% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/format_pub.R
\name{format_pub}
\alias{format_pub}
\title{Format Publication data}
\usage{
format_pub(x, au)
}
\arguments{
\item{x}{A list with an element called  \code{pubs}, which is a
\code{data.frame} with columns \code{'Publication Year'} and
\code{'Total Citations'}.  Usually
from \code{\link{read.wos}}}

\item{au}{Author to grab publications}
}
\value{
A character vector
}
\description{
Format Publication data
}
\examples{
wos_file = system.file("sbegueria.txt", package = "bibliometRics")
bib <- read.wos(wos_file)
base = read.baselines()
au = bib$au
au = gsub('Ñ', 'N', au)
format_pub(cbind(bib$pubs,
citation_rank(bib,quant=base$GEOSCIENCES))[1,],
 au=au)
}
