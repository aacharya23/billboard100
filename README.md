
<!-- badges: start -->

[![R-CMD-check](https://github.com/aacharya23/billboard_music/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/aacharya23/billboard_music/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

## Overview

singR contains data from the Billboard Hot 100 chart and Spotify song
and album music characteristics. This package features functions that
allow users to perform elementary data analysis and visualization. The
functions in the package allow users to analyze the top N songs of all
time. The package currently contains dependencies on dplyr.

## Target Audience

This package was made for anyone who find value in music stats. This
package can easily be used for data analysis and provide actionable
insights for artists, record labels, or anyone who’s interested in the
Billboard Hot 100.

## Installation

``` r
devtools::install_github("aacharya23/singR")
#> Skipping install of 'singR' from a github remote, the SHA1 (1e5529c5) has not changed since last install.
#>   Use `force = TRUE` to force installation
```

## Datasets Included

-   top100: A dataset that contains the date, song name, artist, current
    rank and past rank of the Billboard Hot 100 songs.
-   spotify_all: a randomized song and album

## Function

Functions inside the package:

-   top_n: find top artists and songs over a period of time on the
    Billboard Hot 100 chart
-   visualize: visualize the output of top_n as a bar chart
-   explicit_model: create linear regression model of “explicit”
    variable in the Spotify dataset

Load singR R package.

``` r
library(singR)
```

Run the function to generate a table with N number of songs

``` r
top_n(id = "song", n = 5)
#> # A tibble: 5 × 2
#>   song    count
#>   <chr>   <int>
#> 1 Stay      224
#> 2 Angel     205
#> 3 Hold On   202
#> 4 You       195
#> 5 Heaven    194
```

## Package Proposal

## 
