<<<<<<< HEAD
globalVariables(c("spotify_all"))
=======
utils::globalvariables(c("artist", "count", "desc", "song"))
>>>>>>> 13e1b7c040fb741654e6d1dcff86a4672189dc26

#' Build a regression of the music data
#'
#'
#' @param data the spotify dataset of all songs
#' @param i1 user decided variable to use as a predictor
#'
#' @return 'explicit_model' returns a linear regression model that predicts
#'
#' @examples
#' library(billboard100)
#'
#' # Build a regression model of spotify data
#' explicit_model(data)
#'
#' @import utils
#' @importFrom stats "lm"
#' @export


explicit_model <- function(data = spotify_all, i1) {
  options <- c("danceability", "year", "available_markets", "duration_ms")
    if (i1 == "danceability") {
      model <- lm(explicit ~ danceability, data=spotify_all)
      model_sum <- summary(model)
      return(model_sum)
    }
    else if(i1 == "year"){
      model <- lm(explicit ~ year, data=spotify_all)
      model_sum <- summary(model)
      return(model_sum)
    }
  else if(i1 == "available_markets"){
    model <- lm(explicit ~ available_markets, data=spotify_all)
    model_sum <- summary(model)
    return(model_sum)
  }
  else if(i1 == "duration_ms"){
    model <- lm(explicit ~ duration_ms, data=spotify_all)
    model_sum <- summary(model)
    return(model_sum)
  }
    else {
      print("Error: input another variable")
    }

}



