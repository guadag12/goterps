<!-- README.md is generated from README.Rmd. Please edit that file -->
  
  # goterps 🐢❤️📦  <img src="img/hex/hex_goterps_logo.png" width="160px" align="right" />

![version](https://img.shields.io/badge/version-0.0.0.1-green) [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)  ![](https://visitor-badge.glitch.me/badge?page_id=guadag12.goterps&style=flat-square&color=0088cc) 

This R package is designed for students and teachers of the University of Maryland to download templates to create presentations with the university logo, as well as articles and use the university theme in ggplot2.

<!-- Use twitter from R. Get started by reading `vignette("rtweet")`. -->
  
## Installation 👇
  
This is a package in a developed state. So, you can download using this code:
  
 ``` r 
#install.packages("devtools")
library(devtools)
install_github("guadag12/goterps")
library(goterps)
```

### Download the Quarto Presentation 👩‍💼 🤳 👇:
  
This function runs the package template and saves it to the specified path on your computer:

``` r
goterps_presentation(path = "~/Documents/test/")
```

### Make thematic plots in ggplot with goterps template!

``` r
ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) +
  geom_point(size = 4) +
  goterps_theme() +
  scale_fill_manual(values = goterps_palette_d()) +
  labs(title = "Scatter Plot of Iris Data Colored by Species",
       x = "Sepal Length",
       y = "Sepal Width")
```
![](https://github.com/guadag12/goterps/blob/main/img/scatter_plain.png)


### Add UMD colors for discrete variables!

``` r
ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point(size = 4) +
  scale_color_manual(values = umd_colors(3)) +  # Use the UMD colors in the plot
  goterps_theme() +
  scale_fill_manual(values = goterps_palette_d()) +
  labs(title = "Scatter Plot of Iris Data Colored by Species",
       x = "Sepal Length",
       y = "Sepal Width",
       color = "Species")
```

![](https://github.com/guadag12/goterps/blob/main/img/scatter1.png)

### Add UMD colors for continuous  variables!


``` r
ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point(size = 4) +
  scale_color_manual(values = umd_colors(3)) +  # Use the UMD colors in the plot
  goterps_theme() +
  scale_fill_manual(values = goterps_palette_d()) +
  labs(title = "Scatter Plot of Iris Data Colored by Species",
       x = "Sepal Length",
       y = "Sepal Width",
       color = "Species")
```

![](https://github.com/guadag12/goterps/blob/main/img/scales_continuos.png)


## Contact ❤️

If you encounter a bug please make an issue! Feel free to write me with doubts to my gmail: guadag12@umd.edu or send me a DM on Twitter: [guadag12](https://twitter.com/guadag12) 
