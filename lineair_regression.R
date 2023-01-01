library(help="datasets")
mtcars
plot(mtcars$mpg,mtcars$hp,main="regression line for miles per gallon",
     xlab="mpg",ylab="hp",)
y <-mtcars$mpg 
z <-mtcars$ hp
relation <- lm(mtcars$mpg ~ mtcars$ hp)
print(relation)
print(summary(relation))
a <- data.frame(x=170)
x <-predict(relation,a)
print(x)
plot(y,z,col="green",main="plot for regression line")
abline(lm(mtcars$mpg ~ mtcars$ hp),cex1.3,pch=16,xlab="mpg",ylab="hp")
plot(y,z,col="green",main="plot for regression line")
