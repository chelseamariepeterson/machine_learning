#!/bin/bash

# Re-create the plot from the last exercise
args = commandArgs(trailingOnly=TRUE)
csv_data<-read.csv(args[1])


png('r_orig.png')
plot(x = csv_data$x,
     y = csv_data$y,
     xlab = "x",
     ylab = "y",
     main = "Linear Model - R")

png('r_lm.png')
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