#1a
chest<-c(rep("gold_coins",20),rep("silver",30),rep("bronze",50))
sample(chest,10)

#1b
sample(c("success", "failure"), 10, replace = TRUE, prob = c(0.9, 0.1))

#2a
# Function to simulate the probability of a birthday match for a given n
simulate_birthday_probability <- function(n, num_simulations) {
  # Initialize a counter to keep track of matches
  match_count <- 0
  
  # Run simulations
  for (i in 1:num_simulations) {
    # Generate n random birthdays (from 1 to 365)
    birthdays <- sample(1:365, n, replace = TRUE)
    
    # Check if there's a match
    if (length(birthdays) != length(unique(birthdays))) {
      match_count <- match_count + 1
    }
  }
  
  # Calculate the probability of a match
  probability <- match_count / num_simulations
  
  return(probability)
}

# Set the number of simulations
num_simulations <- 10000

# Find the smallest n for which the probability of a match is greater than 0.5
smallest_n <- NULL
for (n in 2:365) {
  probability <- simulate_birthday_probability(n, num_simulations)
  if (probability > 0.5) {
    smallest_n <- n
    break
  }
}

# Print the results
cat("Smallest n for which the probability of a match is greater than 0.5:", smallest_n, "\n")

#3
conditional_prob<-function(P_cloud,P_rain,P_cloud_rain){
  
  
  P_rain_cloud<-P_cloud_rain*P_rain/P_cloud
  
  return (P_rain_cloud)
  
}
P_cloud<-0.4
P_rain<-0.2
P_cloud_rain<-0.85

ans<-conditional_prob(P_cloud,P_rain,P_cloud_rain )
print(ans)

#4
# Load the Iris dataset
data(iris)

# (a) Print the first few rows of the dataset
head(iris)

# (b) Find the structure of the dataset
str(iris)

# (c) Find the range of sepal length
range_sepal_length <- range(iris$Sepal.Length)
cat("Range of Sepal Length:", range_sepal_length[1], "to", range_sepal_length[2], "\n")

# (d) Find the mean of sepal length
mean_sepal_length <- mean(iris$Sepal.Length)
cat("Mean Sepal Length:", mean_sepal_length, "\n")

# (e) Find the median of sepal length
median_sepal_length <- median(iris$Sepal.Length)
cat("Median Sepal Length:", median_sepal_length, "\n")

# (f) Find the first and third quartiles and the interquartile range for sepal length
quartiles_sepal_length <- quantile(iris$Sepal.Length, c(0.25, 0.75))
iqr_sepal_length <- diff(quartiles_sepal_length)
cat("First Quartile:", quartiles_sepal_length[1], "\n")
cat("Third Quartile:", quartiles_sepal_length[2], "\n")
cat("Interquartile Range:", iqr_sepal_length, "\n")

# (g) Find the standard deviation and variance of sepal length
std_dev_sepal_length <- sd(iris$Sepal.Length)
variance_sepal_length <- var(iris$Sepal.Length)
cat("Standard Deviation of Sepal Length:", std_dev_sepal_length, "\n")
cat("Variance of Sepal Length:", variance_sepal_length, "\n")

# (h) Repeat the above exercises for sepal.width, petal.length, and petal.width
# Sepal Width
range_sepal_width <- range(iris$Sepal.Width)
mean_sepal_width <- mean(iris$Sepal.Width)
median_sepal_width <- median(iris$Sepal.Width)
quartiles_sepal_width <- quantile(iris$Sepal.Width, c(0.25, 0.75))
iqr_sepal_width <- diff(quartiles_sepal_width)
std_dev_sepal_width <- sd(iris$Sepal.Width)
variance_sepal_width <- var(iris$Sepal.Width)

# Petal Length
range_petal_length <- range(iris$Petal.Length)
mean_petal_length <- mean(iris$Petal.Length)
median_petal_length <- median(iris$Petal.Length)
quartiles_petal_length <- quantile(iris$Petal.Length, c(0.25, 0.75))
iqr_petal_length <- diff(quartiles_petal_length)
std_dev_petal_length <- sd(iris$Petal.Length)
variance_petal_length <- var(iris$Petal.Length)

# Petal Width
range_petal_width <- range(iris$Petal.Width)
mean_petal_width <- mean(iris$Petal.Width)
median_petal_width <- median(iris$Petal.Width)
quartiles_petal_width <- quantile(iris$Petal.Width, c(0.25, 0.75))
iqr_petal_width <- diff(quartiles_petal_width)
std_dev_petal_width <- sd(iris$Petal.Width)
variance_petal_width <- var(iris$Petal.Width)

# (i) Use the built-in function summary on the dataset Iris
summary(iris)

#5

calculate_mode <- function(x) {
  unique_values <- unique(x)
  unique_counts <- table(x)
  modes <- unique_values[unique_counts == max(unique_counts)]
  return(modes)
}

#unique_values contains all unique values in data_vector, and unique_counts contains the counts of each unique value.

data_vector <- c(2, 3, 4, 3, 5, 6, 4, 4, 7)
result <- calculate_mode(data_vector)

cat("Mode(s) of the dataset:", result, "\n")


