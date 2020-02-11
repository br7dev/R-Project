barplot(z,col = 'blue', xlab='days',ylab='temp')
barplot(z,col = 'blue', xlab='days',ylab='temp',main = 'temp vs days')

barplot(z,col = 'blue', xlab='days',ylab='temp',main = 'temp vs days', names.arg = c('sun','mon','tue','wed','thur','fri'))

age<- c(10,10,10,10,10,15,15,15,15,15,6,6,6,6,6,6,6,6,6,13,13,13,13,13,13,13,13,13,13)
table(age)
age<- c(10,10,10,10,10,15,15,15,15,15,6,6,6,6,6,6,6,6,6,13,13,13,13,13,13,13,13,13,13)
table(age)
age
table(age)
x<-table(age)
x
barplot(x, col='steelblue', xlab="age", ylab = 'freqq', main = "age vs freq")
airquality
View(airquality)
#the air quality data set is already available in the R Studio

fivenum(airquality$Ozone)
#boxplot is vvimp.
#check Gaussian formulas for data analytics

boxplot(airquality$Ozone)

boxplot(airquality$Ozone, col = 'steelblue', main ="BOXPLOT" )

boxplot(airquality$Temp~airquality$Month)


View(iris)
plot(iris$Sepal.Length~iris$Sepal.Width)

#regression analysis :- used for prediction analysis

#plotting the values in exp and sal... lm function is used for drawing the line
exp<- c(2,3,4,5,6,7,7.5,8,9)
sal<- c(30,40,45,50,55,60,70,75,80)
plot(sal,exp)
plot(sal,exp,abline(lm(exp~sal)),col = 'red', main ="salary vs experience", xlab ="salary", ylab = "experience")

model <-lm(sal~exp)
df<- data.frame(x=2.9)
pred1<- predict(model,df)
pred1

x= c(2,3,4,5,6,7,8,9)
y= c(20,30,40,50,60,70,80,90)
plot(y,x,abline(lm(x~y)))

mod<- lm(y~x)
data<-data.frame(x=3.5)
y1<-predict(mod,data)
summary(mod)

getwd()
setwd()
setwd('C:\Users\blue\Desktop\R workshop')
v<- read.csv()






