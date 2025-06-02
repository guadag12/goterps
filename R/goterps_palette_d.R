#' Custom ggplot scale of colors for continuous variables.
#'
#' This function applies a scale of UMD colors to continuous ggplot objects.
#'
#' @param n An integer. Number of gradient colors to generate.
#'
#' @import ggplot2
#' @export

goterps_palette_d <- function(n) {
  colors <- c("#ffd000", "#e21833", "#434a4f")  # Define the UMD colors
  rep(colors, length.out = n)  # Repeat the colors up to n times
}

#' @examples
# Example on how to use the function
# library(ggplot2)
# ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
#  geom_point(size = 4) +
#  goterps_theme() +
#  scale_fill_manual(values = goterps_palette_d()) +
#  labs(title = "Scatter Plot of Iris Data Colored by Species",
#       x = "Sepal Length",
#       y = "Sepal Width",
#       color = "Species")
