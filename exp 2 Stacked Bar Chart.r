# Load the ggplot2 library
library(ggplot2)

# Provided data
data <- data.frame(
  ProductID = c(1, 2, 3, 4, 5),
  ProductName = c("Product A", "Product B", "Product C", "Product D", "Product E"),
  QuantityAvailable = c(250, 175, 300, 200, 220)
)

# Stacked Bar Chart
print(ggplot(data, aes(x = ProductName, y = QuantityAvailable, fill = factor(ProductID))) +
        geom_bar(stat = "identity") +
        labs(title = "Product Inventory - Stacked Bar Chart", x = "Product Name", y = "Quantity Available") +
        theme_minimal())

# Stacked Bar Chart
barplot(data$QuantityAvailable, names.arg = data$ProductName, col = rainbow(length(data$QuantityAvailable)), main = "Product Inventory - Stacked Bar Chart", xlab = "Product Name", ylab = "Quantity Available")
