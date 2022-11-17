BB100<-charts %>%
  select( -rank,-date,-`last-week`,-`weeks-on-board`,-`peak-rank`) %>%
  group_by(artist) %>%
  summarize(count=n()) %>%
  arrange(desc(count))

TopN_BB100 <- function(data = Top_BB100, x) {
  return(top_n(data, n = (x), wt = count))
}

TopN_BB100(data=BB100, 11)
