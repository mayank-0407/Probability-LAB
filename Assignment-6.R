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

# f
# Define the joint probability mass function f(x, y)
f <- function(x, y) {
    return((x + y) / 30)
}

# (i) Display the joint mass function in rectangular (matrix) form
X <- 0:3
Y <- 0:2
joint_matrix <- outer(X, Y, FUN = Vectorize(f))
print(joint_matrix)

# (ii) Check if it's a joint mass function by verifying that the sum is 1
is_joint_mass_function <- sum(joint_matrix) == 1
print(paste("Is it a joint mass function?", is_joint_mass_function))

# (iii) Find the marginal distribution g(x) for x = 0, 1, 2, 3
marginal_x <- apply(joint_matrix, 1, sum)
print("Marginal distribution g(x):")
print(marginal_x)

# (iv) Find the marginal distribution h(y) for y = 0, 1, 2
marginal_y <- apply(joint_matrix, 2, sum)
print("Marginal distribution h(y):")
print(marginal_y)

# (v) Find the conditional probability at x = 0 given y = 1
conditional_prob <- joint_matrix[1, 2] / marginal_y[2]
print(paste("Conditional probability at x = 0 given y = 1:", conditional_prob))

# (vi) Calculate expected values and variances
EX <- sum(X * marginal_x)
print(paste("E(X):", EX))

EY <- sum(Y * marginal_y)
print(paste("E(Y):", EY))

# MI= matrix(c(f1(0,0:2),f2(1,0:2),f3(2,0:2),f4(3,0:2)),nrow=4,ncol=3,byrow = Trur)

EXY <- sum(outer(X, Y, FUN = function(x, y) x * y * f(x, y)))
print(paste("E(XY):", EXY))

VarX <- sum((X - EX)^2 * marginal_x)
print(paste("Var(X):", VarX))

VarY <- sum((Y - EY)^2 * marginal_y)
print(paste("Var(Y):", VarY))

CovXY <- EXY - EX * EY
print(paste("Cov(X, Y):", CovXY))

CorrXY <- CovXY / (sqrt(VarX) * sqrt(VarY))
print(paste("Correlation coefficient (rho):", CorrXY))

