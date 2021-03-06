% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/outputDefaults.R
\name{prOutputDefaults}
\alias{prOutputDefaults}
\title{Set default values of output functions}
\usage{
prOutputDefaults(table = NA, image = NA, pdf = NA, cairo = NA)
}
\arguments{
\item{table}{Named list. The names correspond to argument names of \code{write.table} and
the values to the new default values of these parameters. If this argument
is \code{NULL} the defaults are reset to their original values}

\item{image}{Named list. The names correspond to argument names of \code{png} and
the values to the new default values of these parameters. If this argument
is \code{NULL} the defaults are reset to their original values}

\item{pdf}{Named list. The names correspond to argument names of \code{pdf} and
the values to the new default values of these parameters. If this argument
is \code{NULL} the defaults are reset to their original values}

\item{cairo}{Named list. The names correspond to argument names of \code{cairo_pdf} and
the values to the new default values of these parameters. If this argument
is \code{NULL} the defaults are reset to their original values}
}
\value{
\code{prOutputDefaults} invisibly returns the list of modified defaults
  values.
}
\description{
This function can modify the default values of the parameters of output
function like \code{\link{prWriteTable}} or \code{\link{prPdf}}. This can be
useful for instance to set in one and only one location the default size
of output images, the default font...
}
\examples{

# Remove row names of table output:
prOutputDefaults(table = list(row.names = FALSE))

# Modify the default size of pdf output:
prOutputDefaults(pdf = list(width = 8, height = 6))

# Reset default values for pdf and table output
prOutputDefaults(table = NULL, pdf = NULL)

}
