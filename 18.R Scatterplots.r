data <-mtcars[,c('wt','mpg')]  
  
# Plotting the chart for cars with weight between 2.5 to 5 and mileage between 15 and 30.  
plot(x = data$wt,y = data$mpg, xlab = "Weight", ylab = "Milage", xlim = c(2.5,5), ylim = c(15,30), main = "Weight v/sMilage")  
