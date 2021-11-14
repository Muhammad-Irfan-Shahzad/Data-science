
data(airquality)
airquality = read.csv('airquality.csv',header=TRUE, sep=",")


str(airquality)
head(airquality, n=3)

tail(airquality, n=3) 


summary(airquality) 

plot(airquality$Ozone) #scatter plot


plot(airquality$Ozone, airquality$Wind)

plot(airquality)

plot(airquality$Ozone, type= "b")


plot(airquality$Ozone, xlab = 'ozone Concentration', ylab = 'No of Instances', main = 'Ozone levels in NY city', col = 'green')

# high density vertical lines.
plot(airquality$Ozone, type= "h")

# Horizontal bar plot
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',xlab = 'ozone levels', col= 'green',horiz = TRUE)


# Vertical bar plot

barplot(airquality$Ozone, main = 'Ozone Concenteration in air',xlab = 'ozone levels', col='red',horiz = FALSE)


hist(airquality$Solar.R)


hist(airquality$Solar.R, main = 'Solar Radiation values in air',xlab = 'Solar rad.', col='red')

#Single box plot
boxplot(airquality$Solar.R)

# Multiple box plots
boxplot(airquality[,0:4], main='Multiple Box plots')


#grid of chart

par(mfrow=c(3,3), mar=c(2,5,2,1), las=1, bty="n")
plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type= "c")
plot(airquality$Ozone, type= "s")
plot(airquality$Ozone, type= "h")
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',xlab = 'ozone levels', col='green',horiz = TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4], main='Multiple Box plots')



# Installing & Loading the package
install.packages("lattice")
library(lattice)  
#Loading the dataset
attach(mtcars)



# Exploring the dataset
head(mtcars)





gear_factor<-factor(gear,levels=c(3,4,5),
                    labels=c("3gears","4gears","5gears")) 

cyl_factor <-factor(cyl,levels=c(4,6,8),
                    labels=c("4cyl","6cyl","8cyl"))



densityplot(~mpg, main="Density Plot",  xlab="Miles per Gallon")# kenral density plot

splom(mtcars[c(1,3,4,5,6)], main="MTCARS Data")# scatter plot matrix


xyplot(mpg~wt|cyl_factor*gear_factor,  
       main="Scatterplots : Cylinders and Gears",  
       ylab="Miles/Gallon", xlab="Weight of Car")




