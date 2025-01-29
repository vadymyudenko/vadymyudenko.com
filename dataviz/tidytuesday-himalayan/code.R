# Load packages -----------------------------------------------------------

library(tidyverse)
library(ggExtra)
library(ggtext)
library(ggthemes)
library(gganimate)
library(tidyr)
library(showtext)
library(grid)
library(transformr)
library(lubridate)
library(plotly)
library(glue)
library(knitr)
library(fontawesome)
library(patchwork)

# Load data ---------------------------------------------------------------

exped_tidy <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/main/data/2025/2025-01-21/exped_tidy.csv')
peaks_tidy <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/main/data/2025/2025-01-21/peaks_tidy.csv')

# Load fonts --------------------------------------------------------------

# font_add_google("Merriweather", "Merryweather")
# showtext::showtext_auto()
# 
# # Define colours and fonts-------------------------------------------------
# 
# blog_theme <-
#   theme_minimal(18, base_family = "Merryweather") +
#   theme(
#     plot.background = element_rect(fill = "white", color = NA),
#     plot.title.position = "plot",
#     plot.title = element_text(size = 24, margin = margin(b = 1, unit = "line")),
#     legend.position = c(0, 1),
#     legend.direction = "horizontal",
#     legend.justification = c(0, 1),
#     legend.title.align = 1
#   )
# 
# theme_set(blog_theme)


# Data wrangling ----------------------------------------------------------

exped_tidyplot <- exped_tidy %>% 
  select(SMTDAYS, TOTDAYS)


unique(exped_tidy$TERMREASON)
