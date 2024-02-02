# Install and load the ggplot2 library if not already installed
# install.packages("ggplot2")
library(ggplot2)

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

# Histogram
print(ggplot(data_long, aes(x = Daily_Consumption, fill = Food_Type)) +
        geom_histogram(binwidth = 5, position = "identity", alpha = 0.7) +
        labs(title = "Histogram", x = "Daily Consumption", y = "Frequency"))


