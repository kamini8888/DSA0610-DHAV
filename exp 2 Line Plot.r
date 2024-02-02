# Load the ggplot2 library
library(ggplot2)

# Provided data
data <- data.frame(
  ProductID = c(1, 2, 3, 4, 5),
  ProductName = c("Product A", "Product B", "Product C", "Product D", "Product E"),
  QuantityAvailable = c(250, 175, 300, 200, 220)
)

# Line Plot
print(ggplot(data, aes(x = ProductID, y = QuantityAvailable)) +
        geom_line(color = "green", size = 1) +
        geom_point(color = "green", size = 3) +
        labs(title = "Product Inventory - Line Plot", x = "Product ID", y = "Quantity Available") +
        theme_minimal())
# Line Plot
plot(data$ProductID, data$QuantityAvailable, type = "o", col = "green", main = "Product Inventory - Line Plot", xlab = "Product ID", ylab = "Quantity Available")
