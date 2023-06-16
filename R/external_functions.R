# library(learnr)
# library(roxygen2)


#' Open Tutorials in the studyr package
#'
#' @param tutorial_name character string
#'
#' @return opens the tutorial
#' @export
#'
##' @examples open_tutorial()
open_tutorial <- function(tutorial_name) {
  if (!is.character(tutorial)) {stop("Invalid input argument: tutorial name must be a charcter string.")}
  learnr::run_tutorial(tutorial, package = "studyr")
}

