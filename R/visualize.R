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

