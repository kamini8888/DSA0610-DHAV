# Create a data frame with the provided data
data <- data.frame(
  Age = c("0-10", "11-30", "31-50", "51-80"),
  Dairy = c(50, 35, 25, 40),
  Staple_Food = c(30, 45, 55, 40),
  High_Calorie_Food = c(10, 15, 13, 4),
  Supplements = c(10, 5, 7, 16)
)

# Reshape the data for plotting
data_long <- tidyr::gather(data, key = "Food_Type", value = "Daily_Consumption", -Age)

# Define colors based on ggplot2 color palette
colors <- c("red", "blue", "green", "purple", "orange")

# Create Mosaic Plot with specified colors
mosaicplot(table(data_long$Age, data_long$Food_Type), color = colors, main = "Mosaic Plot", xlab = "Age Group", ylab = "Food Type")
