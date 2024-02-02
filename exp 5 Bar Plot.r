# Provided data
traffic_data <- data.frame(
  Date = as.Date(c('2023-01-01', '2023-01-02', '2023-01-03', '2023-01-04', '2023-01-05')),
  Page_Views = c(1500, 1600, 1400, 1650, 1800),
  Click_through_Rate = c(2.3, 2.7, 2.0, 2.4, 2.6)
)

# Convert Click-through Rate to numeric
traffic_data$Click_through_Rate <- as.numeric(sub("%", "", traffic_data$Click_through_Rate))

# Bar Plot
barplot(traffic_data$Page_Views, names.arg = format(traffic_data$Date, "%Y-%m-%d"),
        col = rainbow(length(traffic_data$Page_Views)),
        main = "Bar Plot - Website Traffic Analysis", xlab = "Date", ylab = "Page Views")
