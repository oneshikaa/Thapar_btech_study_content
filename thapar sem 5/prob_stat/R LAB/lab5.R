#Q1
#Consider that X is the time (in minutes) that a person has to wait in order to take a flight.
#If each flight takes off each hour X ~ U(0, 60). Find the probability that
#(a) waiting time is more than 45 minutes, and
#(b) waiting time lies between 20 and 30 minutes.
a<- 1 - punif(45, min = 0, max = 60,lower.tail = TRUE)
print(a)

b<- punif(30,min=0,max = 60) - punif(20, min=0, max = 60)
print(b)

#Q2
# Parameter of the exponential distribution
lambda <- 1/2

# (a) Value of the density function at x = 3
density_at_3 <- dexp(3, rate = lambda)
cat("Density at x = 3:", density_at_3, "\n")

# (b) Plot the exponential probability distribution for 0 ≤ x ≤ 5
x_values <- seq(0, 5, by = 1)
pdf_values <- dexp(x_values, rate = lambda)
plot(x_values, pdf_values, type = "l", main = "Exponential Probability Density", 
     xlab = "x", ylab = "Probability Density")

# (c) Probability that a repair time takes at most 3 hours
prob_at_most_3 <- pexp(3, rate = lambda)
cat("Probability of repair time at most 3 hours:", prob_at_most_3, "\n")

# (d) Plot the cumulative exponential probabilities for 0 ≤ x ≤ 5
cdf_values <- pexp(x_values, rate = lambda)
plot(x_values, cdf_values, type = "l", main = "Cumulative Exponential Probabilities", 
     xlab = "x", ylab = "Cumulative Probability")

# (e) Simulate 1000 exponential random numbers with λ = 1⁄2
set.seed(123)  # Set a seed for reproducibility
simulated_data <- rexp(1000, rate = lambda)
hist(simulated_data, breaks = 30, main = "Simulated Exponential Data", xlab = "x", ylab = "Frequency")


#Q3
# Parameters of the Gamma distribution
alpha <- 2  # Shape parameter
beta <- 1/3  # Scale parameter

# (a) Probability that lifetime is at least 1 unit of time
prob_at_least_1 <- 1 - pgamma(1, shape = alpha, rate = beta)
cat("Probability that lifetime is at least 1 unit of time:", prob_at_least_1, "\n")

# (b) Finding the value of c such that P(X ≤ c) ≥ 0.70
target_prob <- 0.70
c <- qgamma(target_prob, shape = alpha, rate = beta)
cat("Value of c:", c, "\n")
