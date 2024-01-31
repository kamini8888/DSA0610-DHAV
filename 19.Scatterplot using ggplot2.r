library(ggplot2)  

  
# Plotting the chart using ggplot() and geom_point() functions.  
print(ggplot(mtcars, aes(x = drat, y = mpg)) +geom_point()  )
