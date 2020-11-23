############# BASIC STATISTIC IN R ##########

mpg = ggplot2::mpg
View(mpg)
?mpg

###### Numeric variable------

# Mean
mean(mpg$cty) 
sum(mpg$cty)/length(mpg$cty)

# Medium 
median(mpg$cty)

sort(mpg$cty)
sort(mpg$cty)[length(mpg$cty)/2]

##### Spead 
var(mpg$cty)
sd(mpg$cty) #Average diviation , how far away each data point to mean)
range(mpg$cty)
IQR(mpg$cty) # 3rd quartile - 1st quartile



## summary
summary(mpg$cty)

##robust - 
#Medium is robusted statistic while mean is not. When throwing big number in the data mean seems to change rapidcally but not the median
#IQR is robust compared to sd

###### Category variable ------

mpg$drv
table(mpg$drv) #summary data
table(mpg$drv) /nrow(mpg)

table(mpg$class)

