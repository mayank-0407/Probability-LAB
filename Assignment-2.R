# (1) (a) Suppose there is a chest of coins with 20 gold, 30 silver and 50 bronze coins.
# You randomly draw 10 coins from this chest. Write an R code which will give us the
# sample space for this experiment. (use of sample(): an in-built function in R)
#
# -------------------------------CODE-----------------------------------------
# coins <- c(rep("gold", 20), rep("silver", 30), rep("bronze", 50))
# sample_space <- sample(coins, size = 10)
# print(sample_space)
# ------------------------------------------------------------------------
# (1) (b) In a surgical procedure, the chances of success and failure are 90% and 10%
#   respectively. Generate a sample space for the next 10 surgical procedures performed.
# (use of prob(): an in-built function in R)

# -------------------------------CODE-----------------------------------------
# outcomes <- c("S", "F")
# probabilities <- c(0.9, 0.1)
# sample_space <- sample(outcomes, size = 10, replace = TRUE, prob = probabilities)
# print(sample_space)
# ------------------------------------------------------------------------
# (2) A room has n people, and each has an equal chance of being born on any of the 365
#     days of the year. (For simplicity, we’ll ignore leap years). What is the probability
#     that two people in the room have the same birthday?
#     (a) Use an R simulation to estimate this for various n.

# -------------------------------CODE-----------------------------------------
# find_prob <- function(n){
#   prod=1
#   for(i in 0:n-1){
#     prod=prod*(1-(i/365))
#   }
#   main_prob=1-prod
#   return(main_prob)
# }
# main_prob=as.integer(readline())
# main_prob=find_prob(4)
# cat("So the Probability of ",n," students having same prob ",main_prob)
# ------------------------------------------------------------------------
#   (b) Find the smallest value of n for which the probability of a match is greater than
#   .5.

# -------------------------------CODE-----------------------------------------
# check=1
# while(new_prob<0.5){
#   new_prob=find_prob(check)
#   if(new_prob>=0.5){
#     cat("So the Probability of ",check," students have prob greater than 0.5 ",new_prob)
#     break
#   }
#   check=check+1
# }
# ------------------------------------------------------------------------
# (3) Write an R function for computing conditional probability. Call this function to do
# the following problem:
#   
#   suppose the probability of the weather being cloudy is 40%. Also suppose the prob-
#   ability of rain on a given day is 20% and that the probability of clouds on a rainy day
# 
# is 85%. If it’s cloudy outside on a given day, what is the probability that it will rain
# that day?
# -------------------------------CODE-----------------------------------------
# Compute_prob<-function(cloudy,rainy,prob_ofclouds){
#   prob_will_rain = (rainy*prob_ofclouds)/cloudy
#   return(prob_will_rain)
# }
# cat("The probability that it will rain that day is ",Compute_prob(0.4,0.2,0.85))
# ------------------------------------------------------------------------
# (5) R does not have a standard in-built function to calculate mode. So we create a user
# function to calculate mode of a data set in R. This function takes the vector as input
# and gives the mode value as output.
# -------------------------------CODE-----------------------------------------
# compute_mode<-function(vector){
#   new_vector=unique(vector)
#   # (match) creates a adjacency list of address that binds with a vector
#   # (tabulate) checks how many occurances are there of diff numbers in adjacency list
#   new_mode=new_vector[which.max(tabulate(match(vector,new_vector)))]
#   return(new_mode)
# }
# v=c(2,1,3,2,1,1,3,4,4,5,2,1,1,3)
# new_mode=compute_mode(v)
# cat("Mode of the VEctor : ",v," is ",new_mode)
# ------------------------------------------------------------------------

# (4) The iris dataset is a built-in dataset in R that contains measurements on 4 different
# attributes (in centimeters) for 150 flowers from 3 different species. Load this dataset
# and do the following:
# (a) Print first few rows of this dataset.
# -------------------------------CODE-----------------------------------------
data_set<-iris
head(data_set)
# ------------------------------------------------------------------------
# (b) Find the structure of this dataset.
# -------------------------------CODE-----------------------------------------
str(data_set)
# ------------------------------------------------------------------------
# (c) Find the range of the data regarding the sepal length of flowers.
# -------------------------------CODE-----------------------------------------
range(data_set$Sepal.Length)
# ------------------------------------------------------------------------
# (d) Find the mean of the sepal length.
# -------------------------------CODE-----------------------------------------
# ------------------------------------------------------------------------
# (e) Find the median of the sepal length.
# -------------------------------CODE-----------------------------------------
# ------------------------------------------------------------------------
# (f) Find the first and the third quartiles and hence the interquartile range.
# -------------------------------CODE-----------------------------------------
# ------------------------------------------------------------------------
# (g) Find the standard deviation and variance.
# -------------------------------CODE-----------------------------------------
# ------------------------------------------------------------------------
# (h) Try doing the above exercises for sepal.width, petal.length and petal.width.
# -------------------------------CODE-----------------------------------------
# ------------------------------------------------------------------------
# (i) Use the built-in function summary on the dataset Iris.
# -------------------------------CODE-----------------------------------------
# ------------------------------------------------------------------------
