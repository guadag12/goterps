#' Custom ggplot theme for my package
#'
#' This function applies a custom theme to ggplot objects.
#'
#' @import ggplot2, showtext, rsvg, grid
#' @export
#'
logo <- png::readPNG("https://github.com/guadag12/goterps/raw/main/img/logo.png")
logo_grob <- rasterGrob(logo, interpolate = TRUE)
print(logo_grob)

theme_custom_with_logo <- function() {
  theme_minimal(base_family = "Arial") +
    theme(
      plot.title = element_text(family = "CustomFont", face = "bold", color = "#CC0000", size = 20),
      plot.subtitle = element_text(face = "plain", color = "#000000", size = 16),
      plot.caption = element_text(face = "plain", color = "#808080", size = 12),
      axis.title = element_text(face = "plain", color = "#808080", size = 12),
      axis.ticks = element_line(color = "#000000"),
      axis.ticks.length = unit(0.2, "cm"),
      panel.grid.major = element_line(color = "#D3D3D3", linetype = "dashed"),
      panel.grid.minor = element_line(color = "#D3D3D3", linetype = "dashed"),
      plot.margin = margin(t = 50, r = 100, b = 20, l = 20) # Ajustar márgenes para dejar espacio al logo
    )
}
