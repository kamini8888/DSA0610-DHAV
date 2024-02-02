# Provided data
data <- data.frame(
  Date = as.Date(c('2023-01-01', '2023-01-02', '2023-01-03', '2023-01-04', '2023-01-05')),
  Page_Views = c(1500, 1600, 1400, 1650, 1800),
  Click_through_Rate = c(2.3, 2.7, 2.0, 2.4, 2.6)
)
# Line Plot
plot(data$Date, data$Page_Views, type = "o", col = "green",
     main = "Website Analytics - Line Plot", xlab = "Date", ylab = "Page Views")

#using gg plot
library(ggplot2)

# Given data
data <- data.frame(
  Date = c('2023-01-01', '2023-01-02', '2023-01-03', '2023-01-04', '2023-01-05'),
  Page_Views = c(1500, 1600, 1400, 1650, 1800),
  Click_through_Rate = c(2.3, 2.7, 2.0, 2.4, 2.6)
)

# Line Plot with adjusted group aesthetic
print(ggplot(data, aes(x = Date, y = Page_Views, group = 1)) +
        geom_line() +
        labs(title = 'Line Plot', x = 'Date', y = 'Page Views'))
