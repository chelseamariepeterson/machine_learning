#!/bin/bash
csv_data<-read.csv("regrex1.csv")

print(csv_data)

my_plot <- plot(x = csv_data$x,
     y = csv_data$y,
     xlab = "x",
     ylab = "y",
     main = "Linear Model - R")

plot(x = csv_data$x,
     y = csv_data$y,
     xlab = "x",
     ylab = "y",
     col = "black",
     main = "Linear Model2 - R")
  
my_plot2 <- abline(lm(csv_data$x ~ csv_data$y,
          data = csv_data), col = "black")

# PNG device
png("my_plot2.png")

# Code
plot(rnorm(20))

# Close device
dev.off()