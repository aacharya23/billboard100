globalVariables(c(""))

#' Visualize
#'
#' @param data dataset with two variables of interest, output of the top_n function
#'
#' @return ggplot object depicting the dataset
#' @export
#'
#' @import ggplot2
#' @examples example
visualize <- function(data) {

  #get names of columns
  colx = colnames(data[1])
  coly = colnames(data[2])

  #first el discrete variable, second el cont variable
  plot <- ggplot(data = data, aes = mapping(x = colx, y = coly)) +
    geom_bar(stat = "identity")


  return(plot)
}

ggplot(data = test, mapping = aes(x = artist, y = count)) +
  geom_col()
