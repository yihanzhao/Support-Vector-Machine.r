#create a binary variable that takes a 1 for cars with gas mileage above the median, and a 0 below the median.
library(ISLR)
attach(Auto)
binary.gas<-ifelse(mpg>median(mpg),1,0)
Auto.new<-cbind(Auto,binary.gas)
head(Auto.new)
#fit a support vector classifier
install.packages("e1071")
library(e1071)
mpg.tune<-tune(svm,binary.gas~.,kernal="linear",data=Auto.new,ranges=list(cost=c(0.01,0.1,0.5,1,10,100)))
summary(mpg.tune)
#with different values of gamma and degree
mpg.tune.radial<-tune(svm,binary.gas~.,data=Auto.new,kernel="radial",ranges=list(cost=c(0.01,0.1,0.5,1,10,100),gamma=c(0.01, 0.1, 1, 5, 10, 100)))
summary(mpg.tune.radial)  
mpg.tune.poly<-tune(svm,binary.gas~.,data=Auto.new,kernel="polynomial",ranges=list(cost=c(0.01,0.1,0.5,1,10,100),degree=c(0.01, 0.1, 1, 5, 10, 100)))
summary(mpg.tune.poly) 
#make some plots  
linear.best<-svm(binary.gas~., data =Auto.new, kernel = "linear", cost =100)
radial.best<-svm(binary.gas~., data =Auto.new, kernel = "radial", cost =10,gamma=0.1)
poly.best<-svm(binary.gas~., data =Auto.new, kernel = "polynomial", cost =100,degree=1)
summary(linear.best)
summary(radial.best)
summary(poly.best)s
