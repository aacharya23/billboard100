library(ggplot2)

ex_data <- billboard100::top_n(id = "artist", n = 4, date_start = "2000-01-01") %>%
  mutate(x = artist) %>%
  mutate(y = count)

expected_ggplot <- ex_data %>%
  ggplot(mapping = aes(x = artist, y = count)) +
  geom_col() +
  coord_flip() +
  xlab("artist") +
  ylab("count")

test_that("visualize function",
          {
            expect_equal(
              billboard100::visualize(ex_data), expected_ggplot
            )
          }


)


