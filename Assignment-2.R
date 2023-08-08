# (1) (a) Suppose there is a chest of coins with 20 gold, 30 silver and 50 bronze coins.
# You randomly draw 10 coins from this chest. Write an R code which will give us the
# sample space for this experiment. (use of sample(): an in-built function in R)
# 
# 
# coins <- c(rep("gold", 20), rep("silver", 30), rep("bronze", 50))
# sample_space <- sample(coins, size = 10)
# print(sample_space)

# (1) (b) In a surgical procedure, the chances of success and failure are 90% and 10%
#   respectively. Generate a sample space for the next 10 surgical procedures performed.
# (use of prob(): an in-built function in R)


# outcomes <- c("S", "F")
# probabilities <- c(0.9, 0.1)
# sample_space <- sample(outcomes, size = 10, replace = TRUE, prob = probabilities)
# print(sample_space)
