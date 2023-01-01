################
##PG.17
l=12
m=12
n=2002
dob=c(l,m,n)
print(dob)

#################
##PG.20 - 21

s = 2
p = 2L

class(s)
class(p)

q = as.integer(s)
class(q)

b =4/3
as.integer(b)
class(b)

as.numeric(b)
is.integer(b)
is.numeric(b)

x = 1
y = 2
z = x>y

print(z)
class(z)

x = "My SGPA"
y = "for last semester is"
z = 9.12
print(paste(x, y, z))     

######################################
##PG.25

a= seq(1,38,3)
a

b=rep(5,10)
b

x = c(1,5,2)
y = c(3,7,9)

x=c(y,x)
print(x)

z = c(4,3,2)
y = c(y,z)
print(y)

max(y)
min(x)

x=c( 1, 5, 2, 3, 7, 6, 8 )
y=x*x
print(y)
z=1/x
print(z)
w =log(x,base=10)
print(w)

m=c(22, 27, 31, 41, 30, 25, 19, 20, 23, 35)
print(m[4])

age30=m[m>30]
age30

print(m[c(8,9,10)])

age=length(m)
print(age)

print(m[c(-5,-7)])
age2=m[m>20 & m<25]
age2

#############################
##PG.28-29

Rollno = c(1:4)
First_name=c("Ravi","Om","Ajay","Shiv")
Last_name=c("Dev","Gandhi","Pande","Rao")
Subject=c("AE","DS","ML","OS")
Marks=c(35,40,38,02)
Result=c("P","P","P","F")


ls=list(Rollno,First_name,Last_name,Subject,Marks,Result)
print(ls)

print(ls[1])
print(ls[2])
print(ls[3])
print(ls[4])
print(ls[5])
print(ls[6])

class(Rollno)
class(First_name)
class(Last_name)
class(Subject)
class(Marks)
class(Result)

print(ls[[2]][1])
print(ls[[4]][4])
print(ls[5])

Marks[3]=45
Marks

Subject[4]="OE"
Subject

Native_place=c("Pune","Nagpur","Mumbai","Nashik")
ls=list(Rollno,First_name,Last_name,Subject,Marks,Result,Native_place)
ls

ls[[1]][[5]] = 5
ls[[2]][[5]] = "julie"
ls[[3]][[5]] = "Gommes"
ls[[4]][[5]] = "DS"
ls[[5]][[5]] = 30
ls[[6]][[5]] = "P"
ls[[7]][[5]] = "Hyderabad"
print(ls)

######################
##Homework For Practice 
n = c(2,3,5)
s = c("aa","bb","cc","dd")
b= c(T,F,T,F)

x = list(n,s,b,3)

x[2]  

x[c(2,4)]

x[[2]][1]
x[[2]][2]
x[[2]][3]
x[[2]][4]

x$`Character vector`[1]
s[1] = "tt"
s
pnorm(34, 24, 4)
