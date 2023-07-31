# library(learnr)
# library(roxygen2)

#' import rsconnect

#' Open Tutorials in the otter package
#'
#' @param tutorial_name character string
#'
#' @return opens the tutorial
#' @export
#'
#' @examples
#' library(otter)
#' #open_tutorial("R_und_RStudio_Grundlagen")
open_tutorial <- function(tutorial_name) {
  if (!is.character(tutorial_name)) {stop("Invalid input argument: tutorial name must be a charcter string.")}
  learnr::run_tutorial(tutorial_name, package = "otter")
}

#' Show all tutorials in the otter package
#'
#'
#' @return prints out on the console all available tutorials in the ottter package
#' @export
#'
#' @examples
#' library(otter)
#' #show_all_tutorials()
show_all_tutorials <- function() {
  learnr::available_tutorials(package = "otter")
}
