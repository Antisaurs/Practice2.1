rm(list=ls())
library(datasets)
data("iris")
head(iris)

#Practice 2.1#

#Seperate the data by their species
seto_f<-iris$Species=="setosa"
setosa_data<-iris[seto_f,]
setosa_data

vers_f<-iris$Species=="versicolor"
versicolor_data<-iris[vers_f,] 
versicolor_data

virg_f<-iris$Species=="virginica"
virginica_data<-iris[virg_f,] 
virginica_data

#Practice 2.2#

#Create new column with their own color
setosa_data$color<-ifelse(setosa_data$Species=='setosa','purple','white')
versicolor_data$color<-ifelse(versicolor_data$Species=='versicolor','blue','white')
virginica_data$color<-ifelse(virginica_data$Species=='virginica','pink','white')

#Sorted in order
setosa_int<-order(setosa_data$Sepal.Width)
versicolor_int<-order(versicolor_data$Sepal.Width)
virginica_int<-order(virginica_data$Sepal.Width)

setosa_rank<-setosa_data[setosa_int, ]
versicolor_rank<-versicolor_data[versicolor_int,]
virginica_rank<-virginica_data[virginica_int,]

#Smallest Sepal Width & Column "Color" Removed
setosa_SW_Min<-setosa_rank[1,1:5]
versicolor_SW_Min<-versicolor_rank[1,1:5]
virginica_SW_Min<-virginica_rank[1,1:5]


  
setosa_SW_Min
versicolor_SW_Min
virginica_SW_Min


