
d <- read.csv("epiSEIHCRD_combAge.csv")
d$t <- as.Date(d$t, origin = "2020-03-01")

library("ggplot2")

ggplot(data = d) +
  geom_line(mapping = aes(x = t, y = H))

