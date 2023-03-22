#' reto theme base function
#'
#' @param base_size font size
#' @param font font
#' @param background_color the background color of the plot
#' @param canvas_primary_color applies to legend and plot area
#' @param canvas_secondary_color applies to strip (facet-title)
#' @param font_primary_color applies to most text
#' @param font_secondary_color applies to subtitle etc.
#'
#' @return a ggplot theme
#'
#' @examples
theme_reto_ <- function(base_size,
                        font,
                        background_color,
                        canvas_primary_color,
                        canvas_secondary_color,
                        font_primary_color,
                        font_secondary_color)  {
  margin_lr <- 0.01

  theme_grey() %+replace%
    theme(

      text = element_text(
        family = font,
        size   = base_size,
        color  = font_primary_color
      ),

      plot.margin = unit(c(0.02, margin_lr, 0.01, margin_lr), "npc"),

      plot.title = element_text(
        size   = 28,
        face   = 'bold',
        hjust  = 0,
        margin = margin(t = 0, b = 10, l = 0, r = 0)
      ),

      strip.text =  element_text(
        size = 16,
        face = "bold",
        margin = margin(b = 5, t = 5)
      ),

      plot.subtitle = element_text(
        size   = 14,
        hjust  = 0,
        margin = margin(t = 5, b = 9, l = 0, r = 0),
        color  = font_secondary_color
      ),

      plot.caption = element_text(
        size   = 14,
        hjust  = 1,
        color  = font_secondary_color
      ),

      axis.title.x = element_text(
        margin = margin(t = 10, b = 5, l = 0, r = 0)
      ),

      axis.title.y = element_text(
        angle = 90,
        margin = margin(t = 0, b = 0, l = 0, r = 10)
      ),

      axis.text = element_text(
        size = 12
      ),

      axis.ticks = element_blank(),

      panel.spacing.x = unit(1, "lines"),
      panel.spacing.y = unit(9/16, "lines"),
      panel.grid.major = element_line(
        colour = canvas_secondary_color
      ),
      panel.grid.minor = element_line(
        colour = canvas_primary_color
      ),


      legend.background = element_rect(
        fill   = canvas_primary_color,
        colour = canvas_primary_color
      ),

      panel.background = element_rect(
        fill   = canvas_primary_color,
        colour = canvas_primary_color
      ),

      strip.background = element_rect(
        fill   = canvas_secondary_color,
        colour = canvas_secondary_color
      ),

      plot.background  = element_rect(fill = background_color),
      # I usually use this anyway, saves a line of code
      legend.position = "bottom"
    )
}

#' The reto theme
#'
#' @param variant the theme variant (light, dark)
#' @param base_size the font size
#' @param font the font
#'
#' @return a ggplot theme
#' @export
#'
theme_reto <- function(variant = "light",
                       base_size = 18,
                       font = "CMU Sans Serif") {
  switch (variant,
    light = theme_reto_(
      base_size              = base_size,
      font                   = font,
      background_color       = "#FFFFFF",
      canvas_primary_color   = "#FAFAFA",
      canvas_secondary_color = "#BDBDBD",
      font_primary_color     = "#212121",
      font_secondary_color   = "#757575"
    ),
    # Dark theme needs work on grid color
    dark = theme_reto_(
      base_size              = base_size,
      font                   = font,
      background_color       = "#000000",
      canvas_primary_color   = "#090909",
      canvas_secondary_color = "#212121",
      font_primary_color     = "#FFFFFF",
      font_secondary_color   = "#FAFAFA"
    ),
    stop(paste(
      "variant", variant, "not available. See ?theme_reto for variants."
    ))
  )
}
