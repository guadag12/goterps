#' Custom ggplot scale of colors for continuous variables.
#'
#' This function applies a scale of UMD colors to continuous ggplot objects.
#'
#' @param theme A character string. The base color theme to use. Options are "yellow", "red", or "grey".
#' @param n An integer. Number of gradient colors to generate.
#' @importFrom grDevices colorRampPalette
#' @import ggplot2
#' @export

goterps_palette_c <- function(theme, n) {
  # Define the base colors
  base_colors <- c("yellow" = "#ffd000", "red" = "#e21833", "grey" = "#434a4f")

  # Check if the selected theme is valid
  if (!theme %in% names(base_colors)) {
    stop("Invalid theme. Choose from 'yellow', 'red', or 'grey'.")
  }

  # Generate a gradient based on the selected theme
  color_start <- base_colors[theme]
  color_end <- "white"

  # Create a gradient from the theme color to white
  colors <- colorRampPalette(c(color_start, color_end))(n)
  return(colors)
}


#' @examples
#' # Example using goterps_palette_c and goterps_theme with ggplot2
#' library(ggplot2)
#' ggplot(iris[iris$Species == "setosa",], aes(x = Sepal.Width, y = Sepal.Length, color = Sepal.Length)) +
#'   geom_point(size = 4) +
#'   scale_color_gradientn(colors = goterps_palette_c("yellow", 5)) +
#'   labs(
#'     x = "Sepal Width", y = "Sepal Length",
#'     title = "Scatter Plot of Iris Data Colored by Sepal Length"
#'   ) +
#'   theme(plot.title = element_text(hjust = 0.5))
