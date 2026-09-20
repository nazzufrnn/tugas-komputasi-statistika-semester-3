#No.1 buka data
airquality

#No.2 histogram dan density variabel wind 
denti <- density(airquality$Wind, na.rm = TRUE)

hist(airquality$Wind, 
     breaks = 1.5 + (0:10) * 2,
     probability = TRUE,
     xlab = "Wind", 
     main = "Histogram and Density Wind")

lines(denti, col = "red", lwd = 2)

#No.3 boxplot dan steam and leaf
boxplot(airquality$Wind, horiz = TRUE,
        main = "Boxplot airquality",
        xlab = "Wind")

stem(airquality$Wind)

#No.4 scatterplot
plot(x = airquality$Wind,
     y = airquality$Ozone,
     pch = 16,
     main = "scatterplot",
     xlab = "wind",
     ylab = "ozone")
