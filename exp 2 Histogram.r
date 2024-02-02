# Load the ggplot2 library
library(ggplot2)

# Provided data
data <- data.frame(
  ProductID = c(1, 2, 3, 4, 5),
  ProductName = c("Product A", "Product B", "Product C", "Product D", "Product E"),
  QuantityAvailable = c(250, 175, 300, 200, 220)
)

# Histogram
print(ggplot(data, aes(x = QuantityAvailable)) +
        geom_histogram(binwidth = 20, fill = "purple", color = "black") +
        labs(title = "Product Inventory - Histogram", x = "Quantity Available", y = "Frequency") +
        theme_minimal())

# Histogram
hist(data$QuantityAvailable, col = "purple", main = "Product Inventory - Histogram", xlab = "Quantity Available", ylab = "Frequency")
