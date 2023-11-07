# Read the data from a CSV file
sales_data <- read.csv("companyData.csv")
sales_data


# Histogram:
# Create a histogram
hist(sales_data$toothpaste, main = "Histogram", xlab = "X-axis label", col = "blue", border = "black")


# Boxplot:
# Create a boxplot
boxplot(sales_data$bathingsoap, main = "Boxplot", ylab = "Y-axis label", col = "green")


# BarChart:
# Create a bar chart
barplot(table(sales_data$total_units), main = "Bar Chart", xlab = "X-axis label", ylab = "Y-axis label", col = "purple")


# LineGraph:
# Create a line graph
plot(sales_data$total_units, sales_data$total_profit, type = "l", col = "red", main = "Line Graph", xlab = "X-axis label", ylab = "Y-axis label")


# ScatterPlot:
# Create a scatterplot
plot(sales_data$total_units, sales_data$total_profit, col = "orange", main = "Scatterplot", xlab = "X-axis label", ylab = "Y-axis label")


# PieChart:
# Create a pie chart
slices <- c(30, 10, 20, 15, 25)
labels <- c("A", "B", "C", "D", "E")
pie(slices, labels = labels, main = "Pie Chart")
