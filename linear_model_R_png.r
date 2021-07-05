#!/bin/bash

# Call png() with the name of the file we want to create
png("my_plot.png")

# Re-create the plot from the last exercise
csv_data<-read.csv("regrex1.csv")

print(csv_data)

plot(x = csv_data$x,
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
  
abline(lm(csv_data$y ~ csv_data$x,
          data = csv_data), col = "black")

# Save our file and return to our interactive session
dev.off()

# Verify that we have created the file
list.files(pattern = "png")