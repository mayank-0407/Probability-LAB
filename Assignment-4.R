#1. The probability distribution of X, the number of imperfections per 10 meters of a
# synthetic fabric in continuous rolls of uniform width, is given as
# x 0 1 2 3 4
# p(x) 0.41 0.37 0.16 0.05 0.01
# Find the average number of imperfections per 10 meters of this fabric.
# (Try functions sum( ), weighted.mean( ), c(a %*% b) to find expected value/mean.
x<-c(0,1,2,3,4)
px<-c(0.41,0.37,0.16,0.05,0.01)
print(sum(x*px))
print(weighted.mean(x,px))
print(c(x%*%px))


#2. The time T, in days, required for the completion of a contracted project is a random
#variable with probability density function f(t) = 0.1 e(-0.1t)
#for t > 0 and 0 otherwise. Find
#the expected value of T.
#Use function integrate( ) to find the expected value of continuous random variable T.
f<-function(t){t*0.1*exp(-(0.1)*t)}
print(integrate(f,lower=0,upper = Inf)$value)


#A bookstore purchases three copies of a book at $6.00 each and sells them for $12.00
# each. Unsold copies are returned for $2.00 each. Let X = {number of copies sold} and
# Y = {net revenue}. If the probability mass function of X is
# x 0 1 2 3
# p(x) 0.1 0.2 0.2 0.5
# 
# Find the expected value of Y.
x<-c(0,1,2,3)
px<-c(0.1,0.2,0.2,0.5)
# y<-10*x-12
buy<-6
sell<-12
return_seller<-2
# print(sum(y*px))
prob_revenue<-weighted.mean((x*sell-x*buy-x*return_seller),px)
print(prob_revenue)


# 4. Find the first and second moments about the origin of the random variable X with
# probability density function f(x) = 0.5e
# -|x|
#   , 1 < x < 10 and 0 otherwise. Further use the
# 
# results to find Mean and Variance.
# (kth moment = E(Xk
#                 
# ), Mean = first moment and Variance = second moment – Mean2
f<-function(x){x*0.5*exp(-(abs(x)))}
print(integrate(f,lower=1,upper = 10)$value)
g<-function(x){x*x*0.5*exp(-(abs(x)))}
print(integrate(g,lower=1,upper = 10)$value)


# 5. Let X be a geometric random variable with probability distribution
# 
# f(x) =
#   3
# 4
# (
#   1
#   4
# )
# x−1
# , x = 1,2,3, ...
# 
# Write a function to find the probability distribution of the random variable Y = X2
# and
# find probability of Y for X = 3. Further, use it to find the expected value and variance of
# Y for X = 1,2,3,4,5.

f<-function(x){x*0.75*(0.25)^(x-1)}
x<-as.integer(readline(prompt = "Enter x:"))
y<-x^2
print(f(y))
x<-c(1,2,3,4,5)
y<-x^2
proby<-f(y)
print(proby)
Expval<-sum(y*proby)
print(Expval)
Expval2<-sum(y^2*proby)
var<-Expval2-(Expval)^2
print(var)