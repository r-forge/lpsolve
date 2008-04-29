get.type <- function(lprec, columns = 1:n, as.char = TRUE)
{
  n <- dim(lprec)[2]

  ind <- .Call("RlpSolve_is_int", lprec, as.integer(columns),
                PACKAGE = "lpSolve")

  if(as.char) {
    types <- rep("real", length(columns))
    types[ind] <- "integer"
  }

  else
    types <- ind

  types
}


