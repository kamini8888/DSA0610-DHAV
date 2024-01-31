library(ggplot2)

# Creating scatterplot with fitted values.
# An additional function stat_smooth is used for linear regression.
print(
  ggplot(mtcars, aes(x = log(mpg), y = log(drat))) +
    geom_point(aes(color = factor(gear))) +
    stat_smooth(method = "lm", col = "#C42126", se = FALSE, linewidth = 1)
)
