# setwd("/downloads")
# print(getwd())
# A
file_path <- "Clt-data.csv"
data <- read.csv(file_path)
print(data)


# B
num_rows <- nrow(data)
cat("Number of rows in the dataset:", num_rows, "\n")
head(data, 10)

# C
population_mean <- mean(data$Wall.Thickness)
hist(data$Wall.Thickness)
abline(v = population_mean, col = "red", lwd = 2)

plot(density(data$Wall.Thickness))


# Q2
#1
s10<-c()
for(i in 1:9000){
  s=sample(data$Wall.Thickness,size=10,replace=TRUE)
  s10[i]=mean(s)
}
hist(s10)
abline(v=12.8,col="red")


#2

s20<-c()
for(i in 1:9000){
  s=sample(data$Wall.Thickness,size=20,replace=TRUE)
  s20[i]=mean(s)
}
hist(s20)
abline(v=12.8,col="red")
plot(density(data$Wall.Thickness))