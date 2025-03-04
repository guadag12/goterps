#install.packages(c("openai", "cropcircles"))
library(openai)
library(cropcircles)
library(magick)
library(tidyverse)
library(ggpath)
library(ggtext)
library(glue)
library(showtext)
library(magick)
library(base64enc)
#Sys.setenv(OPENAI_API_KEY = 'org-ghWxTt1cRFoWfITgpExzxQ3C')
image_read("~/GitHub/goterps/img/hex/caparazon.jpg")
img_cropped <- hex_crop(
  images = "~/GitHub/goterps/img/hex/caparazon.jpg",
  border_colour = "#951022",
  border_size = 12
)
# choose a font from Google Fonts
font_add_google("Bangers", "bangers")
font_add_google("Roboto", "rob")
showtext_auto()
ft <- "bangers"
ft1 <- "rob"
txt <- "#454545"
# fontawesome fonts (optional - this adds the git logo - download from https://fontawesome.com/)
font_add("fa-brands", regular = "fonts/fontawesome-free-6.2.0-web/webfonts/fa-brands-400.ttf")
# package name and githu repo
pkg_name <- "dumpster\nFire"
git_name <- "guadag12/goterps"



# Leer la imagen
img2 <- image_read("~/GitHub/goterps/img/hex/m2.png")

img2 <- crop_square(img2)

#img2 <- crop_square(img2)
class(img_cropped)

ggplot() +

  geom_from_path(aes(0.5, 0.5, path = img_cropped)) +
  geom_from_path(aes(0.53, 0.53, path = img2,
                     width = 0.6, height = 0.6)) +

  # package name
  # annotate("text", x = 0.5, y = 0.25, label = "goterps", family = ft, size = 34,
  #          fontface = "bold", colour = txt, angle = 22, hjust = 0, lineheight = 0.25) +
  # add github - remove if not wanted
  annotate("richtext", x=0.52, y = 0.06, family = ft1, size = 5, angle = 28, colour = txt, hjust = 0,
           label = glue("<span style='font-family:fa-brands; color:{txt}'> </span> {git_name}"),
           label.color = NA, fill = NA) +
  xlim(0, 1) +
  ylim(0, 1) +
  theme_void() +
  coord_fixed()

