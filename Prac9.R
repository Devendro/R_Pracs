# Implementation and analysis of Apriori Algorithm using Market Basket Analysis

# Install the libraries
install.packages('arules')

# Load the libraries
library(arules)

# Load the data set
data(Groceries)

# Get the rules
groceryRules = apriori(Groceries, parameter = list(supp = 0.001, conf = 0.8))

groceryRules # shows that it is a set of 410 rules

# Sorting rules by confidence
groceryRules = sort(groceryRules, by = "confidence", decreasing = TRUE)
inspect(groceryRules[1:10])

# What type of customers will buy whole milk? (whole milk is rhs)
wholeMilkRules = apriori(data = Groceries, 
                         parameter = list(supp = 0.001, conf = 0.08), 
                         appearance = list(default = "lhs", rhs = "whole milk")
)

inspect(wholeMilkRules[1:10])

wholeMilkRules = sort(wholeMilkRules, by = "confidence", decreasing = TRUE)
inspect(wholeMilkRules[1:10])

# If a customer buys "whole milk" then what else will they buy? (whole milk is lhs)
wholeMilkRules2 = apriori(data = Groceries, 
                          parameter = list(supp = 0.001, conf = 0.08, minlen = 2), 
                          appearance = list(default = "rhs", lhs = "whole milk")
)

inspect(wholeMilkRules2[1:10])

wholeMilkRules2 = sort(wholeMilkRules2, by = "confidence", decreasing = TRUE)

inspect(wholeMilkRules2[1:10])
