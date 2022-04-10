#A
set.seed(1)
rnorm(1)
probability = dexp(1, rate = 3)
probability

#B
set.seed(1)
hist(rexp(10, rate = 3), main = "Histogram Eksponensial 10 Bilangan Random")
hist(rexp(100, rate = 3), main = "Histogram Exponensial 100 Bilangan Random")
hist(rexp(1000, rate = 3), main = "Histogram Exponensial 1000 Bilangan Random")
hist(rexp(10000, rate = 3), main = "Histogram Exponensial 10000 Bilangan Random")

#C
mean = lambda
mean 
var = lambda*lambda
var