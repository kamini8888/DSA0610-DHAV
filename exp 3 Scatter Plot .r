# Provided data
data <- data.frame(
  Date = as.Date(c('2023-01-01', '2023-01-02', '2023-01-03', '2023-01-04', '2023-01-05')),
  Page_Views = c(1500, 1600, 1400, 1650, 1800),
  Click_through_Rate = c(2.3, 2.7, 2.0, 2.4, 2.6)
)
# Scatter Plot
plot(data$Page_Views, data$Click_through_Rate, col = "blue", pch = 16,
     main = "Website Analytics - Scatter Plot", xlab = "Page Views", ylab = "Click-through Rate")

#using gg plot
library(ggplot2)

# Given data
data <- data.frame(
  Date = c('2023-01-01', '2023-01-02', '2023-01-03', '2023-01-04', '2023-01-05'),
  Page_Views = c(1500, 1600, 1400, 1650, 1800),
  Click_through_Rate = c(2.3, 2.7, 2.0, 2.4, 2.6)
)

# Scatter Plot
print(ggplot(data, aes(x = Page_Views, y = Click_through_Rate)) +
        geom_point() +
        labs(title = 'Scatter Plot', x = 'Page Views', y = 'Click-through Rate'))
