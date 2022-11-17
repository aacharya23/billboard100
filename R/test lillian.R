library(tidyverse)

hot100page <- "https://www.billboard.com/charts/hot-100"

# Capture the HTML and XML level website information
hot100 <- xml2::read_html(hot100page)

rank <- hot100 %>%
  rvest::html_nodes('body') #%>%
  #xml2::xml_find_all("//span[contains(@class, 'chart-element__rank__number')]") %>%
  #rvest::html_text()

rank <- hot100 %>%
  html_nodes(".c-label.a-font-primary-bold-l.u-font-size-32") %>%
  html_text()

artist <- hot100 %>%
  rvest::html_nodes('body') %>%
  xml2::xml_find_all("//span[contains(@class, 'chart-element__information__artist')]") %>%
  rvest::html_text()

title <- hot100 %>%
  rvest::html_nodes('body') %>%
  xml2::xml_find_all("//span[contains(@class, 'chart-element__information__song')]") %>%
  rvest::html_text()

chart_top_100 <- data.frame(rank, artist, title)

#.c-label.a-font-primary-bold-l.u-font-size-32@tablet.u-letter-spacing-0080@tablet
