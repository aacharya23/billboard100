globalVariables(c("song", "artist", "mapping"))

#' Find top x songs of all time
#'
#'
#'
#' @param data music charts dataset
#' @param id variable to analyze
#' @param n number of top listings
#' @param date_start start of time period
#' @param date_end end of time period
#' @return a dataframe with x number of rows of top songs over time
#'
#' @examples
#' library(singR)
#'
#' # Find the top 10 songs of all time
#' top_n(id = "song", n = 10)
#'
#' # Find the top 5 artists between "2000-01-01" and "2001-01-01"
#' top_n(id = "artist", n = 5, date_start = "2000-01-01", date_end = "2001-01-01")
#'
#' @import dplyr
#' @importFrom stringi stri_trans_general
#' @export

# add period of time argument

  top_n <- function(data = top100, id, n,
                    date_start = "1958-08-04",
                    date_end = "2021-11-06") {

    top100$artist <- stri_trans_general(top100$artist, "latin-ascii")
    top100$song <- stri_trans_general(top100$song, "latin-ascii")

    #if id variable doesn't exist
    if (!(id %in% names(data))) {
      stop(paste0(id, " not a variable in the data. \n"), call. = FALSE)
    }

    #if id isn't a column
    else if (!is.character(id)) {
      stop(paste0("Invalid input: id should be a character vector. \n"), call. = FALSE)
    }

    date_start <- as.Date(date_start, format = "%Y-%m-%d")
    date_end <- as.Date(date_end, format = "%Y-%m-%d")
    data <- data[data$date >= date_start & data$date <= date_end,]

    #if date input invalid
    if (is.null(date_start) || is.null(date_end)) {
      stop(paste0("Invalid input: date should be in the format 'YYYY-MM-DD'"))
    }

    #edge case 0
    if (n == 0) {
      return(c())
    }

    #finding top artist based on number of times their song has charted
    else if (id == "artist") {
      data <- data %>%
      group_by(artist) %>%
      summarize(count=n()) %>%
      arrange(desc(count))
    }

    #finding top songs based on number of times it has charted
    else if (id == "song") {
      data <- data %>%
      group_by(song) %>%
      summarize(count=n()) %>%
      arrange(desc(count))
    }


    return(dplyr::top_n(data, n = (n), wt = count))

  }




