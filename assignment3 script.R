#Assignment 3       July 15, 2015    Sung Mo Koo


WHO <- read.csv("/Users/SungMo/Desktop/WHO.csv")

newmodel <-lm(WHO$Population.in.urban.areas....~WHO$Adolescent.fertility.rate....)
plot(WHO$Population.in.urban.areas....~WHO$Adolescent.fertility.rate....)

plot(newmodel)
WHO$pred <- predict(newmodel,WHO)
points(WHO$Population.in.urban.areas....,WHO$pred,col="blue",pch=16)
abline(newmodel)


#class notes
head(mtcars)

aa <- kmeans(mtcars,centers=2)

plot(mtcars$mpg,mtcars$hp,col=aa$cluster,pch=16,cex=2,xlab="mpg",ylab="horsepower")

carsnorm <- scale(mtcars)
d <- dist(carsnorm,method="euclidean")
hc <- hclust(d,method="complete")
plot(hc)
cutree(hc,3)

iris
summary(iris)

kloR
library(caret)
library(class)
e1071
library(ElemStatLearn)

sub=sample(nrow(spam),floor(nrow(spam)*0.9))

head(spam)

train=spam[sub,]
test=spam[-sub,]

xTrain=train[,-58]
yTrain=train$spam

xTest=test[,-58]
yTest=test$spam

model=train(xTrain,yTrain,'nb',trControl=trainControl(method='cv',number=10))

prop.table(table(predict(model$finalModel,xTest)$class,yTest))
