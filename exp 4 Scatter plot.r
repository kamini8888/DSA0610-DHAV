# Provided data
sales_data <- data.frame(
  Month = c('January', 'February', 'March', 'April', 'May'),
  Sales = c(15000, 18000, 22000, 20000, 23000)
)

# Convert Month to factor
sales_data$Month <- factor(sales_data$Month, levels = unique(sales_data$Month))

# Scatter Plot
plot(sales_data$Month, sales_data$Sales, col = "blue", pch = 16,
     main = "Scatter Plot - Time Series Analysis", xlab = "Month", ylab = "Sales (in $)",
     ylim = c(0, max(sales_data$Sales) + 5000))



# Add grid for better readability
grid()

# Add legend
legend("topright", legend = c("Sales"), col = c("black"), lty = 1, lwd = 2, bg = "white")
