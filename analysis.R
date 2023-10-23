
d <- read.csv("epiSEIHCRD_combAge.csv")
d$t <- as.Date(d$t, origin = "2020-03-01")
d$t <- as.POSIXct(d$t)

library("ggplot2")
library("scales")

ggplot(data = d) +
  geom_line(mapping = aes(x = t, y = H), col = "red") +
  geom_line(mapping = aes(x = t, y = C), col = "blue") +
  geom_line(mapping = aes(x = t, y = D), col = "green") +
  scale_x_datetime(labels = date_format("%b %Y")) +
  labs(x = "Date", y = "Number of hospital beds")

