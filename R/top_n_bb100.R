#' Find top x songs of all time
#'
#'
#'
#' @param data the billboard dataset of all top songs from all time
#' @param x the number that the user inputs to find the top number of songs
#'
#' @return 'top_n_bb100' returns a dataframe with x number of rows of top songs over time
#'
#' @examples
#' library(billboard100)
#'
#' # Find the top 10 songs of all time
#' top_n_bb100(data=top100, 10)
#'
#' # Find the top 20 songs of all time
#' top_n_bb100(data = top100, 20)
#'
#' @importFrom dplyr top_n arrange summarize group_by select n
#' @importFrom stringi stri_trans_general
#' @export

top_n_bb100 <- function(data = top100, x) {

  top100$artist <- stri_trans_general(top100$artist, "latin-ascii")

  top100 <- top100 %>%
    dplyr::select(song,artist) %>%
    dplyr::group_by(artist) %>%
    dplyr::summarize(count=n()) %>%
    dplyr::arrange(desc(count))

  return(dplyr::top_n(top100, n = (x), wt = count))

}




