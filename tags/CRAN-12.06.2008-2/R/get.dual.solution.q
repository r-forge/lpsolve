get.dual.solution <- function(lprec)
  .Call("RlpSolve_get_dual_solution", lprec, PACKAGE = "lpSolveAPI")

