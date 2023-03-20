#' Save ggplot in px
#'
#' @param filename File name to create on disk.
#' @param plot Plot to save, defaults to last plot displayed.
#' @param height Plot height in pixels
#' @param width Plot width in pixels
#' @param aspect wide (16:9), tall (9:16), square (1:1)
#' @param dpi Plot resolution.
#' @param type type
#'
#' @importFrom ggplot2 ggsave
#' @return
#' @export
#'
ggsave_px <- function(filename,
                      plot,
                      height,
                      width,
                      aspect,
                      dpi,
                      type) {

  stopifnot(aspect %in% c("wide", "tall", "square"))

  sides <- switch(aspect,
    wide   = list(width = width,  height = height),
    tall   = list(width = height, height = width),
    square = list(width = height, height = height)
  )

  ggsave(
    filename = filename,
    plot     = plot,
    width    = sides$width,
    height   = sides$height,
    units    = "px",
    dpi      = dpi,
    type     = type
  )
}

#' @describeIn ggsave_px Save in FHD (1080p)
ggsave_1080p <- function(filename,
                         plot,
                         aspect = "wide",
                         dpi = 300,
                         type = "cairo") {
  ggsave_px(
    filename = filename,
    plot     = plot,
    aspect   = aspect,
    width    = 1920,
    height   = 1080,
    dpi      = dpi,
    type     = type
  )
}

#' @describeIn ggsave_px Save in QHD (1440p)
ggsave_1440p <- function(filename,
  plot,
  aspect = "wide",
  dpi = 300,
  type = "cairo") {
  ggsave_px(
    filename = filename,
    plot     = plot,
    aspect   = aspect,
    width    = 2560,
    height   = 1440,
    dpi      = dpi,
    type     = type
  )
}

#' @describeIn ggsave_px Save in 4k (2160p)
ggsave_2160p <- function(filename,
                         plot,
                         aspect = "wide",
                         dpi = 300,
                         type = "cairo") {
  ggsave_px(
    filename = filename,
    plot     = plot,
    aspect   = aspect,
    width    = 3840,
    height   = 2160,
    dpi      = dpi,
    type     = type
  )
}
