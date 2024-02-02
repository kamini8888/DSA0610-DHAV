# Load the ggplot2 library
library(ggplot2)

# Provided data
data <- data.frame(
  ProductID = c(1, 2, 3, 4, 5),
  ProductName = c("Product A", "Product B", "Product C", "Product D", "Product E"),
  QuantityAvailable = c(250, 175, 300, 200, 220)
)

# Scatter Plot
print(ggplot(data, aes(x = ProductID, y = QuantityAvailable)) +
        geom_point(color = "red", size = 3) +
        labs(title = "Product Inventory - Scatter Plot", x = "Product ID", y = "Quantity Available") +
        theme_minimal())
# Scatter Plot
plot(data$ProductID, data$QuantityAvailable, col = "red", pch = 16, main = "Product Inventory - Scatter Plot", xlab = "Product ID", ylab = "Quantity Available")
