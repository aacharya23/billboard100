
<!-- README.md is generated from README.Rmd. Please edit that file -->

## Overview

The Billboard R package contains a dataset from the Billboard Hot 100
and a function to visualize the top 5 artists of all time. This package
has dependencies on tidyverse and ggplot2 in order to

\##Purpose Billboard_100 is an R package that contains datasets of the
Billboard Chart Hot 100 acquired from(link), featuring the Hot 100
charts for every week since its first premiere on Monday, Aug. 4, 1958.
Finding data on music, artist, and chart numbers can be very daunting
and a lot of time spent on Google. We have made Billboard_100 to keep
everything all in one place.

\##Target Audience This package was made for anyone who find value in
music stats. This package can easily be used for data analysis and
provide actionable insights for artists, record labels, or anyone whose
interested in the Billboard Hot 100.

## Installation 

```{r}
devtools::install_github("aacharya23/billboard100")
```

## Datasets Included 
* top100: A dataset that contains the date, song name, artist, current rank and past rank of the Billboard Hot 100 songs. 

## Function

Functions inside the package:

* top_n_bb100: return the top ’n’ artist whose made it on the Billboard Hot 100. 


Load billboard100 R package. 

```{r}
#library(billboard100)
```

Run the function to generate a table with N number of songs 

```{r}
#top_n_bb100(data = bb100, 10)
```

Functions inside the package: \* TopN_BB100: return the top ’n’ artist
whose made it on the Billboard Hot 100.


## Package Proposal

This package will scrape data from the billboard hot 100 website and
change depending on the week that the user utilizes the package. Unlike
this current phase, the phase III package will not have a dataset that
it’s working from. Users can perform analyzes of the scraped data
similarly to the current package version.

## 
