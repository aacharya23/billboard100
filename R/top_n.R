globalVariables(c("song", "artist", "mapping"))

#' Find top x songs of all time
#'
#'
#'
#' @param data music charts dataset
#' @param id variable to analyze
#' @param n number of top listings
#'
#' @return a dataframe with x number of rows of top songs over time
#'
#' @examples
#' library(billboard100)
#'
#' # Find the top 10 songs of all time
#' top_n(data=top100, 10)
#'
#' # Find the top 20 songs of all time
#' top_n(data = top100, 20)
#'
#' @import dplyr
#' @importFrom stringi stri_trans_general
#' @export

# add period of time argument

  top_n <- function(data = top100, id, n) {

    top100$artist <- stri_trans_general(top100$artist, "latin-ascii")
    top100$song <- stri_trans_general(top100$song, "latin-ascii")

    #finding top artist based on number of times their song has charted
    if (id == "artist") {
      top100 <- top100 %>%
      group_by(artist) %>%
      summarize(count=n()) %>%
      arrange(desc(count))
    }

    #finding top songs based on number of times it has charted
    else if (id == "song") {
      top100 <- top100 %>%
      group_by(song) %>%
      summarize(count=n()) %>%
      arrange(desc(count))
    }

    else {
      #throw error?
    }

    return(dplyr::top_n(top100, n = (n), wt = count))

  }




