# Data acquisition, install packages, Loading packages, Data types, checking type of variable, printing variable and objects (Vector, Matrix, List, Factor, Data frame, Table)

setwd("C:\\Users\\ADMIN\\OneDrive\\Desktop\\New folder\\rpracticals")

#package Installation and usage
install.packages("readxl")
library(readxl)
data <- read_excel("Book1.xlsx")
data


#data Types
# numeric
numericDataType <- 10.5
numericDataType

# integer
integerDataType <- 1000L
integerDataType

# complex
complexDataType <- 9i + 3
complexDataType

# character/string
stringDataType <- "R is exciting"
stringDataType

# logical/boolean
booleanDataType <- TRUE
booleanDataType


# type of variable
# numeric
numericDataType <- 10.5
class(numericDataType)

# integer
integerDataType <- 1000L
class(integerDataType)

# complex
complexDataType <- 9i + 3
class(complexDataType)

# character/string
stringDataType <- "R is exciting"
class(stringDataType)

# logical/boolean
booleanDataType <- TRUE
class(booleanDataType)


# print Variable
var1 <- "Hello World"
print(var1)


#vector
# Creating a numeric vector
numeric_vector <- c(1, 2, 3, 4, 5)
numeric_vector

# Creating a character vector
character_vector <- c("apple", "banana", "cherry")
character_vector

# Accessing elements of a vector
element_1 <- numeric_vector[1]  # Access the first element
element_2 <- character_vector[2]  # Access the second element
element_1
element_2

# Vector arithmetic
vec1 <- c(1, 2, 3)
vec2 <- c(4, 5, 6)

# addition
result_addition <- vec1 + vec2
result_addition

# subtraction
result_subtraction <- vec1 - vec2
result_subtraction

# multiplication
result_multiplication <- vec1 * vec2
result_multiplication

# division
result_division <- vec1 / vec2
result_division

# Calculating vector length
vec_length <- length(numeric_vector)
vec_length


# Matrix
# Creating a matrix
matrix1 <- matrix(1:6, nrow = 2)  # 2x3 matrix
matrix2 <- matrix(7:12, nrow = 2)  # Another 2x3 matrix
matrix1
matrix2


# Accessing elements of a matrix
element_1_2 <- matrix1[1, 2]  # Access the element in the first row and second column
element_1_2

# Matrix addition
result_addition <- matrix1 + matrix2
result_addition

# Matrix subtraction
result_subtraction <- matrix1 - matrix2
result_subtraction

# Matrix multiplication (element-wise)
result_elementwise_mul <- matrix1 * matrix2
result_elementwise_mul

# Matrix multiplication (matrix product)
result_matrix_product <- matrix1 %*% t(matrix2)
result_matrix_product 


# list
# Creating a list
my_list <- list(
  numeric_vector = c(1, 2, 3, 4, 5),
  character_vector = c("apple", "banana", "cherry"),
  matrix1 = matrix(1:6, nrow = 2)
)
my_list


# Accessing elements of a list
element1 <- my_list$numeric_vector
element2 <- my_list$character_vector
element3 <- my_list$matrix1
element1
element2
element3


# Factor
# Creating a factor
my_factor <- factor(
  c("Low", "Medium", "High", "Low", "Medium"),
  levels = c("Low", "Medium", "High"),
  ordered = TRUE
)
my_factor

# Accessing elements of a factor
first_element <- my_factor[1]  # Access the first element
first_element

# Checking levels of a factor
levels(my_factor)

# Checking the class of the factor
class(my_factor)

# Factor summary
summary(my_factor)

# Changing the factor levels
my_factor <- factor(my_factor, levels = c("Low", "Medium", "High", "Very High"))
my_factor


# DataFrames
# Creating a data frame
my_data_frame <- data.frame(
  Name = c("Alice", "Bob", "Charlie"),
  Age = c(25, 30, 35),
  Score = c(92, 88, 76)
)
my_data_frame


# Adding a new column
my_data_frame$City <- c("New York", "San Francisco", "Los Angeles")
my_data_frame

# Modifying a column
my_data_frame$Age <- c(26, 31, 36)
my_data_frame

# Removing a column
my_data_frame$Score <- NULL
my_data_frame


# Table
# Creating a table
my_table <- table(
  Category = c("A", "B", "A", "C", "B", "A", "A"),
  Count = c(5, 3, 6, 2, 7, 4, 5)
)
my_table

# Converting the table to a data frame
table_as_df <- as.data.frame(my_table)
table_as_df

