library(readxl)
a <- read_excel("C:/Users/vaibhav/Desktop/travelled_dataset.xlsx")

View(a)

attach(a) 
a 
N<-nrow(a) 
N 
Travelled.abroad1<-sum(a$`Travelled abroad`=="Y") 
Travelled.abroad1 
percent_travelled<-(Travelled.abroad1/(N-1))*100 
cat("nPercentage of travelled abroad=",percent_travelled) 

#problem 2. 
x0<-dbinom(0,10,0.56) 
x0 
x1<-dbinom(1,10,0.56) 
x1 
x2<-dbinom(2,10,0.56) 
x2 
x3<-dbinom(3,10,0.56) 
x3 
x4<-dbinom(4,10,0.56) 
x4 
x5<-dbinom(5,10,0.56) 
x5 
x6<-dbinom(6,10,0.56) 
x6 
x7<-dbinom(7,10,0.56) 
x7 
x8<-dbinom(8,10,0.56) 
x8 
x9<-dbinom(9,10,0.56) 
x9 
x10<-dbinom(10,10,0.56) 
x10 

probvector<-dbinom(0:10,10,0.56) 
probvector 

#What is the probability that in the randomly chosen 
#sample of 100 persons at least 59 have travelled abroad? 
sum4<-sum(dbinom(59:100,100,0.56))
sum5<-pbinom(58,100,0.56)
1-sum5
sum4
sum5

x1= dbinom(0:10,10,0.56) 
y1= 0:10 
barplot(x1,y1,col="red",names.arg = c(0:10)) 

x1= dbinom(0:150,150,0.56) 
y1= 0:150 
barplot(x1,y1,names.arg =c(0:150),col="red") 
barplot(probvector,col="red",names.arg = c(0:10))

