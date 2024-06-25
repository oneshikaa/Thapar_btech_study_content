# q1
n = 100
df = n-1
samples = rt(n,df)
hist(samples)

# q2
n <- 100
degrees_of_freedom <- c(2, 10, 25)
chi_square_2 <- rchisq(n, degrees_of_freedom[1])
chi_square_10 <- rchisq(n, degrees_of_freedom[2])
chi_square_25 <- rchisq(n, degrees_of_freedom[3])
par(mfrow = c(1, 3)) # Set up a 1x3 grid for the plots
hist(chi_square_2, main = "Chi-Square (df = 2)", xlab = "Random Values", col = "skyblue")
hist(chi_square_10, main = "Chi-Square (df = 10)", xlab = "Random Values", col = 
       "lightgreen")
hist(chi_square_25, main = "Chi-Square (df = 25)", xlab = "Random Values", col = 
       "salmon")
par(mfrow = c(1, 1))

#q3
x <- seq(-6, 6, length.out = 100)
t_dist_df1 <- dt(x, df = 1)
t_dist_df4 <- dt(x, df = 4)
t_dist_df10 <- dt(x, df = 10)
t_dist_df30 <- dt(x, df = 30)
plot(x, t_dist_df30, type = "l", col = "blue", lwd = 2, xlab = "x", ylab = "Density", main = "tDistribution Density (df = 30)")
lines(x, t_dist_df1, col = "red")
lines(x, t_dist_df4, col = "green")
lines(x, t_dist_df10, col = "purple")
legend("topright", legend = c("df = 30", "df = 1", "df = 4", "df = 10"), col = c("blue", "red", 
                                                                                 "green", "purple"), lwd = 2)