#' colorizes Text in the otter package
#'
#' @param x Text
#' @param color Colour
#'
#' @return Coloured text
#' @export
#'
colorize <- function(x, color) {
  if (knitr::is_latex_output()) {
    sprintf("\\textcolor{%s}{%s}", color, x)
  } else if (knitr::is_html_output()) {
    sprintf("<span style='color: %s;'>%s</span>", color,
      x)
  } else x
}
