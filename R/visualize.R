#' Visualize
#'
#' @param data dataset with two variables of interest, output of the top_n function
#'
#' @return ggplot object depicting the dataset
#' @export
#'
#' @examples
visualize <- function(data) {

  #ex data has top artists and total instances of their songs charting
  top100$artist <- stri_trans_general(top100$artist, "latin-ascii")

  #first el discrete variable, second el cont variable
  ggplot(data = data, aes = mapping(data[1], data[2]), )

  ggplot2::ggplot()



}
