# Creating a new factor column for cylinder levels with custom names
mtcars$cyl_level <- factor(mtcars$cyl, levels = c(4, 6, 8), labels = c("High", "Medium", "Low"))

# Boxplot with custom colors and custom names
boxplot(mpg ~ cyl_level, data = mtcars,
        xlab = "Quantity of Cylinders",
        ylab = "Miles Per Gallon",
        main = "Boxplot Example",
        notch = TRUE,
        varwidth = TRUE,
        col = c("green", "yellow", "red"),
        names = c("High", "Medium", "Low")
)
