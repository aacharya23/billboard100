test_that("top n function",
          {expect_error(TopN_BB100(data = BB100, 5),
                        top_n(BB100, n = (5), wt = count))
            }
          )
