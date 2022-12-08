library(tidyverse)

expected_df <- tibble(
  song = c("Stay", "Angel"),
  count = c(224, 205)
)

test_that("top n function",
          {
            expect_equal(
              billboard100::top_n(id = "song", n = 2), expected_df
            )
          }


)
