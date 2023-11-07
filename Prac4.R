# Implementation of Data reduction using subsetting, implementation and usage Dplyr & Tidyverse, select, transmute, arrange, filter, groupby on any dataset.

# Load required libraries
library(dplyr)
# Load the mtcars dataset
data(mtcars)
# View the first few rows of the dataset
head(mtcars)

# 1. Select specific columns
selected_columns <- mtcars %>% select(mpg, hp, wt)
head(selected_columns)

# 2. Filter rows based on conditions
filtered_data <- mtcars %>% filter(cyl == 6, gear == 4)
head(filtered_data)

# 3. Arrange rows based on a variable
arranged_data <- mtcars %>% arrange(desc(mpg))
head(arranged_data)

# 4. Group the data by a variable and summarize it
grouped_and_summarized <- mtcars %>% group_by(cyl) %>% summarize(mean_mpg = mean(mpg), mean_hp = mean(hp))
grouped_and_summarized

# 5. Create new variables using transmute
transmuted_data <- mtcars %>% transmute(mpg_per_hp = mpg / hp, wt_miles_per_gallon = wt / mpg)
head(transmuted_data)

