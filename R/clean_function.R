#' Find top x songs of all time
#'
#'
#'
#' @param data the billboard dataset of all top songs from all time used to calculate the top x number of songs
#' @param x the number that the user inputs to find the top number of songs
#'
#' @return 'TopN_BB100' returns a dataframe with x number of rows of top songs over time based on the user input
#'
#' @examples
#' library(billboard_100)
#'
#' # Find the top 10 songs of all time
#' TopN_BB100(data=BB100, 10)
#'
#' # Find the top 20 songs of all time
#' TopN_BB100(data= BB100, 20)
#'
#' @importFrom magrittr "%>%"
#' @import dplyr
#' @export



TopN_BB100 <- function(data = Top_BB100, x) {
  return(top_n(data, n = (x), wt = count))
}

BB100<-charts %>%
  select(-c(rank,date,`last-week`,`weeks-on-board`,`peak-rank`)) %>%
  group_by(artist) %>%
  summarize(count=n()) %>%
  dplyr::arrange(desc(count))

