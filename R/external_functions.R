# library(learnr)
# library(roxygen2)

#' Öffnet ein Tutorial in Otter
#'
#' @param tutorial_name Gebe den Kurznamen des Tutorials als character string an.
#' Erhalte die Kurznahmen der Tutorials mit `show_all_tutorials()`.
#'
#' @return öffnet das spezifizierte Tutorial.
#' Die Standardeinstellung ist auf "Grundlagen" gesetzt.
#' @export
#'
#' @examples
#' # Der folgende Code ist als Kommentar geschrieben, und muss entkommentiert
#' # werden, damit er funktioniert:
#' #library(otter)
#' #open_tutorial("Grundlagen")
open_tutorial <- function(tutorial_name = "Grundlagen") {
  if (!is.character(tutorial_name)) {stop("Invalid input argument: tutorial name must be a charcter string.")}
  learnr::run_tutorial(tutorial_name, package = "otter")
}

#' Zeige alle Tutorials in Otter
#'
#' @return gibt auf der Konsole aus, welche Tutorials es in Otter gibt und wie deren Kurznamen heißen.
#' @export
#'
#' @examples
#' library(otter)
#' show_all_tutorials()
show_all_tutorials <- function() {
  learnr::available_tutorials(package = "otter")
}
