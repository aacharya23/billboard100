
test_that("top n function",
          {
            expect_equal(
              billboard100::top_n_bb100(x = 1)$artist,
              "Taylor Swift"
            )
          }
)
