
qplot(carat,price,data =diamonds,color=clarity)# Modifying	aesthetices


qplot(carat,price,data =diamonds,geom = c("point","smooth"))# adding Geom


qplot(price,data =diamonds,fill=clarity)# histograms


qplot(carat,price,data =diamonds,facets =.~clarity) # Facets





#importing data
dat <- readRDS("C:\\Users\\nnsir\\Downloads\\maacs_env.rds")



# Histogram of eNo
qplot(log(duBedDerF),	data = dat)


# density smooth
qplot(log(duBedDerF),	data = dat,geom	="density" )
# by trying color
qplot(log(duBedDerF),	data = dat,geom	=	"density" ,color = 'red')

# scatter plot eno
qplot(log(VisitNum),log(duBedDerF),	data = dat)

qplot(log(VisitNum),log(duBedDerF),	data = dat,geom = c("point","smooth"),method="lm" )

qplot(log(VisitNum),log(duBedDerF),	data = dat,geom = c("point","smooth"),method="lm" ,facets	=.~ MxNum)

# adding more layers :facets
g + geom_point() + geom_smooth()

# notes about axis
testdat <- data.frame(x = 1:100, y = rnorm(100))!
  testdat[50,2] <- 100 ## Outlier!!
plot(testdat$x, testdat$y, type = "l", ylim = c(-3,3))