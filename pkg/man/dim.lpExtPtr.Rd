\name{dim.lpExtPtr}
\alias{dim.lpExtPtr}
\alias{dim<-.lpExtPtr}

\title{Dimension of an Object}

\description{
Retrieve the dimension (number of rows and columns) from an lpSolve linear programming model.
}

\usage{
\method{dim}{lpExtPtr}(x)
\method{dim}{lpExtPtr}(x) <- value
}

\arguments{
  \item{x}{an lpSolve linear programming model.}
  \item{value}{assignment is not supported.}
}

\details{
Setting the number of rows/columns is not supported.  See \code{\link{resize.lp}}.
}

\value{
an integer vector of length two containing the number of rows and the number of columns in the lpSolve linear programming model.
}

\references{\url{http://lpsolve.sourceforge.net/5.5/index.htm}}

\author{Kjell Konis \email{kjell.konis@epfl.ch}}

\seealso{\code{\link{resize.lp}}}

\examples{
lps.model <- make.lp(4, 0)

x <- c(6,2,4,9)
add.column(lps.model, x)

y <- c(3,1,5)
ind <- c(1,2,4)
add.column(lps.model, y, ind)

dim(lps.model)
}

\keyword{programming}
