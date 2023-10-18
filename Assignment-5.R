# q1 a
p_a<-1-punif(45,min=0,max=60)
p_a

# q1 b
p_b<-punif(30,min=0,max=60)-punif(20,min=0,max=60)
p_b

# punif(x,min=a,max=b)
# pexp(x,rate=beta)
# pgammma(x,shape=a,scale=b)
# in gamma ig a=1 than it is explonential distribution

# q2 a
p_a<-dexp(3,rate=0.5)
p_a

# b
vec1<-seq(0,5,by=0.02)
t_vec<-c()
for(i in 0:length(vec1)){
  t_vec[i]<-dexp(vec1[i],rate=0.5)
}
plot(vec1,t_vec)

# c
p_c<-pexp(3,rate=0.5)
p_c

# d
vec1<-seq(0,5,by=0.02)
t_vec<-c()
for(i in 0:length(vec1)){
  t_vec[i]<-pexp(vec1[i],rate=0.5)
}
plot(vec1,t_vec)

# e
# rexp(n,rate=)  for random sample
p_e<-rexp(1000,rate=0.5)
plot(density(p_e))  
# here density is used to make graph from random variables

# Q3 a
p_a<-1-pgamma(1,shape=2,scale=1/3)
p_a

# b
# qgamma used when prob is given and you have to find values
p_b<-qgamma(0.70,shape=2,scale=1/3)
p_b