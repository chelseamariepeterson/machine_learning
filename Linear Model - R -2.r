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
  
abline(lm(csv_data$x ~ csv_data$y,
          data = csv_data), col = "black")

#PNG print
png(plot(abline(lm(csv_data)))


