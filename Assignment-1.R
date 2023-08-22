# (1) Create a vector c = [5,10,15,20,25,30] and write a program which returns the maximum and minimum of this vector.
# -------------------------------CODE-----------------------------------------
# main_vector <- c(5, 10, 15, 20, 25, 30)
# max_value <- max(main_vector)
# min_value <- min(main_vector)
# print(max_value)
# print(min_value)
# ------------------------------------------------------------------------
# (2) Write a program in R to find factorial of a number by taking input from user. Please
# print error message if the input number is negative.
# -------------------------------CODE-----------------------------------------
# factorial <- function(n) {
#   if (n < 0) {
#     stop("Error: Factorial is not defined for negative numbers.")
#   } else if (n == 0 || n == 1) {
#     return(1)
#   } else {
#     return(n * factorial(n - 1))
#   }
# }
# var=as.integer(readline())
# ans <- factorial(var)
# print(ans)
# ------------------------------------------------------------------------
# (3) Write a program to write first n terms of a Fibonacci sequence. You may take n as an
# input from the user.
# -------------------------------CODE-----------------------------------------
# fibonacci <- function(n) {
#   fib_seq <- numeric(n)
#   fib_seq[1] <- 0
#   if (n > 1) {
#     fib_seq[2] <- 1
#     for (i in 3:n) {
#       fib_seq[i] <- fib_seq[i - 1] + fib_seq[i - 2]
#     }
#   }
#   return(fib_seq)
# }
# 
# ans <- fibonacci(5)
# print(ans)
# ------------------------------------------------------------------------
# (4) Write an R program to make a simple calculator which can add, subtract, multiply
# and divide.
# -------------------------------CODE-----------------------------------------
# add <- function(x, y) {
#   return(x + y)
# }
# subtract <- function(x, y) {
#   return(x - y)
# }
# multiply <- function(x, y) {
#   return(x * y)
# }
# divide <- function(x, y) {
#   if (y == 0) {
#     stop("Error: Division by zero is not allowed.")
#   }
#   return(x / y)
# }
# num1 <- as.numeric(readline(prompt = "Enter the first number: "))
# num2 <- as.numeric(readline(prompt = "Enter the second number: "))
# 
# print("Select Operation : \n 1-Add \n2-Sub \n3-multiply \n4-divide")
# option <- as.integer(readline(prompt = "Enter the option number (1-4): "))
# result <- switch(option,
#                  "1" = add(num1, num2),
#                  "2" = subtract(num1, num2),
#                  "3" = multiply(num1, num2),
#                  "4" = divide(num1, num2),
#                  stop("Error: Invalid option."))
# cat("Result : ",result)

# ------------------------------------------------------------------------
# (5) Explore plot, pie, barplot etc. (the plotting options) which are built-in functions in R.
# -------------------------------CODE-----------------------------------------
# x <- c(1, 2, 3, 4, 5)
# y <- c(3, 5, 2, 7, 4)
# plot(x, y)
# pie(x,y)
# barplot(x,y)
# ------------------------------------------------------------------------