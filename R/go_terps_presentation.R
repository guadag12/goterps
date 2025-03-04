# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   https://r-pkgs.org
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

#' Create a New Quarto Presentation
#'
#' This function copies a Quarto presentation template into a new directory.
#' @param path The directory where the new presentation should be created.
#' @export

go_terps_presentation <- function(path) {
  template_dir <- system.file("template", package = "goterps")
  file.copy(template_dir, path, recursive = TRUE)
  message("Template copied to ", path)
}
