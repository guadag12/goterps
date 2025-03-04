#' Custom ggplot theme for my package
#'
#' This function applies a custom theme to ggplot objects.
#'
#' @import ggplot2
#' @export
go_terps_theme <- function() {
  theme_minimal() +
    theme(
      plot.background = element_rect(fill = "white", colour = "white"),
      panel.background = element_rect(fill = "white", colour = "white"),
      text = element_text(family = "Arial", color = "#333333"),
      axis.title = element_text(size = 12),
      axis.text = element_text(size = 10),
      legend.title = element_text(size = 10),
      legend.text = element_text(size = 8)
    )
}
