#' Custom ggplot theme for my package
#'
#' This function applies a custom theme to ggplot objects.
#'
#' @import ggplot2
#' @export


# Crear el tema personalizado
goterps_theme <- function() {
  theme_minimal(base_family = "Arial") +  # Set a default font family for the rest
    theme(
      # Title with custom font
      plot.title = element_text(family = "CustomFont", face = "bold", color = "#CC0000", size = 20),

      # Subtítulo en negro, más pequeño que el título
      plot.subtitle = element_text(face = "plain", color = "#000000", size = 16),

      # Caption en gris, más pequeño que el subtítulo
      plot.caption = element_text(face = "plain", color = "#808080", size = 12),

      # Nombres de los ejes como el caption
      axis.title = element_text(face = "plain", color = "#808080", size = 12),

      # Ticks en negro y líneas dashed en gris para la escala
      axis.ticks = element_line(color = "#000000"),
      axis.ticks.length = unit(0.2, "cm"),
      panel.grid.major = element_line(color = "#D3D3D3", linetype = "dashed"),
      panel.grid.minor = element_line(color = "#D3D3D3", linetype = "dashed"),
      plot.margin = margin(t = 5, r = 5, b = 5, l = 5) # Ajustar los márgenes para el logo

    )
}
