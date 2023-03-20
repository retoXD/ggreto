#' Custom Theme Reto
#'
#' @param base_size font size
#' @param font font
#'
#' @return plot obj
#' @export
#'
theme_reto <- function(base_size = 18, font = "CMU Sans Serif")  {

# This needs cleanup, also there needs to be a dark and a light theme
  margin_lr <- 0.01

  theme_grey() %+replace%
    theme(

      text = element_text(
        family = font,
        size   = base_size,
        color  = "#212121"
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
        color  = "#757575"
      ),

      plot.caption = element_text(
        size   = 14,
        hjust  = 1,
        color  = "#757575"
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

      legend.background = element_rect(fill = "#FAFAFA", colour = "#FAFAFA"),

      panel.background = element_rect(fill = "#FAFAFA", colour = "#FAFAFA"),
      strip.background = element_rect(fill = "#BDBDBD", colour = "#BDBDBD"),
      plot.background  = element_rect(fill = "#FFFFFF")
    )
}
