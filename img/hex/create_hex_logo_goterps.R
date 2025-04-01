#######################################################
# How to create the Hex LOGO of goterps R package
# Author: Guadalupe Gonzalez (guadag12@umd.edu)
#######################################################

# Load Packages
library(cropcircles)
library(magick)
library(tidyverse)
library(ggpath)
library(ggtext)
library(glue)
library(showtext)
library(magick)
library(base64enc)

#Load Images
image_read("~/GitHub/goterps/img/hex/caparazon.jpg")
img_cropped <- hex_crop(
  images = "~/GitHub/goterps/img/hex/caparazon.jpg",
  border_colour = "#951022",
  border_size = 12
)

img2 <- image_read("~/GitHub/goterps/img/hex/m2.png")
img2 <- crop_square(img2)

#Add fonts

font_add_google("Bangers", "bangers")
font_add_google("Roboto", "rob")
showtext_auto()
ft <- "bangers"
ft1 <- "rob"
txt <- "#454545"
font_add("fa-brands", regular = "fonts/fontawesome-free-6.2.0-web/webfonts/fa-brands-400.ttf")

pkg_name <- "dumpster\nFire"
git_name <- "guadag12/goterps"

# Construct the plot
plot <- ggplot() +
  geom_from_path(aes(0.5, 0.5, path = img_cropped)) +
  geom_from_path(aes(0.53, 0.53, path = img2,
                     width = 0.6, height = 0.6)) +
  annotate("richtext", x=0.52, y = 0.06, family = ft1, size = 5, angle = 28, colour = txt, hjust = 0,
           label = glue("<span style='font-family:fa-brands; color:{txt}'> </span> {git_name}"),
           label.color = NA, fill = NA) +
  xlim(0, 1) +
  ylim(0, 1) +
  theme_void() +
  coord_fixed()
plot

# Save plot in high resolution
ggsave("~/GitHub/goterps/img/hex/hex_goterps_logo.png", plot, width = 10, height = 8, units = "in", dpi=300)

