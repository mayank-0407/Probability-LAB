# type install.pakages("pragma") in cosole
# to use it library("pracma")

# integral2 used to find double integral
# q1

library("pracma")

# a
j_den<-function(x,y){
  return (2*(2*x+3*y)/5)
}
i<-integral2(j_den,xmin=0,xmax=1,ymin=0,ymax=1)
print(i$Q)

# b
j_den2<-function(y){
  j_den(1,y)
}
i<-integral(j_den2,0,1)
i

# c
j_den3<-function(x){
  j_den(x,0)
}
i<-integral(j_den3,0,1)
i

# d
# g(x,y).f(x,y)dxdy
g<-function(x,y){
  x*y*j_den(x,y)
}
e<-integral2(g,xmin=0,xmax=1,ymin=0,ymax=1)
e$Q

# Q2
# a
f<-function(x,y){
  (x+y)/30
}
x<-seq(0,3,by=1)
y<-seq(0,2,by=1)
# mat<-matrix(c(1,2,3,4),nrow=length(x),col=length(y))
mat<-matrix(c(f(0,0:2),f(1,0:2),f(2,0:2),f(3,0:2)),nrow=4,ncol=3,byrow=TRUE)
mat

# b
is_jmf<-sum(mat)
is_jmf

# c
# apply(mat_name,row if 1 col if 2,function to apply) is used for matrix 
mdf<-apply(mat,1,sum)
mdf

# d
mdf_y<-apply(mat,2,sum)
mdf_y

# e
cp<-mat[1,2]/mdf_y[2]
cp