?cars
str(cars)
summary(cars)
head(cars)
#print(cars)
C <- cars
plot(C)
#rss - residual sum of square
#or
#base(old), ggplot(new), 
#install.packages('ggplot2')
library(ggplot2)  #plot graph in layers  aes-asthetics
g1 <- ggplot(aes(x=speed, y=dist), data=C)
g2 <- g1 + geom_point()
g1
g2
##fit random lines to the data by trial & error

df = data.frame(beta_0=seq(0,1,length.out=10), beta_1=seq(0,5,length.out=10))
df

g2+geom_abline(intercept = df$beta_0[7], slope = df$beta_1[7])

for(i in 0:10){
  g2=g2+geom_abline(intercept = df$beta_0[i], slope = df$beta_1[i], col=i)
}
g2

RSS <- vector(mode = 'numeric')
for(i in 0:10) RSS[i]<-sum(((df$beta_1[i]*C$speed+df$beta_0[i])-C$dist)**2)
RSS
df$RSS=RSS
head(df)
ggplot(aes(x=beta_0, y=RSS), data=df)+ geom_point() + geom_line()
ggplot(aes(x=beta_1, y=RSS), data=df)+ geom_point() + geom_line()

i=which(df$RSS==min(df$RSS)) #select index of row containing minimum RSS
min_beta = c(df$beta_0[i], df$beta_1[i]) #store these coefficient with minimum RSS
min_beta


#see the line fit for min_beta
#minimum the p-value the better
gg <- g1+geom_abline(intercept = min_beta[1], slope=min_beta[2], col='green')
gg

#fitting linear model using lm() function
l_model<-lm(dist~speed, data=C)
l_model  #model coefficeinet
summary(l_model)
C$y_pred=predict(l_model, data=C$speed)   #predict y values using fitted mode
View(C)

#plot the regression line
#using base plot function
plot(C$speed, C$dist, xlab = "Speed", ylab = "Distance", main = "simple linear regression")
abline(l_model, col="blue", lwd=2)

#using ggplot2
ggplot(aes(x=speed, y=dist), data=C)+geom_point(col="red")+
  geom_line(aes(C$speed, C$y_pred), col="green")+ylab("Distance")+ggtitle("Simple linear regression")

