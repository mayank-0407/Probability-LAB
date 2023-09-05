# (1) Roll 12 dice simultaneously, and let X denotes the number of 6’s that appear. Calcu-
#   late the probability of getting 7, 8 or 9, 6’s using R. (Try using the function pbinom;             
# If we set S = {get a 6 on one roll}, P(S) = 1/6 and the rolls constitute Bernoulli tri-
#  als; thus X ∼ binom(size=12, prob=1/6) and we are looking for P(7 ≤ X ≤ 9).

# direct distribution no extra info given
# p functions gives prob of series 
# d functions gives prob of a number
prob <- pbinom(9,size=12,prob=1/6)-pbinom(6,size=12,prob=1/6)
cat('prob is ',prob)


# (2) Assume that the test scores of a college entrance exam fits a normal distribution.
# Furthermore, the mean test score is 72, and the standard deviation is 15.2. What is
# the percentage of students scoring 84 or more in the exam?

# lower.tail gives prob greater than mentioned int
prob<- pnorm(84,mean=72,sd=15.2,lower.tail = FALSE)
cat('prob is ',prob)
# or
new_prob<- 1- pnorm(84,mean=72,sd=15.2)
cat('New prob is ',new_prob)


# (3) On the average, five cars arrive at a particular car wash every hour. Let X count the
# number of cars that arrive from 10AM to 11AM, then X ∼Poisson(λ = 5). What is
# probability that no car arrives during this time. Next, suppose the car wash above
# is in operation from 8AM to 6PM, and we let Y be the number of customers that
# appear in this period. Since this period covers a total of 10 hours, we get that Y ∼
# Poisson(λ = 5×10 = 50). What is the probability that there are between 48 and 50
# customers, inclusive?

# if the event occurs again and again in given time period than it is poisson and average of it is labmda use dpois() func
this_prob<-dpois(0,lambda = 5)   # 0 because we need to find prob of no car arrive.
cat("prob of no car arrives  ",this_prob)

prob<-ppois(50,lambda=50)-ppois(47,lambda = 50)
cat("prob of cars arriving in 8 AM to 6PM ",prob)


# (4) Suppose in a certain shipment of 250 Pentium processors there are 17 defective pro-
#   cessors. A quality control consultant randomly collects 5 processors for inspection to
# determine whether or not they are defective. Let X denote the number of defectives
# in the sample. Find the probability of exactly 3 defectives in the sample, that is, find
# P(X = 3).

# division of cases is done in the que so it is of hyperditribution
t_prentium<-250
defective<-17
non_defec<-233
this_sample<-5
prob<- dhyper(3,m=defective,n=non_defec,k=this_sample)
cat("the probability of exactly 3 defectives in the sample ",prob)
# here m is total no of cases of which we have to find prob
# n is test prob k is no of sample taken

# (5) A recent national study showed that approximately 44.7% of college students have
# used Wikipedia as a source in at least one of their term papers. Let X equal the
# number of students in a random sample of size n = 31 who have used Wikipedia as a
# source.
# (a) How is X distributed?

# ans binomial distribution


# (b) Sketch the probability mass function.
    # d functions gives pmf values 
    # p functions gives pdf/cdf values
p=0.447
n=31
x<-seq(0,31)
pmf<-c()
for(i in 1:length(x)){
  pmf[i] <- dbinom(x[i],size=n,prob=p)
  cat("PMF Value of ",i," is ",pmf[i])
}

plot(x,pmf)


# (c) Sketch the cumulative distribution function.
cdf<-c()
for(i in 1:length(x)){
  cdf[i] <- pbinom(x[i],size=n,prob=p)
  cat("PMF Value of ",i," is ",cdf[i])
}
plot(x,cdf)

# (d) Find mean, variance and standard deviation of X.
mean<-n*prob_success
variance<- n*prob_success*(1-prob_success)
std<-sqrt(var)