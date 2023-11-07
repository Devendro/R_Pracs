# Implementation of Normal and Binomial Distribution, Univariate and Bivariate analysis.
 
# Normal Distribution:
# Genereating Random data for normal distribution.
sample<- rnorm(100, mean=0, sd=1)
#calculating summary statistics.
mean_data<-mean(sample)
sd_data<- sd
# Creating a Histogram for data visualization.
hist(sample, main="Histogram for Normal Distribution", xlab = "Values", ylab = "Frequency", col = "Red")

# Generate random data from a normal distribution
mean_value <- 0
sd_value <- 1
n <- 1000
data <- rnorm(n, mean = mean_value, sd = sd_value)

# Create a histogram
hist(data, main = "Normal Distribution", xlab = "Value", prob = TRUE, col = "lightblue")

# Overlay the probability density function (PDF)
x <- seq(min(data), max(data), length = 100)
y <- dnorm(x, mean = mean_value, sd = sd_value)
lines(x, y, col = "red", lwd = 2)



# Binomial Distribution:
# Parameters for the binomial distribution
n_trials <- 10
probability_success <- 0.3
x_values <- 0:n_trials

# Compute the probability mass function
pmf <- dbinom(x_values, size = n_trials, prob = probability_success)

# Create a bar plot
barplot(pmf, names.arg = x_values, main = "Binomial Distribution", xlab = "Number of Successes", ylab = "Probability")

# Generating data set for Binomil distribution.
data<- rbinom(100, size = 20, prob = 0.3)
#summary statistics.
mean_val<- mean(data)
sd_val<- sd(data)
# Visualiazation for the PMF of binomial distribution.
barplot(table(data), names.arg = unique(data), main="Barplot of Binomial Distribution", xlab="Number of successions", ylab="Frequency" )

# Generating Random data for 2 variables in Normal distribution
x<-rnorm(100, mean=0, sd=1)
y<- rnorm(100, mean = 0, sd=3)
# Creating a scatterplot for Bivariate analysis.
plot(x,y, main="Scatter Plot for Bivariate Analysis", xlab = "X", ylab="Y" )
