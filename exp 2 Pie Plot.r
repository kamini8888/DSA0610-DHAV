# Load the ggplot2 library
library(ggplot2)

# Provided data
data <- data.frame(
  ProductID = c(1, 2, 3, 4, 5),
  ProductName = c("Product A", "Product B", "Product C", "Product D", "Product E"),
  QuantityAvailable = c(250, 175, 300, 200, 220)
)

# Pie Chart
print(ggplot(data, aes(x = "", y = QuantityAvailable, fill = factor(ProductID))) +
        geom_bar(stat = "identity", width = 1) +
        coord_polar("y") +
        labs(title = "Product Inventory - Pie Chart") +
        theme_minimal())
# Pie Chart
pie(data$QuantityAvailable, labels = data$ProductName, main = "Product Inventory - Pie Chart", col = rainbow(length(data$QuantityAvailable)))
