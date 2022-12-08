
test_that("top n function",
          {
            expect_equal(
              billboard100::top_n(id = "artist", n = 1)$artist,
              "Taylor Swift"
            )
          }
)
