###################
#CASE STUDY - 2 -Display of numerical data

#g = read.csv(file.choose(),header = TRUE)
g=read.csv("germination_csv.csv",header=TRUE) 

#Average number of seeds for uncovered boxes with level of watering=4
mean(g$germinated[g$Box=="Uncovered" & g$water_amt==4])

#Median value for data covered boxes
median(sort(g$germinated[g$Box=="Covered"],decreasing=F))

boxplot(g$water_amt~g$Box,
        xlab="BOX",ylab = "Amount of Water",
        main = "Box Plot",
        col = c("red","blue")
        )

boxplot(g$germinated~g$Box,
        xlab="BOX",ylab = "Germinated seeds",
        main = "Box Plot",
        col = c("red","blue")
)

plot(g$germinated~g$water_amt,
     xlab="water_amt",ylab = "Germinated seeds",
     main = "Scatter Plot",
     col = c("red","blue")
)

#################################
#CASE STUDY - 3 - Wheat Box
library(readxl)
wheat <- read_excel("wheat.xlsx")

boxplot(wheat$`2016 (th. Tonnes)`,main = "Boxplot for 2016",
        xlab="2016",ylab = "Production(Tonnes)",
        col = c("blue"))
boxplot(wheat$`2015 (Th. Tonnes)`,main = "Boxplot for 2015",
        xlab="2015",ylab = "Production(Tonnes)",
        col = c("red"))
        
boxplot(wheat$`2015 (Th. Tonnes)`,wheat$`2016 (th. Tonnes)`,main = "Boxplot for Production Comparison in 2015 & 2016",
        xlab="2015 & 2016",ylab = "Production(Tonnes)",
        col = c("red","BLUE"))

#####
#CASE STUDY -4 - IRIS
library(readxl)
iris_data<- read_excel("iris data.xlsx")
View(iris_data)

plot(iris_data$`sepal width`,iris_data$`sepal length`,
     xlab ="sepal length",ylab = "sepal width",
     main = "scatter plot",
     col = c("red","green"))


################## PRACTICE - INBUILT -DATASETS ########################################

summary(iris)
boxplot(iris$Sepal.Length~iris$Species,
        main = "Boxplot for sepal length",
        xlab="Iris",ylab = "Sepal length",
        col = c("red","blue","green"))

plot(iris$Sepal.Length,iris$Sepal.Width,
     xlab ="sepal width",ylab = "sepal length",
     main = "scatter plot",
     col = c("red","green","blue"))

summary(iris$Sepal.Width)

hist(iris$Sepal.Width)

