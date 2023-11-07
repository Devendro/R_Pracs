# Implementation and analysis of linear regression through graphical methods

install.packages("ggplot2")
install.packages("ggpubr")
library(ggplot2)
library(ggpubr)
# Linear regression
# simple linear regression
# Step 1: Load the data into R
incomedata = read.csv("SalaryData.csv")
summary(incomedata)

# Step 2: Make sure your data meet the assumptions
hist(incomedata$YearsExperience)	

# Linearity
plot(YearsExperience ~ Salary, data = incomedata)

# Step 3: Perform the simple linear regression analysis
Salary.YearsExperience.lm <- lm(YearsExperience ~ Salary, data = incomedata)
summary(Salary.YearsExperience.lm)

# Step 4: Visualize the results with a graph
# scatter plot
Salary.graph<-ggplot(incomedata, aes(x=Salary, y=YearsExperience))+ geom_point()
Salary.graph 

# Add the linear regression line to the plotted data
Salary.graph <- Salary.graph + geom_smooth(method="lm")
Salary.graph

# Add the equation for the regression line.
Salary.graph <- Salary.graph +
  stat_regline_equation(label.x = 3, label.y = 7)
Salary.graph
