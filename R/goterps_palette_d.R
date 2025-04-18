#' Custom ggplot scale of colors for discrete variable.
#'
#' This function applies a scale of UMD colors to discrete ggplot objects.
#'
#' @import ggplot2
#' @export

goterps_palette_d <- function(n) {
  colors <- c("#ffd000", "#e21833", "#434a4f")  # Define the UMD colors
  rep(colors, length.out = n)  # Repeat the colors up to n times
}

# Example on how to use the function
#ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
#  geom_point(size = 4) +
#  scale_color_manual(values = umd_colors(3)) +  # Use the UMD colors in the plot
#  goterps_theme() +
#  scale_fill_manual(values = goterps_palette_d()) +
#  labs(title = "Scatter Plot of Iris Data Colored by Species",
#       x = "Sepal Length",
#       y = "Sepal Width",
#       color = "Species")
