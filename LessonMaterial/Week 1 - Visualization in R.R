######### VISUALIZATION IN R###########

mpg = ggplot2::mpg
View(mpg)

# Histogram (numeric) ----
hist(mpg$cty)

mean(mpg$cty)
sd(mpg$cty)

hist(mpg$cty,
     xlab = "Miles Per Gallon (City)",#label
     main = "Histogram of MPG (City)", #title
     breaks = 12, #number of bins
     col = "darkorange",
     border = "dodgerblue",
     )

# barplots (categories) -----

barplot(table(mpg$drv))

barplot(mpg$cty,
     xlab = "Drivetrain (f = FQS, r = RWD, 4 = 4WD)",#label
     main = "Drivetrain", #title
     col = "darkorange",
     border = "dodgerblue",
)

#boxplots (numerical vs categories)-----
boxplot (hwy ~ drv, data = mpg) #hway variable as of drive variable hwy - y, drv - x

boxplot (hwy ~ drv, data = mpg,
         xlab = "Drivetrain (f = FQS, r = RWD, 4 = 4WD)",
         ylab = "miles per Gallon",
         main = "MPG (highway) vs DriveTrain",
         pch = 20, #plot character
         cex = 2,
         col = "darkorange",
         border = "dodgerblue",
)

#scatterplot (numertic vs numeric)
plot(hwy ~ displ, data = mpg) #hway variable as of drive variable hwy - y, drv - x

plot (hwy ~ displ, data = mpg,
         xlab = "Engine Displacement (f = FQS, r = RWD, 4 = 4WD)",
         ylab = "miles per Gallon",
         main = "MPG (highway) vs DriveTrain",
         pch = 20, #plot character
         cex = 2,
         col = "darkorange",
         border = "dodgerblue",
)

#plotting system

library(lattice)
xyplot(hwy ~ displ, data = mpg)

library(ggplot2)
ggplot
