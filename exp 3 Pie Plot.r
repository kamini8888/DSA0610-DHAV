# Provided data
data <- data.frame(
  Date = as.Date(c('2023-01-01', '2023-01-02', '2023-01-03', '2023-01-04', '2023-01-05')),
  Page_Views = c(1500, 1600, 1400, 1650, 1800),
  Click_through_Rate = c(2.3, 2.7, 2.0, 2.4, 2.6)
)

# Pie Chart
pie(data$Page_Views, labels = format(data$Date, "%Y-%m-%d"),
    main = "Website Analytics - Pie Chart", col = rainbow(length(data$Page_Views)))

#using gg plot
library(ggplot2)

# Given data
data <- data.frame(
  Date = c('2023-01-01', '2023-01-02', '2023-01-03', '2023-01-04', '2023-01-05'),
  Page_Views = c(1500, 1600, 1400, 1650, 1800),
  Click_through_Rate = c(2.3, 2.7, 2.0, 2.4, 2.6)
)

# Pie Plot
print(ggplot(data, aes(x = "", y = Page_Views, fill = Date)) +
        geom_bar(stat = 'identity', width = 1) +
        coord_polar(theta = "y") +
        labs(title = 'Pie Plot', x = NULL, y = NULL))

