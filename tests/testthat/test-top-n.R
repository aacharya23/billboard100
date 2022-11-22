top100 <- top100 %>%
  dplyr::select(song,artist) %>%
  dplyr::group_by(artist) %>%
  dplyr::summarize(count=n()) %>%
  dplyr::arrange(desc(count))

test_that("top n function",
          {
            expect_equal(
              billboard100::top_n_bb100(x = 5),
              top_n(top100, n = 5, wt = count)
            )
          }
)
