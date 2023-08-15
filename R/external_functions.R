# library(learnr)
# library(roxygen2)

#' Open Tutorials in the otter package
#'
#' @param tutorial_name character string, the short name of the tutorial.
#' Get the short name of the tutorials using `show_all_tutorials()`.
#'
#' @return opens the specified tutorial. Default value is set to "Grundlagen".
#' @export
#'
#' @examples
#' library(otter)
#' #open_tutorial("Grundlagen")
open_tutorial <- function(tutorial_name = "Grundlagen") {
  if (!is.character(tutorial_name)) {stop("Invalid input argument: tutorial name must be a charcter string.")}
  learnr::run_tutorial(tutorial_name, package = "otter")
}

#' Show all tutorials in the otter package
#'
#'
#' @return prints out (on the console) all available tutorials in the otter package
#' @export
#'
#' @examples
#' library(otter)
#' show_all_tutorials()
show_all_tutorials <- function() {
  learnr::available_tutorials(package = "otter")
}
