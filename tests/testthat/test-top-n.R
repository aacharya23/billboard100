
test_that("top n function",
          {
            expect_equal(
              billboard100::top_n_bb100(x = 5),
              top_n(top100, n = 5, wt = song)
            )
          }
)
