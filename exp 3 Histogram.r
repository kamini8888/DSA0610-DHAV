# Provided data
data <- data.frame(
  Date = as.Date(c('2023-01-01', '2023-01-02', '2023-01-03', '2023-01-04', '2023-01-05')),
  Page_Views = c(1500, 1600, 1400, 1650, 1800),
  Click_through_Rate = c(2.3, 2.7, 2.0, 2.4, 2.6)
)
# Histogram
hist(data$Page_Views, col = "purple", main = "Website Analytics - Histogram", xlab = "Page Views", ylab = "Frequency")


#using gg plot
library(ggplot2)

# Given data
data <- data.frame(
  Date = c('2023-01-01', '2023-01-02', '2023-01-03', '2023-01-04', '2023-01-05'),
  Page_Views = c(1500, 1600, 1400, 1650, 1800),
  Click_through_Rate = c(2.3, 2.7, 2.0, 2.4, 2.6)
)

# Histogram
print(ggplot(data, aes(x = Page_Views)) +
        geom_histogram(binwidth = 100, fill = 'blue', color = 'black', alpha = 0.7) +
        labs(title = 'Histogram', x = 'Page Views', y = 'Frequency'))

