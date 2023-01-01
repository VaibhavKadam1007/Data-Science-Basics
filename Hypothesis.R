#Hypothesis Training

h<-read.csv("Hypothesis_csv1.csv")
attach(h)
h 

x_bar=mean(h$Life_Hrs)
x_bar
sd=sd(h$Life_Hrs)
sd
#nrow(h)
#N<-length(h$Bearing.no. ) 
#N
se=sd/sqrt(nrow(h))
se

mu=10000 

zscore=(x_bar-mu)/se
zscore
p=pnorm(zscore,0,1)
p
cat("\nPvalue :",p)
if(p<0.05){ #|| p<0.01) {
  cat("\nThe null hypothesis can be rejected alpha=0.05")
} else {
  cat("\nThe null hypothesis cannot be rejected alpha=0.05 and 0.01")
}
if(p<0.01) {
  cat("\nThe null hypothesis can be rejected alpha=0.01")
} else {
  cat("\nThe null hypothesis cannot be rejected alpha=0.01")
}
