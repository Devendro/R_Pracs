# Implement commands for drawing various Correlation Plots and learn the process of EDA

# Load the necessary libraries
install.packages("GGally")
install.packages("ggplot2")
install.packages("corrplot")

library(GGally)
library(ggplot2)
library(corrplot)

# Read the data from a CSV file
sales_data <- read.csv("companyData.csv")

# Explore the structure and summary statistics
str(sales_data)
summary(sales_data)

# Correlation Plot:
# Calculate the correlation matrix
correlation_matrix <- cor(sales_data, method = "pearson")
# Create a correlation plot using corrplot
corrplot(correlation_matrix, method = "color")


# ScatterPlot Matrix:
# Create a scatterplot matrix using ggplot2
ggpairs(sales_data, title = "Scatterplot Matrix")


# Boxplot:
# Create boxplots or violin plots for numeric variables
ggplot(sales_data, aes(x = "Group", y = facewash)) + 
  geom_boxplot(fill = "blue") +
    labs(title = "Boxplot or Violin Plot", x = "Categorical Variable", y = "Numeric Variable")


# Histogram
# Create histograms
ggplot(sales_data, aes(x = facewash)) + 
  geom_histogram(binwidth = 40, fill = "blue") + 
    labs(title = "Histogram", x = "Numeric Variable")


# Heatmap:
# Create a heatmap using ggplot2
ggplot(sales_data, aes(x = total_units, y = bathingsoap)) + 
  geom_tile(aes(fill = total_profit)) +
  labs(title = "Heatmap", x = "Categorical Variable 1", y = "Categorical Variable 2", fill = "Numeric Variable")
