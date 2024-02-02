# Provided data
data <- data.frame(
  Date = as.Date(c('2023-01-01', '2023-01-02', '2023-01-03', '2023-01-04', '2023-01-05')),
  Page_Views = c(1500, 1600, 1400, 1650, 1800),
  Click_through_Rate = c(2.3, 2.7, 2.0, 2.4, 2.6)
)

# Stacked Bar Chart
barplot(data$Page_Views, names.arg = format(data$Date, "%Y-%m-%d"), col = rainbow(length(data$Page_Views)),
        main = "Website Analytics - Stacked Bar Chart", xlab = "Date", ylab = "Page Views")
#using gg plot
library(ggplot2)

# Given data
data <- data.frame(
  Date = c('2023-01-01', '2023-01-02', '2023-01-03', '2023-01-04', '2023-01-05'),
  Page_Views = c(1500, 1600, 1400, 1650, 1800),
  Click_through_Rate = c(2.3, 2.7, 2.0, 2.4, 2.6)
)

# Stacked Bar Chart
print(ggplot(data, aes(x = Date, y = Page_Views, fill = Date)) +
        geom_bar(stat = 'identity') +
        labs(title = 'Stacked Bar Chart', x = 'Date', y = 'Page Views'))
