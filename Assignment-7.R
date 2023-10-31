# rt random values tdist  tr(n,df) here df is degree of freedom
# 1
n=100
df=n-1
samples<-rt(n,df)
samples
hist(samples)

# 2
n=100
df=c(2,10,25)
rchisq(n,df[1])
rchisq(n,df[2])
rchisq(n,df[3])

# 3 we used d because a specific point was given
x<-seq(-6,6,length=100)
df<-c(1,4,10,30)
dt(x,df[1])
dt(x,df[2])
dt(x,df[3])
r=dt(x,df[4])
plot(x,r,type="l",col="red")  # type l means line
colour<-c("green","orange","pink")
for(i in 1:3){
  lines(x,dt(x,df[i]),col=colour[i])
}

# 4 qt if we want point from probability
# in f dist we use 2 degree of freedom n,df1,df2
# 1
qf(0.95,df1=10,df2=20)
# 2 pf is used to find cumulative and it finds value for less than the point given
pf(1.5,10,20)
pf(1.5,10,20,lower.tail = FALSE)

# 3
q<-c(0.25,0.5,0.75,0.99)
df1=10
df2=20
qf(q[1],df1,df2)
qf(q[2],df1,df2)
qf(q[3],df1,df2)
qf(q[4],df1,df2)

# 4
x<-rf(1000,df1=10,df2=20)
hist(x)
