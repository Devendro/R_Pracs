# Implement data Visualization With Ggplot2

# Load the necessary libraries
install.packages("ggplot2")
install.packages("tidyr")
install.packages("dplyr")

library(ggplot2)
library(tidyr)
library(dplyr)

# Read the data from the CSV file
data <- read.csv("companyData.csv")
data

# Create a bar chart for total profit by month
ggplot(data, aes(x = month_number, y = total_profit)) +
  geom_bar(stat = "identity", fill = "blue") +
  labs(title = "Total Profit by Month", x = "Month", y = "Total Profit")


# Create a line chart for each product's sales by month
data_long <- data %>%
  select(month_number, facecream, facewash, toothpaste, bathingsoap, shampoo, moisturizer) %>%
  pivot_longer(cols = -month_number, names_to = "Product", values_to = "Sales")

ggplot(data_long, aes(x = month_number, y = Sales, color = Product)) +
  geom_line() +
  labs(title = "Product Sales by Month", x = "Month", y = "Sales")


# Create a stacked bar chart for product sales by month
ggplot(data_long, aes(x = month_number, y = Sales, fill = Product)) +
  geom_bar(stat = "identity") +
  labs(title = "Product Sales by Month", x = "Month", y = "Sales") +
  scale_fill_brewer(palette = "Set3")


# Create a scatter plot for total units and total profit by month
ggplot(data, aes(x = total_units, y = total_profit, label = month_number)) +
  geom_point(size = 3, color = "red") +
  geom_text(vjust = -0.5) +
  labs(title = "Total Units vs. Total Profit", x = "Total Units", y = "Total Profit")

