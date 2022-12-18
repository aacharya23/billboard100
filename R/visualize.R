globalVariables(c("x", "y"))

#' Visualize
#'
#' @param data dataset with two variables of interest, output of the top_n function
#'
#' @return ggplot geom_col object
#' @export
#'
#' @import ggplot2
#' @examples example
#' library(singR)
#'
#' #Visualize top 4 songs between 1990-01-01 and 1995-01-01
#' ex <- top_n(id = "song", n = 4, date_start = "1990-01-01", date_end = "1995-01-01")
#' visualize(ex)
#'
#'
visualize <- function(data) {

  #get column names
  colx = colnames(data[1]) #factor variable
  coly = colnames(data[2]) #continuous variable

  #change column names
  colnames(data) <- c("x", "y")

  plot <- ggplot(data, mapping = aes(x = x, y = y)) +
    geom_col() +
    coord_flip() +
    xlab(colx) +
    ylab(coly)

  return(plot)
}

