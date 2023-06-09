#Example R script for DiRenzo Lab Meeting
#3/21/23

#This is an example of a linear regression using the iris dataset
#Modified from Introduction to Multiple Linear Regression in R by Michael Hahsler.

#load packages
library(tidyverse)

#review data
head(iris)
glimpse(iris)

#load and shuffle data
data(iris)
iris <- iris[sample(1:nrow(iris)),]

#First linear regression model
model1 <- lm(Petal.Width ~ . - Species, data = iris)
summary(model1)

#This is a model with predictors everything except for species, response variable is petal width
#what if we want to test a simpler model?
model2 <- lm(Petal.Width ~ . - Species - Sepal.Length, data = iris)
summary(model2)

#even simpler one 
model3<-lm(Petal.Width ~ . - Species - Sepal.Length - 1, data = iris)
summary(model3)
