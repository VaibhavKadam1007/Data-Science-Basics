#############
###PG.5

A=matrix(c(5,2,6,1,0,6,2,0,3,8,1,4,1,8,5,6),byrow = TRUE,4,4)
A 
B=matrix(c(7,5,8,0,1,8,2,6,9,4,3,8,5,3,7,9),byrow = TRUE,4,4)
B 

p=cbind(c(5,0,3,1),c(2,6,8,8),c(6,2,1,5),c(1,0,4,6))
p 
q=cbind(c(7,1,9,5),c(5,8,4,3),c(8,2,3,7),c(0,6,8,9))
q 

p=rbind(c(5,2,6,1),c(0,6,2,0),c(3,8,1,4),c(1,8,5,6))
p
q=rbind(c(7,5,8,0),c(1,8,2,6),c(9,4,3,8),c(5,3,7,9))
q 

max(A)
min(B)

C=A[2,3]
C

D=B[4,]
D

f=B[,4]
max(f)

t(A)
solve(B)

####################
###PG.7 - 8

match_stat=
  data.frame(name=c("Tendulkar","Ponting","kallis","Dravid","cook"),
             matches=c(200,168,166,164,161),
             innings=c(329,287,280,286,291),
             highestscore=c(248,257,224,270,294),
             avg=c(53.78,51.85,55.37,52.31,45.35))
match_stat

print(match_stat[c(1),c(4)])

name=match_stat[c(5),c(1)]
avg=match_stat[c(5),c(5)]
name
avg

print(match_stat[c(2,4,5),c(1,2,3,5)])

match_stat[c(1),c(2)]=201
match_stat
#######################
##PG.14 - 15
## Doubt - Pollutant file .xls is not send


## CASE STUDY 1 -  Hair color data

#a = read.csv(file.choose(),header = TRUE) 
a=read.csv("hair_eye_color_CSV.csv",header=TRUE) 

sum(a$Eye.Color=="Brown") 

sum(a$Hair.Color=="Blonde") 

sum(a$Hair.Color=="Brown" & a$Eye.Color=="Black") 

sum(a$Eye.Color=="Green")/length(a$Eye.Color)*100 

sum(a$Hair.Color=="Red" & a$Eye.Color=="Blue")/length(a$Hair.Color) * 100

