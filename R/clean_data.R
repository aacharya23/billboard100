#' Clean data that contain punctuation
#'
#'
#'
#' @param data the billboard dataset of all top songs from all time
#'
#' @return 'clean_data' returns a dataframe with the removed punctuation
#'
#' @examples
#' library(billboard100)
#'
#' # Clean any music dataset
#' clean_data(top100)
#'
#'
#' @importFrom stringi stri_trans_general
#' @export

clean_data <- function(data = top100) {
  top100$artist <- stri_trans_general(top100$artist, "latin-ascii")
  top100$song <- stri_trans_general(top100$song, "latin-ascii")

  return(top100)
}

